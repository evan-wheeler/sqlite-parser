-- original: collate6.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE collate6log(a, b);
    CREATE TABLE collate6tab(a COLLATE NOCASE, b COLLATE BINARY)
;CREATE TRIGGER collate6trig BEFORE INSERT ON collate6tab 
      WHEN new.a = 'a' BEGIN
        INSERT INTO collate6log VALUES(new.a, new.b);
    END
;INSERT INTO collate6tab VALUES('a', 'b');
    SELECT * FROM collate6log
;INSERT INTO collate6tab VALUES('A', 'B');
    SELECT * FROM collate6log
;DROP TRIGGER collate6trig;
    DELETE FROM collate6log
;CREATE TRIGGER collate6trig BEFORE INSERT ON collate6tab BEGIN
      INSERT INTO collate6log VALUES(new.a='a', new.b='b');
    END
;INSERT INTO collate6tab VALUES('a', 'b');
    SELECT * FROM collate6log
;INSERT INTO collate6tab VALUES('A', 'B');
    SELECT * FROM collate6log
;DROP TRIGGER collate6trig;
    DELETE FROM collate6log
;DROP TABLE collate6tab
;CREATE TABLE abc(a COLLATE binary, b, c);
    CREATE TABLE def(a, b, c);
    CREATE TRIGGER abc_t1 AFTER INSERT ON abc BEGIN
      INSERT INTO def SELECT * FROM abc WHERE a < new.a COLLATE nocase;
    END
;INSERT INTO abc VALUES('One', 'Two', 'Three');
    INSERT INTO abc VALUES('one', 'two', 'three');
    SELECT * FROM def
;UPDATE abc SET a = 'four' WHERE a = 'one';
    CREATE TRIGGER abc_t2 AFTER UPDATE ON abc BEGIN
      INSERT INTO def SELECT * FROM abc WHERE a < new.a COLLATE nocase;
    END;
    SELECT * FROM def
;SELECT 1 FROM sqlite_master WHERE name COLLATE nocase = 'hello'
;SELECT 1 FROM sqlite_master WHERE 'hello' = name COLLATE nocase;