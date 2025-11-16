#' Subsampling

#' @description Subsample by a greedy strategy of iteratively adding the
#'   farthest point from the current chosen point set to the subsampling. The
#'   iteration starts with the landmark starting point.
#'
#' @author Vincent Rouvreau, Marc Glisse, Masatoshi Takenouchi
#'
#' @param points (Iterable[Iterable[float]]) – The input point set.
#'
#' Or
#' 
#' @param off_file (string) – An OFF file style name.
#'
#' And in both cases
#' 
#' @param nb_points (int) – Number of points of the subsample (the subsample
#'   may be smaller if there are fewer than `nb_points` distinct input points).
#'   Default: all of them.
#' @param starting_point (int) – The iteration starts with the landmark
#'   starting point, which is the index of the point to start with. If not set,
#'   this index is chosen randomly.
#' @param fast (bool) – If True (default), use an implementation that is
#'   efficient when the doubling dimension and spread are small, but slow
#'   otherwise. If False, use the standard quadratic algorithm.
#'
#' @return The subsample point set, in the order they were selected by the 
#'   greedy strategy.
#' @export
choose_n_farthest_points <- function(points = NULL,
                                     off_file = "",
                                     nb_points = 18446744073709551615,
                                     starting_point = NULL,
                                     fast = TRUE) {
  gd$subsampling$choose_n_farthest_points(
    points = points,
    off_file = off_file,
    nb_points = nb_points,
    starting_point = starting_point,
    fast = fast
  )
}

#' @description Subsample a point set by picking random vertices.
#'
#' @author Vincent Rouvreau, Marc Glisse, Masatoshi Takenouchi
#'
#' @param points (Iterable[Iterable[float]]) – The input point set.
#'
#' Or
#' 
#' @param off_file (string) – An OFF file style name.
#'
#' And in both cases
#' 
#' @param nb_points (int) – Number of points of the subsample.
#'
#' @return The subsample point set.
#' @export
pick_n_random_points <- function(points = NULL,
                                 off_file = "",
                                 nb_points = 0) {
  gd$subsampling$pick_n_random_points(
    points = points,
    off_file = off_file,
    nb_points = nb_points
  )
}

#' @description Outputs a subset of the input points so that the squared
#'   distance between any two points is greater than `min_squared_dist`.
#'
#' @author Vincent Rouvreau, Marc Glisse, Masatoshi Takenouchi
#'
#' @param points (Iterable[Iterable[float]]) – The input point set.
#'
#' Or
#' 
#' @param off_file (string) – An OFF file style name.
#'
#' And in both cases
#' 
#' @param min_squared_dist (float) – Minimum squared distance separating the
#'   output points.
#'
#' @return The subsample point set.
#' @export
sparsify_point_set <- function(points = NULL,
                               off_file = "",
                               min_squared_dist = 0.0) {
  gd$subsampling$sparsify_point_set(
    points = points,
    off_file = off_file,
    min_squared_dist = min_squared_dist
  )
}