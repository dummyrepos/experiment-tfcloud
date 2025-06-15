variable "build_id" {
    type = string
    default = "1"
  
}

resource "null_resource" "test" {
    triggers = {
      Build = var.build_id
    }
    provisioner "local-exec" {
        command = "echo hello"
      
    }
  
}