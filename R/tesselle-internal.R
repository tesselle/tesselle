message_header <- function(right, left = "") {
  n_right <- nchar(right)
  n_left <- nchar(left)

  if (n_right > 0) {
    right <- sprintf(" %s ", right)
    n_right <- n_right + 2
  }
  if (n_left > 0) {
    left <- sprintf(" %s ", left)
    n_left <- n_left + 2
  }

  dash <- rep("-", getOption("width") - 6 - n_right - n_left)
  rule <- paste0(dash, collapse = "")

  sprintf("---%s%s%s---", right, rule, left)
}
message_packages <- function(x) {
  versions <- vapply(
    X = x,
    FUN = function(x) {
      version <- unclass(utils::packageVersion(x))[[1]]
      paste0(as.character(version), collapse = ".")
    },
    FUN.VALUE = character(1)
  )
  info <- sprintf("* %-10s%s", x, versions)
  paste0(info, collapse = "\n")
}
