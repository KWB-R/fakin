#!/bin/sh
  
Rscript -e "blogdown::install_hugo(version = '0.54.0', force = TRUE)"
Rscript -e "blogdown::hugo_version()"
# Copying needed as blogdown expects "config.toml" in root_dir
Rscript -e "file.copy('config/_default/config.toml', 'config.toml', overwrite = TRUE)"
Rscript -e "blogdown::build_site()"
