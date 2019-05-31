#' Render RNotebook file
#' @export
renderRNotebook <- function(){
  input <- rstudioapi::getSourceEditorContext()$path
  if (tools::file_ext(input) != "Rmd"){
    print("Not Rmd file")
    return()
  }
  output_dir <- dirname(input)
  rmarkdown::render(input = input, output_dir = output_dir, encoding="UTF-8")
}
