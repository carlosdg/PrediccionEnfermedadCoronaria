echo "Launching RStudio on port 8787...\n\n"
docker run --rm -it -p 8787:8787 -v ${PWD}/project:/home/rstudio/project -e DISABLE_AUTH=true rocker/tidyverse:3.6.1
