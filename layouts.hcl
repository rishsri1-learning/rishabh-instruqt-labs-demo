




resource "layout" "second_panel" {
  column {
    width = "100"
    tab "wrong-port-configured-server-nginx" {
      title  = "wrong-port-configured-server-nginx"
      target = resource.service.wrong-port-configured-server-nginx
    }
    tab "wrong-port-configured-terminal-nginx" {
      title  = "wrong-port-configured-terminal-nginx"
      target = resource.terminal.wrong-port-configured-terminal-nginx
    }
    instructions {
      title = "Instructions"
    }
  }
}

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
    instructions {
      title = "Instructions"
    }
  }
}




resource "layout" "wrongentrypoint" {
  column {
    width = "100"
    tab "wrong-entrypoin-terminal" {
      title  = "wrong-entrypoin-terminal"
      target = resource.terminal.wrong-entrypoin-terminal
    }
  }
}
