% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/result.R
\docType{methods}
\name{result-meta}
\alias{dbColumnInfo,MySQLResult-method}
\alias{dbGetException,MySQLResult-method}
\alias{dbGetRowCount,MySQLResult-method}
\alias{dbGetRowsAffected,MySQLResult-method}
\alias{dbHasCompleted,MySQLResult-method}
\alias{result-meta}
\alias{show,MySQLResult-method}
\alias{summary,MySQLResult-method}
\title{Database interface meta-data.}
\usage{
\S4method{dbColumnInfo}{MySQLResult}(res, ...)

\S4method{dbGetRowsAffected}{MySQLResult}(res, ...)

\S4method{dbGetRowCount}{MySQLResult}(res, ...)

\S4method{dbHasCompleted}{MySQLResult}(res, ...)

\S4method{dbGetException}{MySQLResult}(conn, ...)

\S4method{summary}{MySQLResult}(object, verbose = FALSE, ...)

\S4method{show}{MySQLResult}(object)
}
\arguments{
\item{res,conn,object}{An object of class \code{\linkS4class{MySQLResult}}}

\item{...}{Ignored. Needed for compatibility with generic}

\item{verbose}{If \code{TRUE}, print extra information.}
}
\description{
See documentation of generics for more details.
}
\examples{
if (mysqlHasDefault()) {
con <- dbConnect(RMySQL::MySQL(), dbname = "test")
dbWriteTable(con, "t1", datasets::USArrests, overwrite = TRUE)

rs <- dbSendQuery(con, "SELECT * FROM t1 WHERE UrbanPop >= 80")
dbGetStatement(rs)
dbHasCompleted(rs)

dbGetInfo(rs)
dbColumnInfo(rs)

dbClearResult(rs)
dbRemoveTable(con, "t1")
dbDisconnect(con)
}
}

