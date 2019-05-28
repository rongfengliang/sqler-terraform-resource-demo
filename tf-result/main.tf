resource "users" "login" {
    appname = "login"
    version = "v1.0"
    content = "login"
}
resource "users" "logo" {
    appname = "logo"
    version = "v2.0"
    content = ""
}

resource "apps" "dalong" {
    username = "dalong"
    age = "22"
    content = "demo"
}
resource "apps" "rong" {
    username = "rong"
    age = "29"
    content = ""
}
