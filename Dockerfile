FROM alpine
RUN apk update ; \
        apk add git go;\
        export GOPATH=/opt/go; \
        go get -u -v  github.com/netroby/iris-app1; 
        mv /opt/go/bin/iris-app1 /bin/iris-app1;\
        apk del openssl ca-certificates libssh2 curl expat pcre git go;\
        rm -rf /opt/go ;\
        rm -rf /usr/lib/go;

EXPOSE 8080
CMD ["/bin/iris-app1"]
