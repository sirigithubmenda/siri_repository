variable "siri_sa" {
  type = map(string)
  default = {
    "Sa1" = {
      name  = "siridev_1"
      rg_n  = "dev_team"
      lcn   = "East US"
      a_t   = "Standard"
      a_r_t = "GRS"
    }
    "Sa2" = {
      name  = "siridev_2"
      rg_n  = "${dev_team}"
      lcn   = "East US"
      a_t   = "Standard"
      a_r_t = "GRS"
    }
  }
}



variable "cn_name1" {

  type    = list(string)
  default = ["container1", "container2"]
}

variable "cn_name2" {
  type    = list(string)
  default = ["container3", "container4", "container5"]

}