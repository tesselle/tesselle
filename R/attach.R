core <- c("tabula", "kairos", "khroma")

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}

tesselle_unloaded <- function() {
  core[!is_attached(core)]
}

tesselle_load <- function(x) {
  loc <- if (x %in% loadedNamespaces()) dirname(getNamespaceInfo(x, "path"))
  do.call(library, list(x, lib.loc = loc, character.only = TRUE))
}

tesselle_attach <- function() {
  to_load <- tesselle_unloaded()
  if (length(to_load) == 0)
    return(invisible())

  lapply(X = to_load, FUN = tesselle_load)

  invisible()
}
