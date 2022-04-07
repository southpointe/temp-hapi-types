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
