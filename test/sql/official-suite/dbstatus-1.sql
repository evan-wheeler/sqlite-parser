-- original: dbstatus.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE t1(x)
;CREATE TABLE t2(y)
;INSERT INTO t1 VALUES(zeroblob(9000));