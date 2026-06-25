


resource "layout" "single_panel" {
  column {
    width = "100"
    tab "server" {
      title  = "server"
      target = resource.service.server
    }
    tab "terminal" {
      title  = "terminal"
      target = resource.terminal.terminal
    }
    tab "terminal-incorrect" {
      title  = "terminal-incorrect"
      target = resource.terminal.wrong-port-configured-terminal-nginx
    }
    tab "server-incorrect-example" {
      title  = "server-incorrect-example"
      target = resource.service.wrong-port-configured-server-nginx
    }
    instructions {
      title = "Instructions"
    }
  }
}
