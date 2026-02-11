net_info = {
  vpccidr = "192.168.0.0/16"
        vpcname = "mynetwork2"
        pub_sub = [ {
          pubsubnetcidr = ["192.168.0.0/24","192.168.1.0/24"]
          pubsubnetnames = ["pubsub1","pubsub2"]
          pubsubnetazs = ["ap-south-1a","ap-south-1b"]
        }]
        pvt_sub = [{
          pvtsubnetcidr = ["10.0.2.0/24","10.0.3.0/24"]
          pvtsubnetnames = ["pvtsub1","pvtsub2"]
          pvtsubnetazs = ["ap-south-1a","ap-south-1b"]
        }]
    }
