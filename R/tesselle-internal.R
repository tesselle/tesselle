## https://michaelchirico.github.io/potools/articles/developers.html
tr_ <- function(...) {
  enc2utf8(gettext(paste0(...), domain = "R-tesselle"))
}

message_header <- function(right) {

  left <- sprintf("tesselle %s", version_text("tesselle"))

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
  versions <- vapply(X = x, FUN = version_text, FUN.VALUE = character(1))
  info <- sprintf("* %-12s%s", x, versions)
  paste0(info, collapse = "\n")
}
version_text <- function(x) {
  version <- unclass(utils::packageVersion(x))[[1]]
  paste0(as.character(version), collapse = ".")
}
