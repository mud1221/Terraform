variable "net_info" {
    description = "this is my own network"
    type = object({
      vpcname = string
      vpccidr = string
      pub_sub = list(object({
        pubsubnetnames = list(string)
        pubsubnetcidr = list(string)
        pubsubnetazs = list(string)
      }))
      pvt_sub = list(object({
        pvtsubnetnames = list(string)
        pvtsubnetcidr = list(string)
        pvtsubnetazs = list(string)
      }))
    })
}