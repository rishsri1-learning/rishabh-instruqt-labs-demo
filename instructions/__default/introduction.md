# Rishabh Labs 2.0 Migration Lab

Welcome to the migration lab.

In this lab you will learn:

- Labs 2.0 structure
- HCL basics
- YAML to HCL migration concepts
- Validation workflow

## Migration Example

### Instruqt 1.0 YAML

```yaml
containers:
  - name: web
    image: nginx


resource "container" "web" {
  image = "nginx"
} 
