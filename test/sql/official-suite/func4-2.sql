-- original: func4.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

SELECT toreal(9007199254740992 - 1)
;SELECT toreal(9007199254740992)
;SELECT toreal(9007199254740992 + 1)
;SELECT toreal(9007199254740992 + 2)
;SELECT toreal(tointeger(9223372036854775808) - 1)
;SELECT toreal(tointeger(9223372036854775808))
;SELECT toreal(tointeger(9223372036854775808) + 1)
;SELECT toreal(tointeger(18446744073709551616) - 1)
;SELECT toreal(tointeger(18446744073709551616))
;SELECT toreal(tointeger(18446744073709551616) + 1)
;CREATE TABLE t1(
      x INTEGER CHECK(tointeger(x) IS NOT NULL)
    )
;SELECT x FROM t1 ORDER BY x
;CREATE TABLE t2(
        x REAL CHECK(toreal(x) IS NOT NULL)
      )
;SELECT x FROM t2 ORDER BY x
;SELECT tointeger(toreal('1234'))
;SELECT tointeger(toreal(-1))
;SELECT tointeger(toreal(-0))
;SELECT tointeger(toreal(0))
;SELECT tointeger(toreal(1))
;SELECT tointeger(toreal(-9223372036854775808 - 1))
;SELECT tointeger(toreal(-9223372036854775808))
;SELECT tointeger(toreal(-9223372036854775808 + 1))
;SELECT tointeger(toreal(-2147483648 - 1))
;SELECT tointeger(toreal(-2147483648))
;SELECT tointeger(toreal(-2147483648 + 1))
;SELECT tointeger(toreal(2147483647 - 1))
;SELECT tointeger(toreal(2147483647))
;SELECT tointeger(toreal(2147483647 + 1))
;SELECT tointeger(toreal(9223372036854775807 - 1))
;SELECT tointeger(toreal(9223372036854775807))
;SELECT tointeger(toreal(9223372036854775807 + 1))
;SELECT tointeger(toreal(4503599627370496 - 1))
;SELECT tointeger(toreal(4503599627370496))
;SELECT tointeger(toreal(4503599627370496 + 1))
;SELECT tointeger(toreal(9007199254740992 - 1))
;SELECT tointeger(toreal(9007199254740992))
;SELECT tointeger(toreal(9007199254740992 + 1))
;SELECT tointeger(toreal(9007199254740992 + 2))
;SELECT tointeger(toreal(9223372036854775808 - 1))
;SELECT tointeger(toreal(9223372036854775808))
;SELECT tointeger(toreal(9223372036854775808 + 1))
;SELECT tointeger(toreal(18446744073709551616 - 1))
;SELECT tointeger(toreal(18446744073709551616))
;SELECT tointeger(toreal(18446744073709551616 + 1))
;SELECT tointeger(x'0102030405060708')
;SELECT tointeger(x'0807060504030201')
;SELECT toreal(x'ffefffffffffffff')
;SELECT toreal(x'8010000000000000')
;SELECT toreal(x'c000000000000000')
;SELECT toreal(x'bff0000000000000')
;SELECT toreal(x'8000000000000000')
;SELECT toreal(x'0000000000000000')
;SELECT toreal(x'3ff0000000000000')
;SELECT toreal(x'4000000000000000')
;SELECT toreal(x'0010000000000000')
;SELECT toreal(x'7fefffffffffffff')
;SELECT toreal(x'8000000000000001')
;SELECT toreal(x'800fffffffffffff')
;SELECT toreal(x'0000000000000001')
;SELECT toreal(x'000fffffffffffff')
;SELECT toreal(x'fff0000000000000')
;SELECT toreal(x'7ff0000000000000')
;SELECT toreal(x'fff8000000000000')
;SELECT toreal(x'fff0000000000001')
;SELECT toreal(x'fff7ffffffffffff')
;SELECT toreal(x'7ff0000000000001')
;SELECT toreal(x'7ff7ffffffffffff')
;SELECT toreal(x'fff8000000000001')
;SELECT toreal(x'ffffffffffffffff')
;SELECT toreal(x'7ff8000000000000')
;SELECT toreal(x'7fffffffffffffff');