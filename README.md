[![Build Status](https://travis-ci.org/sgp667/rfastmongo.svg?branch=master)](https://travis-ci.org/sgp667/rfastmongo)

# rfastmongo

This is a package that allows developer to write queries for MongoDB using R functions instead of properly formated character strings.


### Example

This is original find query
>
> query <- "{ _id: ObjectId(something_that_needs_to_be_substituted_in__your_code)}"

This is rfastmongo approach
>
> query <-find(ObjectId(my_varaible))


### Introduction

Mongo operators are avaialble as functions without dollar sign in front of them $set, $setOnInsert, $setOnUpdate, $each, $gt
