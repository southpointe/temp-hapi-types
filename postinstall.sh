git clone https://github.com/southpointe/temp-hapi-types.git

cp temp-hapi-types/hapi.d.ts node_modules/@types/hapi__hapi/index.d.ts;
cp temp-hapi-types/jwt.d.ts node_modules/@types/hapi__jwt/index.d.ts;

rm -rf temp-hapi-types
