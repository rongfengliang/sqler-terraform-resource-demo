
variable filename {
  type = string
  default = "tf-result/main.tf"
}
data "http" "user_apps" {
  url = "http://localhost:8025/user_apps"
}
resource "local_file" "main_tf" {
    content  = templatefile("user_apps.tmpl", jsondecode(data.http.user_apps.body))
    filename = var.filename
}