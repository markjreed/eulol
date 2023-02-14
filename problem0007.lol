BTW Project Euler problem 7
BTW Find the 10,001st prime number
HAI 1.3

BTW Sieve of Eratosthenes
I HAS A Max ITZ 105000
I HAS A Goal ITZ 10001
I HAS A Sieve ITZ A BUKKIT

BTW initialize sieve to all true
IM IN YR Init UPPIN YR i WILE DIFFRINT i AN Max
  Sieve HAS A SRS i ITZ WIN
IM OUTTA YR Init
Sieve'Z SRS 0 R FAIL
Sieve'Z SRS 1 R FAIL

I HAS A PrimeCount ITZ 0
I HAS A p ITZ 2

IM IN YR Main
  PrimeCount R SUM OF PrimeCount AN 1
  BOTH SAEM PrimeCount AN Goal, O RLY?
    YA RLY
      VISIBLE p
      GTFO
  OIC

  I HAS A m ITZ p
  IM IN YR CrossOut
     m R SUM OF m AN p
     BOTH SAEM m AN BIGGR OF m AN Max, O RLY?
       YA RLY
         GTFO
       NO WAI
         Sieve'Z SRS m R FAIL
     OIC
  IM OUTTA YR CrossOut

  p R SUM OF p AN 1
  IM IN YR NextPrime UPPIN YR Dummy WILE BOTH OF NOT Sieve'Z SRS p AN BOTH SAEM p AN SMALLR OF p AN Max
    p R SUM OF p AN 1
  IM OUTTA YR NextPrime
IM OUTTA YR Main
KTHXBYE
