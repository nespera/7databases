#!/bin/sh

curl -X PUT http://localhost:8091/riak/medicine/antibiotics \
-H "Content-type: image/jpeg" \
-H "Link: </riak/animals/ace>; riaktag=\"patient\"" \
--data-binary @antibiotics.jpg

