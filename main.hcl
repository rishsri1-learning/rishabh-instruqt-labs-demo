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
      }
      page "wrong-port-failure-scenario-tested" {
        title     = "Wrong Port Failure Scenario Tested"
        reference = resource.page.wrong-port-failure-scenario-tested
      }
      page "wrong-entry-point" {
        title     = "Wrong Entry Point"
        reference = resource.page.wrong-entry-point
        layout    = resource.layout.wrongentrypoint
      }
    }
  }
  settings {
    timelimit {
      duration = "2h"
    }
  }
}

