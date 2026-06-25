resource "service" "server" {
  target = resource.container.web
  port   = 80
}

resource "terminal" "terminal" {
  target = resource.container.web
  shell  = "bash"
}
