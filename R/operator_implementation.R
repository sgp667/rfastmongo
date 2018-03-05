#' Operators that can be used inside a MongoDB Query available as r function
#' @title Query Operators
#' @param x to be compared in operator
#' @return a list that can be parsed into a part of/whole MongoDB query
#' @name  operators
#' @details Some query operators already have meaning in R language such as: in
#' for you to get around this you can refer to is as `in`(in surrounded by backtick) or inside

# Selectors : Comparison -----

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


# Selectors : Logical -----

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


# Selectors : Element -----

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

# Selectors : Evaluation -----

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

# Selectors : Geospatial -----

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
# Selectors : Array -----

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
# Selectors : Bitwise -----

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
# Selectors : Comment -----

#' @export
#' @rdname operators
comment <- function(x) {
  find_operator("comment",x)
}

# Selectors & Projectors : elemMatch -----

#' @export
#' @rdname operators
elemMatch <- function(x) {
  general_operator("elemMatch",x,c("find","project"))
}
# Projectors -----

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

# Update Operators : Fields -----

#' @export
#' @rdname operators
currentDate <- function(x) {
  update_operator("currentDate",x)
}

#' @export
#' @rdname operators
inc <- function(x) {
  update_operator("inc",x)
}

#' @export
#' @rdname operators
min <- function(x) {
  update_operator("min",x)
}

#' @export
#' @rdname operators
max <- function(x) {
  update_operator("max",x)
}

#' @export
#' @rdname operators
mul <- function(x) {
  update_operator("mul",x)
}

#' @export
#' @rdname operators
rename <- function(x) {
  update_operator("rename",x)
}

#' @export
#' @rdname operators
set <- function(x) {
  update_operator("set",x)
}

#' @export
#' @rdname operators
setOnInsert <- function(x) {
  update_operator("setOnInsert",x)
}

#' @export
#' @rdname operators
unset <- function(x) {
  update_operator("unset",x)
}

# Update Operators : Array -----

#' @export
#' @rdname operators
addToSet <- function(x) {
  update_operator("addToSet",x)
}

#' @export
#' @rdname operators
pop <- function(x) {
  update_operator("pop",x)
}


#' @export
#' @rdname operators
pull <- function(x) {
  update_operator("pull",x)
}

#' @export
#' @rdname operators
push <- function(x) {
  update_operator("push",x)
}

#' @export
#' @rdname operators
pullAll <- function(x) {
  update_operator("pullAll",x)
}
# Update Operators : Modifiers -----

#' @export
#' @rdname operators
each <- function(x) {
  update_operator("each",x)
}

#' @export
#' @rdname operators
position <- function(x) {
  update_operator("position",x)
}

#' @export
#' @rdname operators
slice <- function(x) {
  update_operator("slice",x)
}

#' @export
#' @rdname operators
sort <- function(x) {
  update_operator("sort",x)
}

# Update Operators : Bitwise -----

#' @export
#' @rdname operators
bit <- function(x) {
  update_operator("bit",x)
}
