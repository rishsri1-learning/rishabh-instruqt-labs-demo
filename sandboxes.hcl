
resource "network" "network" {
  subnet = "10.100.100.0/24"
}

resource "container" "web" {
  network {
    id = resource.network.network.meta.id
  }
  image {
    name = "nginx:latest"
  }
  port {
    local    = "80"
    protocol = "tcp"
  }
  privileged = false
  resources {
    cpu    = 1000
    memory = 256
  }
  run_as {
    user  = "root"
    group = "root"
  }
}
