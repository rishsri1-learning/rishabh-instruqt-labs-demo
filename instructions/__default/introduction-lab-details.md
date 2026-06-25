# Instruqt Labs 2.0 Migration Lab

## Lab Overview

This lab explores the core features of Instruqt Labs 2.0 including HCL-based configuration, sandbox setup, version control integration, and troubleshooting scenarios.

The lab also demonstrates a basic nginx container setup with validation and testing workflows.

---

# Features Covered

* Labs 2.0 structure
* HCL configuration basics
* Sandbox and service setup
* Terminal and web application access
* nginx service validation
* Sandbox troubleshooting scenarios
* GitHub version control integration

---

# Sandbox Validation

The nginx container was validated successfully using:

```bash id="mjlwm1"
curl localhost
```

Expected result:

```text id="7jlwm6"
Welcome to nginx!
```

---

# Failure Scenario Tested

A wrong port validation scenario was tested using:

```bash id="1jlwm1"
curl localhost:9999
```

Observed error:

```text id="5jlwm0"
curl: (7) Failed to connect to localhost port 9999
```

This demonstrates a basic sandbox troubleshooting workflow.

---

# Validation Commands

```bash id="4jlwm0"
instruqt lab validate
```

```bash id="8jlwm1"
instruqt lab format
```

---

# Version Control

The lab repository was connected to GitHub and successfully imported into the Labs UI with visible change history and synchronization.
