#' Valeurs à considérer comme manquantes
#'
#' @param x un vecteur
#' @param na.value une valeur à considérer comme manquantes
#'
#' @return vecteur avec des valeurs manquantes à la place des occurences de na.value
#' @export
#'
#' @examples
#' valeurs <- c('1','9','3','1')
#' fix_missing(valeurs)
#' #' @encoding UTF-8
fix_missing <- function(x, na.value) {
  x[x == na.value] <- NA
  x
}
