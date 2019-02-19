provider "aws" {
  version = "~> 1.22"
  access_key = "${var.AWS_ACCESS_KEY_ID}"
  secret_key = "${var.AWS_SECRET_ACCESS_KEY}"
  region = "${var.INSTANCE_REGION}"
}

resource "aws_security_group" "proxies" {
  name = "proxies"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = "${var.PROXY_PORT}"
    to_port     = "${var.PROXY_PORT}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "key" {
  key_name = "${var.KEY_PAIR_NAME}"
  public_key = "${file("${var.PUBLIC_KEY_PATH}")}"
}

resource "aws_instance" "ProxyNode" {
  # set up connection and provison instances
}
