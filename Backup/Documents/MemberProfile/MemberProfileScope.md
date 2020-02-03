| **MEMBER PROFILE SCOPE ** | ****          | ****         | ****               | ****               | ****          | ****         |
| ------------------------- | ------------- | ------------ | ------------------ | ------------------ | ------------- | ------------ |
|                           |               |              |                    |                    |               |              |
| **REQUEST LEG**           |               |              |                    |                    |               |              |
|                           |               |              |                    |                    |               |              |
| **ATTRIBUTES**            | **  CMB - 1** | ** CMB – 2** | ** CMB – 3**       | ** CMB – 4**       | **  CMB – 5** | ** CMB – 6** |
| PAN                       | Valid         | Invalid      | Valid              | Valid              | Valid         | Valid        |
| SRC_ENDPOINT              | Valid         | Valid        | Invalid            | Valid              | Valid         | Valid        |
| ACQ INST_ID CODE          | Valid         | Valid        | Valid              | Invalid            | Valid         | Valid        |
| TRAN TYPE                 | Valid         | Valid        | Valid              | Valid              | Invalid       | Valid        |
| MCC                       | Valid         | Valid        | Valid              | Valid              | Valid         | Invalid      |
|                           |               |              |                    |                    | _             |              |
| **REJECT  CODE**          | **_**         | **2003**     | **2001/2002/2005** | **2001/2002/2005** | **2007**      | **2009**     |

| **REQUEST LEG WITH FORWARD ROUTE** | ****         | ****               |
| ---------------------------------- | ------------ | ------------------ |
| **ATTRIBUTES**                     | ** CMB – 1** | ** CMB – 2**       |
| PAN                                | Valid        | Valid              |
| SRC_ENDPOINT                       | Valid        | Invalid            |
| ACQ INST_ID CODE                   | Valid        | Valid              |
| TRAN TYPE                          | Valid        | Valid              |
| MCC                                | Valid        | Valid              |
| FORWARD ROUTE                      | Invalid      | Valid              |
| **REJECT  CODE**                   | **2002**     | **2001/2002/2005** |

| **REJECT DESCRIPTION** | ****                                     | **** | **** | **** | **** | **** |
| ---------------------- | ---------------------------------------- | ---- | ---- | ---- | ---- | ---- |
| **2001**               | SRC_PROCESSOR_ROUTE_INVALID_COMBINATION  |      |      |      |      |      |
| **2002**               | SRC_PROCESSOR_FWD_ROUTE_INVALID_COMBINATION |      |      |      |      |      |
| **2005**               | SRC_ENTITY_NOT_FOUND                     |      |      |      |      |      |
| **2007**               | TRANTYPE_NOT_SUPPORTED_FOR_SRC_ENTITY    |      |      |      |      |      |
| **2009**               | MCC_NOT_SUPPORTED_FOR_SRC_ENTITY         |      |      |      |      |      |
| **2003**               | DEST_ENTITY_NOT_FOUND                    |      |      |      |      |      |
| **2004**               | FWD_ROUTE_SRC_ROUTE_INVALID_COMBINATION  |      |      |      |      |      |

| **RESPONSE LEG WITH FORWARD ROUTE** | ****                                     | ****               | **** | **** |
| ----------------------------------- | ---------------------------------------- | ------------------ | ---- | ---- |
| **ATTRIBUTES**                      | ** CMB – 1**                             | ** CMB – 2**       | **** | **** |
| PAN                                 | Valid                                    | Valid              | **** | **** |
| SRC_ENDPOINT                        | Valid                                    | Invalid            | **** | **** |
| DEST_ENDPOINT                       | Valid                                    | Valid              | **** | **** |
| DEST ROUTE                          | Valid                                    | Valid              | **** | **** |
| TRAN TYPE                           | Valid                                    | Valid              | **** | **** |
| MCC                                 | Valid                                    | Valid              | **** | **** |
| FORWARD ROUTE                       | Invalid                                  | Valid              | **** | **** |
| **REJECT  CODE**                    | **2002**                                 | **2001/2002/2005** | **** | **** |
|                                     |                                          |                    |      |      |
| **REJECT DESCRIPTION**              | ****                                     | ****               | **** | **** |
| **2005**                            | SRC_ENTITY_NOT_FOUND                     |                    |      |      |
| **2001**                            | SRC_PROCESSOR_ROUTE_INVALID_COMBINATION  |                    |      |      |
| **2002**                            | SRC_PROCESSOR_FWD_ROUTE_INVALID_COMBINATION |                    |      |      |
| **2003**                            | DEST_ENTITY_NOT_FOUND                    |                    |      |      |
| **2551**                            | UNABLE_TO_RESOLVE_DEST_ROUTE             |                    |      |      |
| **2004**                            | FWD_ROUTE_SRC_ROUTE_INVALID_COMBINATION  |                    |      |      |
| **2006**                            | TRANTYPE_NOT_SUPPORTED_FOR_DEST_ENTITY   |                    |      |      |
| **2008**                            | MCC_NOT_SUPPORTED_FOR_DEST_ENTITY        |                    |      |      |
| **2552**                            | UNABLE_TO_RESOLVE_DEST_ENDPOINT          |                    |      |      |
|                                     |                                          |                    |      |      |
|                                     |                                          |                    |      |      |
|                                     |                                          |                    |      |      |
|                                     |                                          |                    |      |      |
|                                     |                                          |                    |      |      |
| Note :                              |                                          |                    |      |      |
| UNABLE_TO_RESOLVE_DEST_ENDPOINT     |                                          |                    |      |      |