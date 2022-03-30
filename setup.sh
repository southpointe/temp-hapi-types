yarn

mkdir -p node_modules/@types/hapi__hapi/

echo '{ "types": "types.d.ts", "main": "" }' >> node_modules/@types/hapi__hapi/package.json
cp hapi.d.ts node_modules/@types/hapi__hapi/types.d.ts

