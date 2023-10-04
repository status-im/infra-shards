# Description

This repo defines infrastructure for running [nim-waku](github.com/status-im/nim-waku) nodes shards.

There are 3 kinds of nodes:

* `boot` - Bootstrap nodes. No `store` protcol enabled.
* `store` - Messages store nodes with `relay`, and `store` protocols.
* `store-db` - PostgreSQL used by `store` nodes for envelope storage.

# Address

| Node    | DNS ENRTree                                                                                         |
| ------- | --------------------------------------------------------------------------------------------------- |
| `boot`  | `enrtree://AMOJVZX4V6EXP7NTJPMAYJYST2QP6AJXYW76IU6VGJS7UVSNDYZG4@boot.test.shards.nodes.status.im`  |
| `store` | `enrtree://AMOJVZX4V6EXP7NTJPMAYJYST2QP6AJXYW76IU6VGJS7UVSNDYZG4@store.test.shards.nodes.status.im` |

# Continious Integration

Jenkins CI builds can be used to build and deploy new Docker images:

* `shards.test`: https://ci.infra.status.im/job/nim-waku/job/deploy-shards-test/

# Repo Usage

For how to use this repo read the [Infra Repo Usage](https://github.com/status-im/infra-docs/blob/master/docs/general/infra_repo_usage.md) doc.
