terraform {
  required_providers {

    aviatrix = {
      source  = "AviatrixSystems/aviatrix"
      version = "2.17.0"
    }
  }
}
provider "aviatrix" {
  controller_ip = "18.135.67.59"
  username      = "admin"
  password      = "Pranayq11"

}
