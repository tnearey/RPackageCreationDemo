# RPackageBuildDemo.R
# Do these first
# install.packages(c("devtools", "roxygen2", "testthat", "usethis"))
# update.packages(ask = FALSE, checkBuilt = TRUE)
# You need the #'@export before any local functions you want visible
#
#' @export
hello = function (){cat('Hello ...')}
#' @export
goodbye = function (){cat('Goodbye\n')}
# Do this: usethis::create_package("~/Dropbox/RStudioPackageBuild20MinFolder/RPackageBuildDemoPkgFolder")

# If you rely on functions func1 func2 and func3 from pkgX
# you also need to do this  in command line:
# > usethis: use_package("pkgX")

# and in the source code:
# #'@importFrom <pkgX> <func1> <func2> <func3> for any
# and if you want users to be able to access func1 and func3
# you need to add this to source:
# #' @export
#  pkgX::func1
# #' @export
#  pkgX::func3

