data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

output "ami_details" {
  value = data.aws_ami.image_id
}


// whenever we need any data from amazon existing things need to use data sources to pull the data.
// Example : we need ami ids. since this is dynamic data and available in amazon so we can pull it by using data sources.