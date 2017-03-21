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
  "env": {
    "node": true,
    "es6": true,
    "mocha": true
  },
  "extended": "wcl-backend"
}
```

## Rules overriding

You can override the rules by adding the `rules`.
```
{
  "extended": "wcl-backend",
  "rules": {
    "eqeqeq": "off"
  }
}
```

## License

MIT
