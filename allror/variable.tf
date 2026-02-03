variable "net_info" {
  type = object({
    vpccidr     = string
    myterraform = string
    sub_info = list(object({
      subnames = list(string)
      subazs   = list(string)
      subcidrs = list(string)
    }))
  })
  default = {
    vpccidr     = "10.0.0.0/16"
    myterraform = "my-vpc"
    sub_info = [{
      subnames = ["web", "app", "server", "linux"]
      subazs   = ["ap-south-1a", "ap-south-1b", "ap-south-1c", "ap-south-1b"]
      subcidrs = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]


    }]
  }

}