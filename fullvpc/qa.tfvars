net_info = {
  vpccidr = "172.16.0.0/16"
        vpcname = "mynetwork1"
        pub_sub = [ {
          pubsubnetcidr = ["172.16.0.0/24","172.16.1.0/24"]
          pubsubnetnames = ["pubsub1","pubsub2"]
          pubsubnetazs = ["ap-south-1a","ap-south-1b"]
        }]
        pvt_sub = [{
          pvtsubnetcidr = ["172.16.2.0/24","172.16.3.0/24"]
          pvtsubnetnames = ["pvtsub1","pvtsub2"]
          pvtsubnetazs = ["ap-south-1a","ap-south-1c"]
        }]
    }
