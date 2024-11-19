locals {
  Rgname = "RG_${var.envname}"
}

locals {
  localplanname = "${var.envname}${var.planename}"
}

locals {
  localwebname = "${var.envname}${var.webappname}"
}

locals {
  localservername = "${var.envname}${var.servername}"
}

locals {
  localdatabasename = "${var.envname}${var.databasename}"
}