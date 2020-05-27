#!/bin/bash

body='{"productId":1,"name":"product name D","weight":300, "recommendations":[{"recommendationId":1,"author":"author 1","rate":1,"content":"content 1"},{"recommendationId":2,"author":"author 2","rate":2,"content":"content 2"},{"recommendationId":3,"author":"author 3","rate":3,"content":"content 3"}], "reviews":[{"reviewId":1,"author":"author 1","subject":"subject 1","content":"content 1"},{"reviewId":2,"author":"author 2","subject":"subject 2","content":"content 2"},{"reviewId":3,"author":"author 3","subject":"subject 3","content":"content 3"}]}'
body+='{"productId":1,"name":"product name E","weight":1500, "recommendations":[{"recommendationId":4,"author":"author 1","rate":1,"content":"content 1"},{"recommendationId":5,"author":"author 2","rate":2,"content":"content 2"},{"recommendationId":3,"author":"author 3","rate":3,"content":"content 3"}], "reviews":[{"reviewId":1,"author":"author 1","subject":"subject 1","content":"content 1"},{"reviewId":2,"author":"author 2","subject":"subject 2","content":"content 2"},{"reviewId":3,"author":"author 3","subject":"subject 3","content":"content 3"}]}'

#echo $body

curl -X POST localhost:8080/product-composite -H "Content-Type:application/json" --data "$body"

