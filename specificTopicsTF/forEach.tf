locals {
    subnet_ids = toset([
        "subnet-12344",
        "subnet_4666"
    ])
}

resource "aws_instance" "server"{
    for_each = local.subnet_ids

    ami = "...."
    instance_type = "t2.micro"
    subnet_id = each.key

tags = {
    name = "server ${each.key}"
}
}