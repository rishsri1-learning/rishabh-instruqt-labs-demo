resource "lab" "main" {
  title       = "Skeleton Lab"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n\n"

  layout = resource.layout.single_panel
  content {
    chapter "__default" {
      title = "Default"
      page "introduction-lab-details" {
        title     = "Introduction Lab Details"
        reference = resource.page.introduction-lab-details
        layout    = resource.layout.single_panel
      }
      page "migration-page-2" {
        title     = "Migration Page 2"
        reference = resource.page.migration-page-2
        layout    = resource.layout.second_panel
      }
    }
  }
  settings {
    timelimit {
      duration = "2h"
    }
  }
}

