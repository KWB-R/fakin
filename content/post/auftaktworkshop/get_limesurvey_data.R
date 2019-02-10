if (!require("devtools")) {
  install.packages("devtools")
  library("devtools")
}
install_github("cloudyr/limer")
library(limer)
library(dplyr)
library(tidyr)
library(stringr)
library(plotrix)

lime_login <- read.csv(file = "user_account.csv", stringsAsFactors = FALSE)

teilnehmer <- read.csv(file = "teilnehmerliste.csv", stringsAsFactors = FALSE)
tokens <- read.csv(file = "tokens.csv", stringsAsFactors = FALSE)

tokens <- dplyr::left_join(tokens, teilnehmer[,c("lastname", "department")])

# Setup API details
options(lime_api = lime_login$api)
options(lime_username = lime_login$user)
options(lime_password = lime_login$pw)

get_session_key()


# Do stuff with LimeSurvey API
umfragen <- call_limer(method = "list_surveys")

fakin_index <- grep("FAKIN", umfragen$surveyls_title) 

fakin_umfrage <- umfragen[fakin_index, ]

responses <- get_responses(fakin_umfrage$sid,
                           sLanguageCode = "de")  # Get results from survey

responses <- dplyr::left_join(responses, tokens[,c("token", "department")])


comment_cols <- c(ncol(responses), 5, seq(9,ncol(responses) - 1,2))
comments <- responses[,names(responses[comment_cols])]
names(comments) <- gsub(".comment.", "", names(comments))


qid_lookup <- data.frame(q_num = 1:9, 
                         QID = c(paste0("I", 1:7), paste0("O", 1:2)), 
                        Frage = c("Finden", 
                                 "Bekommen", 
                                 "Verifizieren", 
                                 "S\u00E4ubern", 
                                 "Analysieren", 
                                 "Visualisieren",
                                 "Kommunizieren",
                                 "Kultur", 
                                 "Schutz"),
                        stringsAsFactors = FALSE)

comments_tidy <- tidyr::gather(comments, key="ID",value = "Comment",-token, -department) %>% 
                 dplyr::mutate(Comments_n = as.numeric(ifelse(Comment != "",1, 0))) %>% 
                 dplyr::mutate(QID = stringr::str_sub(ID, 1, 2), 
                               Typ = ifelse(grepl("IST",ID), yes = "IST", no = "SOLL")) %>% 
                 left_join(qid_lookup)


comments_summary <- comments_tidy %>%  dplyr::select(ID, Frage, Typ, Comments_n) %>% 
  dplyr::group_by(ID, Frage, Typ) %>%   dplyr::summarise(n_comments = sum(Comments_n)) %>% 
  dplyr::arrange(desc(n_comments)) 

comments_summary %>% write.csv(file = "comments_summary.csv")



answer_cols <- c(ncol(responses),5, seq(8,ncol(responses) - 1,2))
answers <- responses[,names(responses[answer_cols])]

answers_tidy <- answers %>% tidyr::gather(key = "ID", value = "Answer", -token, -department) %>% 
  dplyr::mutate(Level = as.numeric(ifelse(grepl(pattern = "1", 
                                                Answer),
                                          yes = 1, 
                                          no = ifelse(grepl(pattern = "2", Answer),
                                                      yes = 2, 
                                                      no = ifelse(grepl(pattern = "3", Answer),
                                                                  yes = 3,
                                                                  no = ifelse(grepl(pattern = "4", Answer),
                                                                              yes = 4, 
                                                                              no = ifelse(grepl(pattern = "Ich nutze Excel, um einfache statistische Werte", Answer),
                                                                                          yes = 1, 
                                                                                          no = ifelse(grepl(pattern = "Ich nutze Excel, um weitergehende Analysen", Answer),
                                                                                                      yes = 2, 
                                                                                                      no = ifelse(grepl(pattern = "Ich kann Korrelationen zwischen Variablen in einem Datensatz", Answer),
                                                                                                                  yes = 3,
                                                                                                                  no = ifelse(grepl(pattern = "Ich nutze Programmiersprachen", Answer),
                                                                                                                              yes = 4,
                                                                                                                              no = NA)))))))))) %>% 
  dplyr::mutate(QID = stringr::str_sub(ID, 1, 2), 
                Typ = ifelse(grepl("IST",ID), yes = "IST", no = "SOLL")) %>% 
  left_join(qid_lookup)



plot_answers <- function(answer_df, 
                         group = "alle", 
                         transparency = 0.9) {

ist <- answer_df %>% dplyr::filter(Typ == "IST") 
soll <- answer_df %>% dplyr::filter(Typ == "SOLL") 



red <- rgb(1,0,0, alpha = transparency)
green <- rgb(0,1,0, alpha = transparency)

plotrix::radial.plot(lengths=soll$Level_median,labels=sprintf("%s: %s", 
                                                              ist$QID, 
                                                              ist$Frage),
                     start = pi/2, 
                     clockwise = TRUE,
                     #mar=myMargin, 
                     #label.prop=1.55,
                     rp.type="p",
                     line.col=green, 
                     lwd=5,
                     main = sprintf("Ergebnisse Fragebogen (Medianwerte, %s)", group),
                     #show.grid=FALSE,
                     radial.lim=c(1,4))


plotrix::radial.plot(lengths=ist$Level_median,labels=sprintf("%s: %s", 
                                                    ist$QID, 
                                                    ist$Frage),
                     start = pi/2, 
                     clockwise = TRUE,
          #  mar= myMargin, 
          #  label.prop=1.55,
            rp.type="p",
            add=TRUE,
            line.col=red, 
            lwd=5,
            #show.grid=FALSE,
            radial.lim=c(1,4))

par(xpd=TRUE) 
legend(-3.5,3.5,
       legend=c("IST-Zustand", "SOLL-Zustand"), 
       col = c(red, green), 
             lty=1, 
             lwd=5, 
       ncol = 1)
par(xpd = FALSE) 
}

plot_answers_perDepartment <- function(df, 
                                       zustand = c("IST", "SOLL"),
                                       transparency = 0.7) {
  

answers_grw <- df %>% 
  dplyr::filter(department == "GRW") %>% 
  dplyr::group_by(ID, QID, q_num, Frage, Typ) %>% 
  dplyr::summarise(Level_median = median(Level), 
                   Level_mean = mean(Level))

answers_suw <- df %>% 
  dplyr::filter(department == "SUW") %>% 
  dplyr::group_by(ID, QID, q_num, Frage, Typ) %>% 
  dplyr::summarise(Level_median = median(Level), 
                   Level_mean = mean(Level))

answers_wwt <- df %>% 
  dplyr::filter(department == "WWT") %>% 
  dplyr::group_by(ID, QID, q_num, Frage, Typ) %>% 
  dplyr::summarise(Level_median = median(Level), 
                   Level_mean = mean(Level))


ist_grw <- answers_grw %>% dplyr::filter(Typ == "IST")
ist_suw <- answers_suw %>% dplyr::filter(Typ == "IST")
ist_wwt <- answers_wwt %>% dplyr::filter(Typ == "IST")


soll_grw <- answers_grw %>% dplyr::filter(Typ == "SOLL")
soll_suw <- answers_suw %>% dplyr::filter(Typ == "SOLL")
soll_wwt <- answers_wwt %>% dplyr::filter(Typ == "SOLL")



blue <- rgb(0,0,1, alpha = transparency)
green <- rgb(0,1,0, alpha = transparency)
black <- rgb(0,0,0,alpha = transparency)


### IST Zustand
if (any(zustand %in% "IST")) {
plotrix::radial.plot(lengths=ist_grw$Level_median,labels=sprintf("%s: %s", 
                                                                 ist_grw$QID, 
                                                                 ist_grw$Frage),
                     start = pi/2, 
                     clockwise = TRUE,
                     #mar=myMargin, 
                     #label.prop=1.55,
                     rp.type="p",
                     line.col=blue, 
                     lwd=5,
                     main = "IST-Zustand nach Department (Medianwerte)",
                     #show.grid=FALSE,
                     radial.lim=c(1,4))


plotrix::radial.plot(lengths=ist_suw$Level_median,labels=sprintf("%s: %s", 
                                                             ist_suw$QID, 
                                                             ist_suw$Frage),
                     start = pi/2, 
                     clockwise = TRUE,
                     #  mar= myMargin, 
                     #  label.prop=1.55,
                     rp.type="p",
                     add=TRUE,
                     line.col=green, 
                     lwd=5,
                     #show.grid=FALSE,
                     radial.lim=c(1,4))


plotrix::radial.plot(lengths=ist_wwt$Level_median,labels=sprintf("%s: %s", 
                                                                 ist_wwt$QID, 
                                                                 ist_wwt$Frage),
                     start = pi/2, 
                     clockwise = TRUE,
                     #  mar= myMargin, 
                     #  label.prop=1.55,
                     rp.type="p",
                     add=TRUE,
                     line.col=black, 
                     lwd=5,
                     lty=1,
                     #show.grid=FALSE,
                     radial.lim=c(1,4)) 

par(xpd=TRUE) 
legend(-3,3.5,
       legend=c("GRW", "SUW", "WWT"), 
       col = c(blue, green, black), 
       lty=c(1,1,1), 
       lwd=5, 
       ncol = 1)
par(xpd = FALSE) 
}

### Soll Zustand
if(any(zustand %in% "SOLL")) {
plotrix::radial.plot(lengths=soll_grw$Level_median,labels=sprintf("%s: %s", 
                                                                 soll_grw$QID, 
                                                                 soll_grw$Frage),
                     start = pi/2, 
                     clockwise = TRUE,
                     #mar=myMargin, 
                     #label.prop=1.55,
                     rp.type="p",
                     line.col=blue, 
                     lwd=5,
                     main = "SOLL-Zustand nach Department (Medianwerte)",
                     #show.grid=FALSE,
                     radial.lim=c(1,4))


plotrix::radial.plot(lengths=soll_suw$Level_median,labels=sprintf("%s: %s", 
                                                                 soll_suw$QID, 
                                                                 soll_suw$Frage),
                     start = pi/2, 
                     clockwise = TRUE,
                     #  mar= myMargin, 
                     #  label.prop=1.55,
                     rp.type="p",
                     add=TRUE,
                     line.col=green, 
                     lwd=5,
                     lty=2,
                     #show.grid=FALSE,
                     radial.lim=c(1,4))


plotrix::radial.plot(lengths=soll_wwt$Level_median,labels=sprintf("%s: %s", 
                                                                 soll_wwt$QID, 
                                                                 soll_wwt$Frage),
                     start = pi/2, 
                     clockwise = TRUE,
                     #  mar= myMargin, 
                     #  label.prop=1.55,
                     rp.type="p",
                     add=TRUE,
                     line.col=black, 
                     lwd=5,
                     lty=1,
                     #show.grid=FALSE,
                     radial.lim=c(1,4)) 

par(xpd=TRUE) 
legend(-3,3.5,
       legend=c("GRW", "SUW", "WWT"), 
       col = c(blue, green, black), 
       lty=c(1,1,1), 
       lwd=5, 
       ncol = 1)
par(xpd = FALSE) 

}
}

answers_kwb <- answers_tidy %>% 
  dplyr::group_by(ID, QID, q_num, Frage, Typ) %>% 
  dplyr::summarise(Level_median = median(Level), 
                   Level_mean = mean(Level)) 

answers_grw <- answers_tidy %>% 
  dplyr::filter(department == "GRW") %>% 
  dplyr::group_by(ID, QID, q_num, Frage, Typ) %>% 
  dplyr::summarise(Level_median = median(Level), 
                   Level_mean = mean(Level))

answers_suw <- answers_tidy %>% 
  dplyr::filter(department == "SUW") %>% 
  dplyr::group_by(ID, QID, q_num, Frage, Typ) %>% 
  dplyr::summarise(Level_median = median(Level), 
                   Level_mean = mean(Level))

answers_wwt <- answers_tidy %>% 
  dplyr::filter(department == "WWT") %>% 
  dplyr::group_by(ID, QID, q_num, Frage, Typ) %>% 
  dplyr::summarise(Level_median = median(Level), 
                   Level_mean = mean(Level))


if (nrow(answers_kwb) > 0) {
grDevices::jpeg(filename = "Fragebogen_Ergebnisse.jpg", 
                width = 1200,
                height = 900,
                quality = 100,
                res = 100)
plot_answers(answers_kwb)
dev.off()
}

if (nrow(answers_tidy) > 0) {
grDevices::jpeg(filename = "Fragebogen_Ergebnisse_perDepartment_IST.jpg", 
                width = 1200,
                height = 900,
                quality = 100,
                res = 100)
plot_answers_perDepartment(answers_tidy,zustand = "IST", transparency = 0.5)
dev.off()
}

if (nrow(answers_tidy) > 0) {
  grDevices::jpeg(filename = "Fragebogen_Ergebnisse_perDepartment_SOLL.jpg", 
                  width = 1200,
                  height = 900,
                  quality = 100,
                  res = 100)
  plot_answers_perDepartment(answers_tidy,zustand = "SOLL", transparency = 0.5)
  dev.off()
}




release_session_key()
