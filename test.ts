import { Server, ReqRef } from "./hapi";


const server = new Server({ port: 5050 });


interface Ref extends ReqRef {
    Strategy: 'test'
}

server.route <Ref>({

    method: 'get',
    path: '/',
    options: {
        auth: {
            strategy: ''
        }
    }
});


server.auth.strategy('asd', 'asd');