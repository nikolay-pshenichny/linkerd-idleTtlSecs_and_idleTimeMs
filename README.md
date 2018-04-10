## idleTtlSecs and idleTimeMs

The greeter client/server are based on https://github.com/grpc/grpc-go/tree/master/examples


### `idleTtlSecs` parameter test

https://linkerd.io/config/head/linkerd/index.html#binding-cache

1. Start everything with `./up.idleTtlSecs.sh`
2. Verify that the `idleTtlSecs` is set to 60 by checking the configuration here `http://localhost:7000/config.json`
3. Go to `http://localhost:7000/?router=out_route` and see the number of connections set to 1
4. Wait 60 seconds... and observe that the number of connections is still set to 1
5. Take a look at the STDOUT of docker-compose. Every 10 seconds Client, Server and Linkerd containers will show `netstat`'s data.
   The output will show that there's an ESTABLISHED connection from Linkerd to Server. And that connection never goes away.


### `idleTimeMs` parameter test

https://linkerd.io/config/head/linkerd/index.html#client-parameters

1. Start everything with `./up.idleTimeMs.sh`
2. Verify that the `idleTimeMs` is set to 60000 by checking the configuration here `http://localhost:7000/config.json`
3. Go to `http://localhost:7000/?router=out_route` and see the number of connections set to 1
4. Wait 60 seconds... and observe that the number of connections is still set to 1
5. Take a look at the STDOUT of docker-compose. Every 10 seconds Client, Server and Linkerd containers will show `netstat`'s data.
   The output will show that there's an ESTABLISHED connection from Linkerd to Server. And that connection never goes away.


### `idleTtlSecs` and `idleTimeMs` parameters test

This test combines both parameters.
The entrypoint is `./up.bothParameters.sh`
The verification steps are exactly the same as described in the previous 2 "tests"