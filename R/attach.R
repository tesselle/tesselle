.core <- c("dimensio", "isopleuros", "kairos", "nexus", "tabula")

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}

tesselle_unloaded <- function() {
  .core[!is_attached(.core)]
}

tesselle_load <- function(x) {
  loc <- if (x %in% loadedNamespaces()) dirname(getNamespaceInfo(x, "path"))
  do.call("library", list(x, lib.loc = loc, character.only = TRUE))
}

tesselle_attach <- function() {
  to_load <- tesselle_unloaded()
  if (length(to_load) == 0)
    return(invisible())

  packageStartupMessage(message_header(tr_("Attaching packages")))
  suppressPackageStartupMessages(lapply(X = to_load, FUN = tesselle_load))
  packageStartupMessage(message_packages(to_load))

  invisible(to_load)
}
