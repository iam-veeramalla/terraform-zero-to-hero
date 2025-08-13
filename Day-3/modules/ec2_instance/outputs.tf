output "public-ip-address" {
  value = aws_instance.example.public_ip
}

#This needed to be referred from the outputs.tf inside the Day-3 which would further redirect to this outputs.tf inside the module using which the value would be resolved. Just a thing that I noticed was missing from your video :)
