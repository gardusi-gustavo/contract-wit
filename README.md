# contract-wit

Wasm Component Model interfaces, defined with the WebAssembly Interface Types
(`.wit`) language.

## Layout

```text
wit/          interface and world definitions
```

## calculator.wit

```wit
package demo:math;

interface arithmetic {
    add: func(a: s32, b: s32) -> s32;
    multiply: func(a: s32, b: s32) -> s32;
}

world component-math {
    export arithmetic;
}
```

## Relationship to other contracts

| Contract | Format |
| --- | --- |
| `contract-json` | JSON Schema |
| `contract-proto` | Protobuf |
| `contract-graphql` | GraphQL SDL |
| `contract-openapi` | OpenAPI 3.1 |
| `contract-sql` | SQL DDL |
| **`contract-wit`** | WebAssembly Interface Types |

This repository defines interfaces only. Implementations live in the language
packages (`package-rs`, `package-zig`, `package-cpp`) and raw assembly lives in
`package-wat`.

## Validation

With the WebAssembly toolchain:

```bash
wasm-tools component wit wit/calculator.wit
```
