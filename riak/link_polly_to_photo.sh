#!/bin/sh

curl -v -X PUT http://localhost:8091/riak/animals/polly?returnbody=true \
-H "Content-Type: application/json" \
-H "Link: </riak/photos/polly.jpg>; riaktag=\"image\"" \
-d '{"nickname" : "Sweet Polly Purebred", "breed" : "Purebred"}'

