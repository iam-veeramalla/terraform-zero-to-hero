provider "aws" {
    region = "us-east-1"
}

import {
    id = "i-0d57317a4242d474f"

    to = aws.instance.example
}