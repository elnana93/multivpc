# variables.tf

#VPC's

variable "vpcs" {
  description = "A map defining the name, CIDR block, and subnet CIDRs for each VPC."
  # Added subnet_cidrs to the type definition below
  type = map(object({ cidr_block = string, tags = map(string), subnet_cidrs = map(string) }))
  default = {
    app1 = {
      cidr_block = "10.40.0.0/16"
      tags       = { Name = "app1", Environment = "Spoke" }
      subnet_cidrs = { public_a = "10.40.1.0/24", private_a = "10.40.11.0/24", public_b = "10.40.2.0/24",
      private_b = "10.40.12.0/24", public_c = "10.40.3.0/24", private_c = "10.40.13.0/24" }
    }
    private1 = {
      cidr_block = "10.50.0.0/16"
      tags       = { Name = "private1", Environment = "Spoke" }
      subnet_cidrs = { public_a = "10.50.1.0/24", private_a = "10.50.11.0/24", public_b = "10.50.2.0/24",
      private_b = "10.50.12.0/24", public_c = "10.50.3.0/24", private_c = "10.50.13.0/24" }
    }
    security1 = {
      cidr_block = "10.60.0.0/16"
      tags       = { Name = "security1", Environment = "Hub" }
      subnet_cidrs = { public_a = "10.60.1.0/24", private_a = "10.60.11.0/24", public_b = "10.60.2.0/24",
      private_b = "10.60.12.0/24", public_c = "10.60.3.0/24", private_c = "10.60.13.0/24" }
    }



    shared1 = {
      cidr_block = "10.70.0.0/16"
      tags       = { Name = "shared1", Environment = "Spoke" }
      subnet_cidrs = { public_a = "10.70.1.0/24", private_a = "10.70.11.0/24",
      public_b = "10.70.2.0/24", private_b = "10.70.12.0/24" }
    }

  }
}
/*_________________________________________________________________________________*/


# Subnets

# variables.tf



variable "shared1_subnets" { # <-- MISSING VARIABLE DEFINED
  description = "Configuration for the public and private subnets in the shared1 VPC."
  type = map(object({
    cidr_block = string
    az         = string
    is_public  = bool
  }))
  default = {
    "public_a"  = { cidr_block = "10.70.1.0/24", az = "us-west-2a", is_public = true }
    "public_b"  = { cidr_block = "10.70.2.0/24", az = "us-west-2b", is_public = true }
    "private_a" = { cidr_block = "10.70.11.0/24", az = "us-west-2a", is_public = false }
    "private_b" = { cidr_block = "10.70.12.0/24", az = "us-west-2b", is_public = false }
  }
}















variable "app1_subnets" { # <-- MISSING VARIABLE DEFINED
  description = "Configuration for the public and private subnets in the private1 VPC."
  type = map(object({
    cidr_block = string
    az         = string
    is_public  = bool
  }))
  default = {
    "public_a"  = { cidr_block = "10.40.1.0/24", az = "us-west-2a", is_public = true }
    "public_b"  = { cidr_block = "10.40.2.0/24", az = "us-west-2b", is_public = true }
    "public_c"  = { cidr_block = "10.40.3.0/24", az = "us-west-2c", is_public = true }
    "private_a" = { cidr_block = "10.40.11.0/24", az = "us-west-2a", is_public = false }
    "private_b" = { cidr_block = "10.40.12.0/24", az = "us-west-2b", is_public = false }
    "private_c" = { cidr_block = "10.40.13.0/24", az = "us-west-2c", is_public = false }
  }
}
#_____________________________________________________________________

variable "private1_subnets" { # <-- MISSING VARIABLE DEFINED
  description = "Configuration for the public and private subnets in the private1 VPC."
  type = map(object({
    cidr_block = string
    az         = string
    is_public  = bool
  }))
  default = {
    "public_a"  = { cidr_block = "10.50.1.0/24", az = "us-west-2a", is_public = true }
    "public_b"  = { cidr_block = "10.50.2.0/24", az = "us-west-2b", is_public = true }
    "public_c"  = { cidr_block = "10.50.3.0/24", az = "us-west-2c", is_public = true }
    "private_a" = { cidr_block = "10.50.11.0/24", az = "us-west-2a", is_public = false }
    "private_b" = { cidr_block = "10.50.12.0/24", az = "us-west-2b", is_public = false }
    "private_c" = { cidr_block = "10.50.13.0/24", az = "us-west-2c", is_public = false }
  }
}

variable "security1_subnets" { # <-- MISSING VARIABLE DEFINED
  description = "Configuration for the public and private subnets in the security1 (Hub) VPC."
  type = map(object({
    cidr_block = string
    az         = string
    is_public  = bool
  }))
  default = {
    "public_a"  = { cidr_block = "10.60.1.0/24", az = "us-west-2a", is_public = true }
    "public_b"  = { cidr_block = "10.60.2.0/24", az = "us-west-2b", is_public = true }
    "public_c"  = { cidr_block = "10.60.3.0/24", az = "us-west-2c", is_public = true }
    "private_a" = { cidr_block = "10.60.11.0/24", az = "us-west-2a", is_public = false }
    "private_b" = { cidr_block = "10.60.12.0/24", az = "us-west-2b", is_public = false }
    "private_c" = { cidr_block = "10.60.13.0/24", az = "us-west-2c", is_public = false }
  }
}