# eslint-config-wcl-backend

WCL's ESlint shareable configs used for backend, it's extended from [eslint-config-loopback](https://github.com/strongloop/eslint-config-loopback).

## Prerequisite
ESlint@3.18 or later.

## Usage

```
npm i -D eslint eslint-config-wcl-backend
```

Create .eslintrc as following,

```
{
  "extends": "wcl-backend"
}
```

## Rules overriding

You can override the rules by adding the `rules`.
```
{
  "extends": "wcl-backend",
  "rules": {
    "eqeqeq": "off"
  }
}
```

## Include Make targets

You can include our common make targets (`make lint`, `make lint-fix`...) by adding the following line to your `Makefile`.

```
include node_modules/eslint-config-wcl-backend/setup.mk
```

## License

[MIT](LICENSE)
