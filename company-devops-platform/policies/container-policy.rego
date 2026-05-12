package main

deny[msg] {

  image := input.spec.template.spec.containers[_].image

  not contains(image, ":")

  msg = "Image tag required"
}
