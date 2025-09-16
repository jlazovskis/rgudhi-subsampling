#' Subsampling
#'
#' The function [sparsify_point_set()] sparsifies a point set.
#'
#' @param points Either a `n x d` matrix or a length-`n` list of `d`-
#'   dimensional vectors
#' @param min_squared_dist A numeric value specifying the minimum squared 
#'   distance between points
#'
#' @return A subset of \mathrm{points} of elements at least a squared distance
#'   \mathrm{min_squared_dist} from each other
#'
#' @export
#' @examplesIf reticulate::py_module_available("gudhi")
#' X <- sphere(100, 3)
#' Y <- sparsify_point_set(X, 0.3)
sparsify_point_set <- function(points, min_squared_dist) {
  gd$subsampling$sparsify_point_set(
    points = points,
    min_squared_dist = min_squared_dist
  )
}