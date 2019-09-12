#!/bin/sh
  
Rscript -e "blogdown::install_hugo(version = '0.58.1', force = TRUE)"
Rscript -e "blogdown::hugo_version()"
# Copying needed as blogdown expects "config.toml" in root_dir
Rscript -e "file.copy('config/_default/config.toml', 'config.toml', overwrite = TRUE)"
Rscript -e "blogdown::build_site()"
# Automate upload of "index.json" to Algolia
# Sys.setenv(algolia_app_id = "my_app_id",
#            algolia_api_key = "my_api_key",
#            algolia_index_name = "my_index_name")
# These variables are defined in the GitLab CI as 
# protected environment variables, configured at:
# https://gitlab.com/KWB-R/fakin/settings/ci_cd/
Rscript -e "algoliar::algolia_post_batch()"
