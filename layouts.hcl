


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
      target = resource.terminal.terminal-incorrect
    }
    tab "server-incorrect-example" {
      title  = "server-incorrect-example"
      target = resource.service.server-incorrect-example
    }
    instructions {
      title = "Instructions"
    }
  }
}
