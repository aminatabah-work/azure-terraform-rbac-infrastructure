# Architecture Overview

This project provisions a simple Azure environment using Terraform with a focus on secure access control and infrastructure reproducibility.

## Architecture Diagram

```text
+-------------------------------+
| Azure Resource Group          |
| rg-azure-rbac-lab             |
+---------------+---------------+
                |
                |
        +-------v----------------------+
        | Azure Storage Account        |
        | abahstorage12345             |
        +---------------+--------------+
                        |
                        |
        +---------------v--------------+
        | RBAC Role Assignment         |
        | Reader role                  |
        | Principal ID from variable   |
        +------------------------------+

+-------------------------------+
| Azure Resource Group          |
+---------------+---------------+
                |
     +----------+-----------+
     |                      |
+----v-----+        +-------v---------+
| Storage  |        | Virtual Network |
| Account  |        | + Subnet        |
+----+-----+        +-----------------+
     |
+----v------------------+
| RBAC Role Assignment  |
| Reader                |
+-----------------------+
