
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



resource "network" "network-incorrect" {
  subnet = "10.100.100.0/24"
}

resource "container" "incorrect-web-scenarios-1" {
  network {
    id = resource.network.network-incorrect.meta.id
  }
  image {
    name = "nginx:latest"
  }
  port {
    local    = "9999"
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

resource "container" "wrong-exposed-port" {
  network {
    id = resource.network.network.meta.id
  }
  image {
    name = "nginx:latest"
  }
  port {
    local    = "8081"
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


