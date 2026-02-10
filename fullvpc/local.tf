locals {
  pubsubnet_count =  length(var.net_info.pub_sub[0].pubsubnetazs)
}
locals {
  pvtsubnet_count = length(var.net_info.pvt_sub[0].pvtsubnetsazs)
}