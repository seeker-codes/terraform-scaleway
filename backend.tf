terraform {
  backend "s3" {
    bucket                      = "staircaze.terraform.prod"
    key                         = "prod_state.tfstate"
    region                      = "nl-ams"
    endpoints                   = { s3 = "https://s3.nl-ams.scw.cloud" }
    access_key                  = "SCW4GJQV9XZ2DATFC5FW"
    secret_key                  = "852198bc-ef39-4cf5-857d-49aa4deb770d"
    skip_credentials_validation = true
    skip_region_validation      = true
    # Need terraform>=1.6.1
    skip_requesting_account_id = true
  }
}
