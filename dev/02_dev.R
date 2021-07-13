# Agregamos paquetes necesarios
usethis::use_package( "thinkr" )
usethis::use_package( "dplyr" )
usethis::use_package( "highcharter" )
usethis::use_package( "DBI" )
usethis::use_package( "RMariaDB" )
usethis::use_package( "shiny" )
usethis::use_package( "shinydashboard" )
usethis::use_package( "shinythemes" )
usethis::use_package( "tidyr" )
usethis::use_package( "magrittr" )
usethis::use_package( "naniar" )


# Agregar Módulos
golem::add_module( name = "Analisis" )
golem::add_module( name = "Descarga" )

# Agregar funciones auxiliares
golem::add_fct( "graficarExperimentos" ) 
golem::add_fct( "procesarExperimentos" ) 

golem::add_utils( "helpers" )
golem::add_js_file( "script" )
golem::add_js_handler( "handlers" )
golem::add_css_file( "custom" )


#usethis::use_data_raw( name = "my_dataset", open = FALSE ) 
#usethis::use_test( "app" )
#usethis::use_vignette("MotionPlanningExperiments")
#devtools::build_vignettes()
usethis::use_github()
usethis::use_travis()
usethis::use_appveyor()
#rstudioapi::navigateToFile("dev/03_deploy.R")
