# dr-demo-inventory-sync

Reconciles inventory between warehouse systems.

## Overview

`dr-demo-inventory-sync` is a Go service in the logistics domain. It runs as an internal worker
with a small HTTP control surface.

## Build

```bash
go build ./...
go test ./...
```

## Layout

- `main.go` — HTTP control surface
- `internal/store/store.go` — database access
- `internal/ops/ops.go` — operational helpers
- `internal/ops/ops_test.go` — fixtures
