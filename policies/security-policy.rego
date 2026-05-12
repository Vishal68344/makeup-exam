package main

deny[msg] {

  input.spec.template.spec.containers[_].securityContext.runAsNonRoot == false

  msg = "Containers must not run as root"
}
