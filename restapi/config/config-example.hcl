apps {
    exec = <<SQL
    select * from apps;
    SQL
}
users {
    exec = <<SQL
     select * from users;
    SQL
}
user_apps {
    aggregate = ["users","apps"]
}