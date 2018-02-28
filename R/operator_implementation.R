
# Top Level Query functions ----

#' Top level object that stores all of operators that make up a query
#' @param ... find operators
#' @return nested lists that can be parsed into a MongoDB query, or JSON string
#' @rdname queries
find_query <- function(...) {
  operators <- list(...)

  lapply(operators,function(x){
    attr(x,"context") <- "find"
    x
  })
}

#' Operators that can be used inside a MongoDB Query available as r function
#' @title Query Operators
#' @param x to be compared in operator
#' @return a list that can be parsed into a part of/whole MongoDB query
#' @name  operators
#' @details Some query operators already have meaning in R language such as: in
#' for you to get around this you can refer to is as `in`(in surrounded by backtick) or inside

# Query Selectors  : Comparison -----

#' @export
#' @rdname operators
gt <- function(x) {
  find_operator("gt",x)
}

#' @export
#' @rdname operators
gte <- function(x) {
  find_operator("gte",x)
}

#' @export
#' @rdname operators
eq <- function(x) {
  find_operator("eq",x)
}

#' @export
#' @rdname operators
ne <- function(x) {
  expect_number("ne",x)
  find_operator("ne",x)
}


#' @export
#' @rdname operators
lt <- function(x) {
  expect_single_argument("lt",x)
  find_operator("lt",x)
}

#' @export
#' @rdname operators
lte <- function(x) {
  find_operator("lte",x)
}

#' @export
#' @rdname operators

`in` <- function(x) {
  find_operator("in",x)
}

#' @export
#' @rdname operators

inside <- function(x) {
  `in`(x)
}

#' @export
#' @rdname operators
nin <- function(x) {
  find_operator("nin",x)
}


# Query Selectors  : Logical -----

#' @export
#' @rdname operators
and <- function(x) {
  find_operator("and",x)
}

#' @export
#' @rdname operators
not <- function(x) {
  find_operator("not",x)
}


#' @export
#' @rdname operators
nor <- function(x) {
  find_operator("nor",x)
}


#' @export
#' @rdname operators
or <- function(x) {
  find_operator("or",x)
}


# Query Selectors  : Element -----

#' @export
#' @rdname operators
exists <- function(x) {
  find_operator("exists",x)
}

#' @export
#' @rdname operators
type <- function(x) {
  find_operator("type",x)
}

# Query Selectors  : Evaluation -----

#' @export
#' @rdname operators
expr <- function(x) {
  find_operator("expr",x)
}

#' @export
#' @rdname operators
jsonSchema <- function(x) {
  find_operator("jsonSchema",x)
}

#' @export
#' @rdname operators
mod <- function(x) {
  find_operator("mod",x)
}

#' @export
#' @rdname operators
regex <- function(x) {
  find_operator("regex",x)
}

#' @export
#' @rdname operators
type <- function(x) {
  find_operator("type",x)
}

#' @export
#' @rdname operators
text <- function(x) {
  find_operator("text",x)
}

#' @export
#' @rdname operators
where <- function(x) {
  find_operator("where",x)
}

# Query Selectors  : Geospatial -----

#' @export
#' @rdname operators
geoIntersects <- function(x) {
  find_operator("geoIntersects",x)
}

#' @export
#' @rdname operators
geoWithin <- function(x) {
  find_operator("geoWithin",x)
}

#' @export
#' @rdname operators
near <- function(x) {
  find_operator("near",x)
}

#' @export
#' @rdname operators
nearSphere <- function(x) {
  find_operator("nearSphere",x)
}
# Query Selectors  : Array -----

#' @export
#' @rdname operators
all <- function(x) {
  find_operator("all",x)
}

#' @export
#' @rdname operators
size <- function(x) {
  find_operator("size",x)
}
# Query Selectors  : Bitwise -----

#' @export
#' @rdname operators
bitsAllClear <- function(x) {
  find_operator("bitsAllClear",x)
}

#' @export
#' @rdname operators
bitsAllSet <- function(x) {
  find_operator("bitsAllSet",x)
}

#' @export
#' @rdname operators
bitsAnyClear <- function(x) {
  find_operator("bitsAnyClear",x)
}

#' @export
#' @rdname operators
bitsAnySet <- function(x) {
  find_operator("bitsAnySet",x)
}
# Query Selectors : Comment -----

#' @export
#' @rdname operators
comment <- function(x) {
  find_operator("comment",x)
}

# Query Selectors & Projectors : elemMatch -----

#' @export
#' @rdname operators
elemMatch <- function(x) {
  general_operator("elemMatch",x,c("find","project"))
}
# Query Projectors -----

#' @export
#' @rdname operators
meta <- function(x) {
  project_operator("meta",x)
}

#' @export
#' @rdname operators
slice <- function(x) {
  project_operator("slice",x)
}
