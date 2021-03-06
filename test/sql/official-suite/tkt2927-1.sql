-- original: tkt2927.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1,11);
    INSERT INTO t1 VALUES(2,22);
    INSERT INTO t1 VALUES(3,33);
    INSERT INTO t1 VALUES(4,44);
    INSERT INTO t1 VALUES(5,55);
    SELECT * FROM t1
;SELECT a, b FROM t1
    UNION ALL
    SELECT a, b FROM t1
;SELECT a, b FROM t1
    UNION ALL
    SELECT a, abs(b) FROM t1
;SELECT a, b FROM t1
    UNION ALL
    SELECT abs(a), b FROM t1
;SELECT a, b FROM t1
    UNION ALL
    SELECT abs(a), abs(b) FROM t1
;SELECT a, abs(b) FROM t1
    UNION ALL
    SELECT a, b FROM t1
;SELECT a, abs(b) FROM t1
    UNION ALL
    SELECT a, abs(b) FROM t1
;SELECT a, abs(b) FROM t1
    UNION ALL
    SELECT abs(a), b FROM t1
;SELECT a, abs(b) FROM t1
    UNION ALL
    SELECT abs(a), abs(b) FROM t1
;SELECT abs(a), b FROM t1
    UNION ALL
    SELECT a, b FROM t1
;SELECT abs(a), b FROM t1
    UNION ALL
    SELECT a, abs(b) FROM t1
;SELECT abs(a), b FROM t1
    UNION ALL
    SELECT abs(a), b FROM t1
;SELECT abs(a), b FROM t1
    UNION ALL
    SELECT abs(a), abs(b) FROM t1
;SELECT abs(a), abs(b) FROM t1
    UNION ALL
    SELECT a, b FROM t1
;SELECT abs(a), abs(b) FROM t1
    UNION ALL
    SELECT a, abs(b) FROM t1
;SELECT abs(a), abs(b) FROM t1
    UNION ALL
    SELECT abs(a), b FROM t1
;SELECT abs(a), abs(b) FROM t1
    UNION ALL
    SELECT abs(a), abs(b) FROM t1
;SELECT a, b FROM t1
    UNION 
    SELECT a, b FROM t1
    ORDER BY 1
;SELECT a, b FROM t1
    UNION 
    SELECT a, abs(b) FROM t1
    ORDER BY 1
;SELECT a, b FROM t1
    UNION 
    SELECT abs(a), b FROM t1
    ORDER BY 1
;SELECT a, b FROM t1
    UNION 
    SELECT abs(a), abs(b) FROM t1
    ORDER BY 1
;SELECT a, abs(b) FROM t1
    UNION 
    SELECT a, b FROM t1
    ORDER BY 1
;SELECT a, abs(b) FROM t1
    UNION 
    SELECT a, abs(b) FROM t1
    ORDER BY 1
;SELECT a, abs(b) FROM t1
    UNION 
    SELECT abs(a), b FROM t1
    ORDER BY 1
;SELECT a, abs(b) FROM t1
    UNION 
    SELECT abs(a), abs(b) FROM t1
    ORDER BY 1
;SELECT abs(a), b FROM t1
    UNION 
    SELECT a, b FROM t1
    ORDER BY 1
;SELECT abs(a), b FROM t1
    UNION 
    SELECT a, abs(b) FROM t1
    ORDER BY 1
;SELECT abs(a), b FROM t1
    UNION 
    SELECT abs(a), b FROM t1
    ORDER BY 1
;SELECT abs(a), b FROM t1
    UNION 
    SELECT abs(a), abs(b) FROM t1
    ORDER BY 1
;SELECT abs(a), abs(b) FROM t1
    UNION 
    SELECT a, b FROM t1
    ORDER BY 1
;SELECT abs(a), abs(b) FROM t1
    UNION 
    SELECT a, abs(b) FROM t1
    ORDER BY 1
;SELECT abs(a), abs(b) FROM t1
    UNION 
    SELECT abs(a), b FROM t1
    ORDER BY 1
;SELECT abs(a), abs(b) FROM t1
    UNION 
    SELECT abs(a), abs(b) FROM t1
    ORDER BY 1
;SELECT a+b, a-b, a, b FROM t1
    UNION ALL
    SELECT a+b, a-b, a, b FROM t1
;SELECT a+b, a-b, a, b FROM t1
    UNION ALL
    SELECT a+b, a-b, a, abs(b) FROM t1
;SELECT a+b, a-b, a, b FROM t1
    UNION ALL
    SELECT a+b, a-b, abs(a), b FROM t1
;SELECT a+b, a-b, a, b FROM t1
    UNION ALL
    SELECT a+b, a-b, abs(a), abs(b) FROM t1
;SELECT a+b, a-b, a, abs(b) FROM t1
    UNION ALL
    SELECT a+b, a-b, a, b FROM t1
;SELECT a+b, a-b, a, abs(b) FROM t1
    UNION ALL
    SELECT a+b, a-b, a, abs(b) FROM t1
;SELECT a+b, a-b, a, abs(b) FROM t1
    UNION ALL
    SELECT a+b, a-b, abs(a), b FROM t1
;SELECT a+b, a-b, a, abs(b) FROM t1
    UNION ALL
    SELECT a+b, a-b, abs(a), abs(b) FROM t1
;SELECT a+b, a-b, abs(a), b FROM t1
    UNION ALL
    SELECT a+b, a-b, a, b FROM t1
;SELECT a+b, a-b, abs(a), b FROM t1
    UNION ALL
    SELECT a+b, a-b, a, abs(b) FROM t1
;SELECT a+b, a-b, abs(a), b FROM t1
    UNION ALL
    SELECT a+b, a-b, abs(a), b FROM t1
;SELECT a+b, a-b, abs(a), b FROM t1
    UNION ALL
    SELECT a+b, a-b, abs(a), abs(b) FROM t1
;SELECT a+b, a-b, abs(a), abs(b) FROM t1
    UNION ALL
    SELECT a+b, a-b, a, b FROM t1
;SELECT a+b, a-b, abs(a), abs(b) FROM t1
    UNION ALL
    SELECT a+b, a-b, a, abs(b) FROM t1
;SELECT a+b, a-b, abs(a), abs(b) FROM t1
    UNION ALL
    SELECT a+b, a-b, abs(a), b FROM t1
;SELECT a+b, a-b, abs(a), abs(b) FROM t1
    UNION ALL
    SELECT a+b, a-b, abs(a), abs(b) FROM t1
;SELECT a, b FROM t1
    EXCEPT
    SELECT a, b FROM t1
;SELECT a, b FROM t1
    EXCEPT
    SELECT a, abs(b) FROM t1
;SELECT a, b FROM t1
    EXCEPT
    SELECT abs(a), b FROM t1
;SELECT a, b FROM t1
    EXCEPT
    SELECT abs(a), abs(b) FROM t1
;SELECT a, abs(b) FROM t1
    EXCEPT
    SELECT a, b FROM t1
;SELECT a, abs(b) FROM t1
    EXCEPT
    SELECT a, abs(b) FROM t1
;SELECT a, abs(b) FROM t1
    EXCEPT
    SELECT abs(a), b FROM t1
;SELECT a, abs(b) FROM t1
    EXCEPT
    SELECT abs(a), abs(b) FROM t1
;SELECT abs(a), b FROM t1
    EXCEPT
    SELECT a, b FROM t1
;SELECT abs(a), b FROM t1
    EXCEPT
    SELECT a, abs(b) FROM t1
;SELECT abs(a), b FROM t1
    EXCEPT
    SELECT abs(a), b FROM t1
;SELECT abs(a), b FROM t1
    EXCEPT
    SELECT abs(a), abs(b) FROM t1
;SELECT abs(a), abs(b) FROM t1
    EXCEPT
    SELECT a, b FROM t1
;SELECT abs(a), abs(b) FROM t1
    EXCEPT
    SELECT a, abs(b) FROM t1
;SELECT abs(a), abs(b) FROM t1
    EXCEPT
    SELECT abs(a), b FROM t1
;SELECT abs(a), abs(b) FROM t1
    EXCEPT
    SELECT abs(a), abs(b) FROM t1
;SELECT a, b FROM t1
    INTERSECT
    SELECT a, b FROM t1
    ORDER BY 1
;SELECT a, b FROM t1
    INTERSECT
    SELECT a, abs(b) FROM t1
    ORDER BY 1
;SELECT a, b FROM t1
    INTERSECT
    SELECT abs(a), b FROM t1
    ORDER BY 1
;SELECT a, b FROM t1
    INTERSECT
    SELECT abs(a), abs(b) FROM t1
    ORDER BY 1
;SELECT a, abs(b) FROM t1
    INTERSECT
    SELECT a, b FROM t1
    ORDER BY 1
;SELECT a, abs(b) FROM t1
    INTERSECT
    SELECT a, abs(b) FROM t1
    ORDER BY 1
;SELECT a, abs(b) FROM t1
    INTERSECT
    SELECT abs(a), b FROM t1
    ORDER BY 1
;SELECT a, abs(b) FROM t1
    INTERSECT
    SELECT abs(a), abs(b) FROM t1
    ORDER BY 1
;SELECT abs(a), b FROM t1
    INTERSECT
    SELECT a, b FROM t1
    ORDER BY 1
;SELECT abs(a), b FROM t1
    INTERSECT
    SELECT a, abs(b) FROM t1
    ORDER BY 1
;SELECT abs(a), b FROM t1
    INTERSECT
    SELECT abs(a), b FROM t1
    ORDER BY 1
;SELECT abs(a), b FROM t1
    INTERSECT
    SELECT abs(a), abs(b) FROM t1
    ORDER BY 1
;SELECT abs(a), abs(b) FROM t1
    INTERSECT
    SELECT a, b FROM t1
    ORDER BY 1
;SELECT abs(a), abs(b) FROM t1
    INTERSECT
    SELECT a, abs(b) FROM t1
    ORDER BY 1
;SELECT abs(a), abs(b) FROM t1
    INTERSECT
    SELECT abs(a), b FROM t1
    ORDER BY 1
;SELECT abs(a), abs(b) FROM t1
    INTERSECT
    SELECT abs(a), abs(b) FROM t1
    ORDER BY 1
;CREATE TABLE host (
     hostname text not null primary key,
     consoleHost text,
     consolePort text
    );
    INSERT INTO "host" VALUES('aald04','aalp03','4');
    INSERT INTO "host" VALUES('aald17','aalp01','1');
    CREATE VIEW consolemap1a as
      select hostname, consolehost, '/dev/cuaD0.' || (consoleport-1) consoleport
        from host where consolehost='aalp01';
    CREATE VIEW consolemap1b as
      select hostname hostname, consolehost consolehost, '/dev/cuaD' ||
             substr('01',1+((consoleport-1)/16),1) ||
             substr('0123456789abcdef',1+((consoleport-1)%16),1) consoleport
        from host where consolehost='aalp03';
    CREATE VIEW consolemap1 as
      select * from consolemap1a
      union
      select * from consolemap1b;
    SELECT * from consolemap1b
;SELECT * FROM consolemap1;