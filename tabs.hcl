resource "service" "server" {
  target = resource.container.web
  port   = 80
}

resource "terminal" "terminal" {
  target = resource.container.web
  shell  = "bash"
}




resource "terminal" "wrong-port-configured-terminal-nginx" {
  target = resource.container.incorrect-web-scenarios-1
  shell  = "bash"
}

resource "service" "wrong-port-configured-server-nginx" {
  target = resource.container.incorrect-web-scenarios-1
  port   = 9999
}
