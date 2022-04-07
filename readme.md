# Experimental Hapi types

This repo will be deleted eventually. Its existence is purely to test the typings in a real typescript project. The goal of these typings are to better document the type of data that is expected through the wire in all the hapi configuration objects and lifecycle methods at compile time. This will help us build better Hapi apps and communicate to future devs the intentions of our code.

[Please leave any feedback in the definitely typed PR conversation section](https://github.com/DefinitelyTyped/DefinitelyTyped/pull/59217).

## Installation

Add the post install script to your package json

``` sh

cd MY_PROJECT

# if not exists
mkdir scripts

git clone git@github.com:southpointe/temp-hapi-types.git /tmp/temp-hapi-types

cp /tmp/temp-hapi-types/postinstall.sh scripts

chmod +x scripts/postinstall.sh

rm -rf /tmp/temp-hapi-types

```

In your `package.json`

``` json

{
    ...,
    "scripts": {
        "postinstall": "sh scripts/postinstall.sh",
        ...
    }
}

```

Now you can npm install and have the postinstall override hapi types

``` sh

npm install

#  or
yarn

```

## Things to take note of

- There is the concept of [Request Reference Defaults](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L433) which aims to give you the ability to extend its types as the set default for all requests.
- [Request are generic](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L451) and are set to the defaults if none is passed. They can be overriden piece meal, and it will not affect the other defaults. Whatever you pass into that generic will be favored over the defaults
- In a similar fasion, [lifecycle methods](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L4196) are also generic, and are passed down generics from request, toolkit, and such
- The following also have generics and should be subject to review:
  - [ResponseToolkit](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L1060)
  - [RouteOptionsPreArray](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L1539) and subsequent lines
  - [RouteOptions](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L2117)
  - [ServerAuthScheme](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L2150) and subsequent lines
  - [RouteExtObject](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L2659)
  - [ServerRoute](https://github.com/southpointe/temp-hapi-types/blob/master/hapi.d.ts#L3345)
