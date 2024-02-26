.onAttach <- function(...) {
  needed <- .core[!is_attached(.core)]
  if (length(needed) == 0) return()

  tesselle_attach()
}
