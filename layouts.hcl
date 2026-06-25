
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
  }
}
