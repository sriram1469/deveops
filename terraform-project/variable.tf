variable "instance_type" {
    default = "t2.micro"
  
}

variable "countname" {
    default = ["siri" ,"nainika" ,"madhu"]
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
