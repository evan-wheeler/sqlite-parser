-- original: where6.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE t1(a INTEGER PRIMARY KEY,b,c);
    INSERT INTO t1 VALUES(1,3,1);
    INSERT INTO t1 VALUES(2,4,2);
    CREATE TABLE t2(x INTEGER PRIMARY KEY);
    INSERT INTO t2 VALUES(3);

    SELECT * FROM t1 LEFT JOIN t2 ON b=x AND c=1
;SELECT * FROM t1 LEFT JOIN t2 ON x=b AND c=1
;SELECT * FROM t1 LEFT JOIN t2 ON x=b AND 1=c
;SELECT * FROM t1 LEFT JOIN t2 ON b=x AND 1=c
;SELECT * FROM t1 LEFT JOIN t2 ON b=x WHERE c=1
;SELECT * FROM t1 LEFT JOIN t2 ON x=b WHERE c=1
;SELECT * FROM t1 LEFT JOIN t2 ON b=x WHERE 1=c
;CREATE INDEX i1 ON t1(c);

    SELECT * FROM t1 LEFT JOIN t2 ON b=x AND c=1
;SELECT * FROM t1 LEFT JOIN t2 ON x=b AND c=1
;SELECT * FROM t1 LEFT JOIN t2 ON x=b AND 1=c
;SELECT * FROM t1 LEFT JOIN t2 ON b=x AND 1=c
;SELECT * FROM t1 LEFT JOIN t2 ON b=x WHERE c=1
;SELECT * FROM t1 LEFT JOIN t2 ON x=b WHERE c=1
;SELECT * FROM t1 LEFT JOIN t2 ON x=b WHERE 1=c
;SELECT * FROM t1 LEFT JOIN t2 ON b=x WHERE 1=c
;CREATE TABLE t4(x UNIQUE);
    INSERT INTO t4 VALUES('abc');
    INSERT INTO t4 VALUES('def');
    INSERT INTO t4 VALUES('ghi');
    CREATE TABLE t5(a, b, c, PRIMARY KEY(a,b));
    INSERT INTO t5 VALUES('abc','def',123);
    INSERT INTO t5 VALUES('def','ghi',456);

    SELECT t4a.x, t4b.x, t5.c, t6.v
      FROM t4 AS t4a
           INNER JOIN t4 AS t4b
           LEFT JOIN t5 ON t5.a=t4a.x AND t5.b=t4b.x
           LEFT JOIN (SELECT 1 AS v) AS t6 ON t4a.x=t4b.x
     ORDER BY 1, 2, 3;