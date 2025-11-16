variable "region" {
      type        = string
      description = "AWS region for resource deployment."
      default     = "us-east-1"
    }

    variable "instance_type" {
    
      default = "t3.micro"
    }

   variable client_name{
    default = "flipkart"
   }

   variable managed_by {
    default = "devops"
     
   }
