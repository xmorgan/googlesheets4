.onLoad <- function(libname, pkgname) {

  if (identical(Sys.getenv("IN_PKGDOWN"), "true") &&
      gargle:::secret_can_decrypt("googlesheets4") &&
      !is.null(curl::nslookup("sheets.googleapis.com", error = FALSE))) {
    utils::capture.output(gs4_auth_docs(drive = TRUE))
  }

  invisible()
}
