#' Fixmission pourl es data frame
#'
#' @param x data framee en ettre
#' @param na.value valeur à coder en manquante
#'
#' @return data frame avec les valeurs manquantes
#' @export
#' @encoding UTF-8
#' @examples
#' df <- data.frame(v1 = 1:10,v2=8:17,v3=18:27)
#' fix_missing_df(df,9)
fix_missing_df <- function(x, na.value) {

  stopifnot(inherits(x, "data.frame"))

  x[] <- purrr::map(x, fix_missing, na.value = na.value)
  x
}

