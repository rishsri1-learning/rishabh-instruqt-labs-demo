resource "lab" "main" {
  title       = "Skeleton Lab"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n\nFor more information, check ./assets/README.md"

  layout = resource.layout.single_panel
  content {
    chapter "__default" {
      title = "Default"
      page "untitled-page-1" {
        title     = "Untitled page 1"
        reference = resource.page.untitled-page-1
      }
    }
  }
}

