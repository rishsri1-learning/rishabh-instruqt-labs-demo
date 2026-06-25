resource "service" "server" {
  target = resource.container.web
  port   = 80
}

resource "terminal" "terminal" {
  target = resource.container.web
  shell  = "bash"
}

resource "service" "server-incorrect-example" {
  target = resource.container.incorrect-web-scenarios-1
  port   = 9999
}

resource "terminal" "terminal-incorrect" {
  target = resource.container.incorrect-web-scenarios-1
  shell  = "bash"
}
