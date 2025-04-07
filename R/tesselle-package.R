#' @details
#'  \tabular{ll}{
#'   **Package:** \tab tesselle \cr
#'   **Type:** \tab Package \cr
#'   **Version:** \tab 1.6.0 \cr
#'   **License:** \tab GPL-3 \cr
#'  }
#'
#' @author
#'  **Full list of authors and contributors** (alphabetic order):
#'
#'  \tabular{ll}{
#'   Nicolas Frerebeau \tab *Université Bordeaux Montaigne, France* \cr
#'   Brice Lebrun \tab *Université Bordeaux Montaigne, France* \cr
#'  }
#'
#'  **Package maintainer**
#'
#'  Nicolas Frerebeau\cr
#'  \email{nicolas.frerebeau@@u-bordeaux-montaigne.fr}
#'
#'  Archéosciences Bordeaux (UMR 6034)\cr
#'  Maison de l'Archéologie\cr
#'  Université Bordeaux Montaigne\cr
#'  33607 Pessac cedex\cr
#'  France
#' @name tesselle-package
#' @aliases tesselle
#' @docType package
#' @keywords internal
"_PACKAGE"

# Suppress R CMD check note "All declared Imports should be used."
unused <- function() {
  dimensio::ca
  folio::arnold1949
  isopleuros::ternary_plot
  kairos::mcd
  khroma::color
  nexus::as_composition
  tabula::heterogeneity
}
