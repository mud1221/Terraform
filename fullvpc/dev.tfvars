net_info = {
    vpccidr = "10.0.0.0/16"
    vpcname = "mynetwork"
    pub_sub = [ {
        pubsubnetscidr = ["10.0.0.0/24","10.0.1.0/24"]
        pubsubnetnames = ["pubsub1","pubsub2"]
        pubsubnetazs = ["ap-south-1a","ap-south-1b"]
    } ]
    pvt_sub = [ {
        pvtsubnetazs = ["ap-south-1a","ap-south-1b"]
        pvtsubnetnames = ["pvtsub1","pvtsub2"]
        pvtsubnetcidr = ["10.0.2.0/24","10.0.3.0/24"]
    } ]
}