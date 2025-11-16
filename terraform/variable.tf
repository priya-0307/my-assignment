variable "region" {
      type        = string
      description = "AWS region for resource deployment."
      default     = "us-east-1"
    }

    variable "instance_type" {
    
      default = "t2.micro"
    }

   variable client_name{
    default = "priya"
   }

   variable managed_by {
    default = "devops"
     
   }
