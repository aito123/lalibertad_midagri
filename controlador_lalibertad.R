pacman::p_load(tidyverse)

render_fun <- function(raster_list){
  quarto::quarto_render(
    input = "la_libertad.qmd",
    execute_params = list(raster = raster_list)#,
   # output_file = NULL
  )
}

ruta<-"D:/OneDrive - Universidad del Pacífico/(TRABAJO) QLAB/proyecto_minagri"

# abril 2021
fs::dir_ls(here::here(ruta, "la_libertad/2021-04 abril/imagenes/IR"), regexp = "IR") %>%
  purrr::walk(render_fun)

# mayo 2021
fs::dir_ls(here::here(ruta, "la_libertad/2021-05 mayo/imagenes/IR"), regexp = "IR") %>%
  purrr::walk(render_fun)

# junio 2021
fs::dir_ls(here::here(ruta, "la_libertad/2021-06 junio/imagenes/IR"), regexp = "IR") %>%
  purrr::walk(render_fun)

# julio 2021
fs::dir_ls(here::here(ruta, "la_libertad/2021-07 julio/imagenes/IR"), regexp = "IR") %>%
  purrr::walk(render_fun)

# agosto 2021
fs::dir_ls(here::here(ruta, "la_libertad/2021-08 agosto/imagenes/IR"), regexp = "IR") %>%
  purrr::walk(render_fun)

# setiembre 2021
fs::dir_ls(here::here(ruta, "la_libertad/2021-09 setiembre/imagenes/IR"), regexp = "IR") %>%
  purrr::walk(render_fun)

# octubre 2021
fs::dir_ls(here::here(ruta, "la_libertad/2021-10 octubre/imagenes/IR"), regexp = "IR") %>%
  purrr::walk(render_fun)

# noviembre 2021
fs::dir_ls(here::here(ruta, "la_libertad/2021-11 noviembre/imagenes/IR"), regexp = "IR") %>%
  purrr::walk(render_fun)

# habia un problema con el purr dentro de un proyecto web, lo tuve que sacar a un proyecto aparte.