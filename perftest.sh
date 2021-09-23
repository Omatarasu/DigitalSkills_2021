host="fabmedical-mh5.mongo.cosmos.azure.com"
username="fabmedical-mh5"
password="SknpSeVQJ7ENlESvIW37pkULSt8LFLSooOGhj4m6ytBd9aIPABXD1DNpKuHDe6Q4xjxlTXxs0zfhBM6V2b1dPg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongosh $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
