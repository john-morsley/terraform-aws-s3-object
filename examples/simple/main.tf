#      ______                           _      
#     |  ____|                         | |     
#     | |__  __  ____ _ _ __ ___  _ __ | | ___ 
#     |  __| \ \/ / _` | '_ ` _ \| '_ \| |/ _ \
#     | |____ >  < (_| | | | | | | |_) | |  __/
#     |______/_/\_\__,_|_| |_| |_| .__/|_|\___|
#                                | |           
#                                |_|           
#

module "s3_object" {
  
  source = "./../../../terraform-aws-s3-object"
  #source = "john-morsley/terraform-aws-vpc"

  bucket_name = module.s3_bucket.id

  key     = "Greeting"
  content = "Hello, AWS! :)"

  //  tags = {
  //    Owner = "john-doe"
  //  }

}