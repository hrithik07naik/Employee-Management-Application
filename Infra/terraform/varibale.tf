variable "locationname" {
    default = "eastus2"
    description = "location for resource group"
  
}
variable "planename" {
    default = "plan03"
    description = "name for service plan"
  
}
variable "locationname1" {
    default = "australiacentral"
    description = "location for asplan and web app"
}
variable "skuname" {
    description = "value for sku"
  
}
variable "skuname1" {
    description = "value for sku"
  
}

variable "webappname" {
    default = "emaappsvc"
    description = "name for web app"
  
}
variable "envname" {
    type = string
  
}
variable "servername" {
    default = "emasqlserver"
    description = "name for the server"
}
variable "databasename" {
    default = "emasqldatabase"
    description = "name for the database"
  
}