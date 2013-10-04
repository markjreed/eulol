BTW Project Euler problem 5 
BTW Find the smallest positive integer that is 
BTW divisible by all of the natural numbers from 1 to 20

BTW No need to brute force this.  It will be the product of all the prime
BTW factors of all the numbers in the target range.

HAI 1.3

BTW A structured BUKKIT representing a prime factor, Base^Exponent.
HOW IZ I NewPrimeFaktor YR Prime AN YR Power
  I HAS A PrimeFaktor ITZ A BUKKIT
  PrimeFaktor HAS A Base ITZ Prime
  PrimeFaktor HAS A Exponent ITZ Power
  FOUND YR PrimeFaktor
IF U SAY SO

BTW A simple List implementation.  Constructor
HOW IZ I NewList
  I HAS A List ITZ A BUKKIT
  List HAS A Length ITZ 0
  FOUND YR List
IF U SAY SO

BTW List Append
HOW IZ I Push YR List AN YR Item 
  List HAS A SRS List'Z Length ITZ Item
  List'Z Length R SUM OF 1 AN List'Z Length
IF U SAY SO

BTW Return first item of List or FAIL if list is empty
HOW IZ I First YR List 
  BOTH SAEM 0 AN BIGGR OF 0 AN List'Z Length
  O RLY?
    YA RLY
      FOUND YR FAIL
    NO WAI
      FOUND YR List'Z SRS 0
  OIC
IF U SAY SO

BTW Return last item of List or FAIL if list is empty
HOW IZ I Last YR List 
  BOTH SAEM 0 AN BIGGR OF 0 AN List'Z Length
  O RLY?
    YA RLY
      FOUND YR FAIL
    NO WAI
      FOUND YR List'Z SRS DIFFRENCE OF List'Z Length AN 1
  OIC
IF U SAY SO

BTW Return and remove last item of List; FAIL if list is empty
HOW IZ I Pop YR List
  I HAS A Result ITZ List'Z Last
  DIFFRINT Result AN FAIL
  O RLY?
    YA RLY
      List'Z Length R DIFFERENCE OF List'Z Length AN 1
  OIC
  FOUND YR Result
IF U SAY SO

BTW Find prime factors of a number in the form of PrimeFactor objects
HOW IZ I Faktor YR Num
  I HAS A Faktors ITZ I IZ NewList MKAY
  I HAS A Divizer ITZ 2
  IM IN YR Loop 
    BOTH SAEM 1 AN BIGGR OF Num AN 1 
    O RLY?
      YA RLY
        GTFO
    OIC

    BOTH SAEM 0 AN MOD OF Num AN Divizer 
    O RLY? 
      YA RLY
        I HAS A Latest ITZ I IZ Last YR Faktors MKAY
        BOTH SAEM Latest AN FAIL
        O RLY?
          YA RLY
            Latest R I IZ NewPrimeFaktor YR Divizer AN YR 0 MKAY
            I IZ Push YR Faktors AN YR Latest MKAY
        OIC
        BOTH SAEM Latest'Z Base AN Divizer
          O RLY?
            YA RLY
              Latest'Z Exponent R SUM OF Latest'Z Exponent AN 1
        OIC
        Num R QUOSHUNT OF Num AN Divizer
      NO WAI
        Divizer R SUM OF Divizer AN 1
    OIC
  IM OUTTA YR Loop
  FOUND YR Faktors
IF U SAY SO

BTW Check to see if a Factor with the same Base is in the given List
HOW IZ I FindFaktor YR List AN YR Faktor
  IM IN YR Loop UPPIN YR Index WILE DIFFRINT Index AN List'Z Length
    I HAS A Item ITZ List'Z SRS Index
    BOTH SAEM Item'Z Base AN Faktor'Z Base
    O RLY? 
      YA RLY
        FOUND YR Item
    OIC
  IM OUTTA YR Loop
  FOUND YR FAIL
IF U SAY SO

BTW Build the factorization of all the numbers from 1-20 with the
BTW highest exponent found for each base.
I HAS A Result ITZ I IZ NewList MKAY
IM IN YR Outer UPPIN YR Number WILE DIFFRINT Number AN 20
  I HAS A Faktors ITZ I IZ Faktor YR Number MKAY
  IM IN YR Inner UPPIN YR Index WILE DIFFRINT Index AN Faktors'Z Length
    I HAS A Faktor ITZ Faktors'Z SRS Index
    I HAS A Found ITZ I IZ FindFaktor YR Result AN YR Faktor MKAY
    BOTH SAEM Found AN FAIL 
    O RLY?
      YA RLY
        I IZ Push YR Result AN YR Faktor MKAY
      NO WAI
        Found'Z Exponent R BIGGR OF Found'Z Exponent AN Faktor'Z Exponent
    OIC
  IM OUTTA YR Inner
IM OUTTA YR Outer
    
BTW Multiply the result together
I HAS A Produkt ITZ 1
IM IN YR Outer UPPIN YR Index WILE DIFFRINT Index AN Result'Z Length
  I HAS A Faktor ITZ Result'Z SRS Index
  IM IN YR Inner UPPIN YR Power WILE DIFFRINT Power AN Faktor'Z Exponent
    Produkt R PRODUKT OF Produkt AN Faktor'Z Base
  IM OUTTA YR Inner
IM OUTTA YR Outer

VISIBLE Produkt
KTHXBYE
