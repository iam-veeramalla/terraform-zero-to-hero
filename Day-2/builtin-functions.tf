variable "list1" {
  type = list
  default = ["a","b"]
}

variable "list2" {
 type = list 
 default = ["c","d","e"] 
}

output "combined_list" {
value = concat(var.list1,var.list2)   
}

output "selected_element" {
    value = element(var.list1,1) 
}

output "length_variable" {
    value = length(var.list2)
  
}

variable "my_map" {
  type    = map(string)
  default = {"name" = "Alice", "age" = "30"}
}

output "value" {
  value = lookup(var.my_map, "name") # Returns "Alice"
}

variable "my_list" {
  default = ["apple", "banana", "cherry"]
}

output "joined_var" {
  value = join("-", var.my_list)
}


variable "items" {
  default = ["apple", "banana", "cherry"]
}

output "fruit_list" {
  value = join(", ", var.items)
}