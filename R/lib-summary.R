#' R Library Summary
#'
#' Provide a brief summary of the package libraries on
#' your machine
#'
#' @param size A logical value to indicate whether to calcluate library sizes. Default `FALSE`
#'
#' @return A `data.frame` containing the count of packages in each
#' of the user's libraries. If `size = TRUE`, a column of library sizes will be added.
#' @export
#'
#' @examples
#' lib_summary()
#' lib_summary(size = TRUE)
lib_summary <- function(size = FALSE) {
  # check sizes is logical
  if (!is.logical(size)) {
#    stop("sizes must be logical value (TRUE/FALSE)")
    cli::cli_abort("size must be logical value {TRUE/FALSE}")
  }

  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if (isTRUE(size)) {
    pkg_df$lib_size <- vapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      },
      FUN.VALUE = numeric(1) # specify that the value returned should have 1 numeric value
    )
  }

  pkg_df
}
