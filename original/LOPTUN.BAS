DECLARE SUB playsfx (sfx$)
DIM SHARED c$(8)
c$(0) = "&hB0&h20&h23&h40&h43&h60&h63&h80&h83&hA0&HBD&HC0&HE0&HE3&hB0"
c$(1) = "&hB1&h21&h24&h41&h44&h61&h64&h81&h84&hA1&HBD&HC1&HE1&HE4&hB1"
c$(2) = "&hB2&h22&h25&h42&h45&h62&h65&h82&h85&hA2&HBD&HC2&HE2&HE5&hB2"
c$(3) = "&hB3&h28&h2B&h48&h4B&h68&h6B&h88&h8B&hA3&HBD&HC3&HE8&HEB&hB3"
c$(4) = "&hB4&h29&h2C&h49&h4C&h69&h6C&h89&h8C&hA4&HBD&HC4&HE9&HEC&hB4"
c$(5) = "&hB5&h2A&h2D&h4A&h4D&h6A&h6D&h8A&h8D&hA5&HBD&HC5&HEA&HED&hB5"
c$(6) = "&hB6&h30&h33&h50&h53&h70&h73&h90&h93&hA6&HBD&HC6&HF0&HF3&hB6"
c$(7) = "&hB7&h31&h34&h51&h54&h71&h74&h91&h94&hA7&HBD&HC7&HF1&HF4&hB7"
c$(8) = "&hB8&h32&h35&h52&h55&h72&h75&h92&h95&hA8&HBD&HC8&HF2&HF5&hB8"
DIM sfx$(25)
OPEN "sound.sfx" FOR INPUT AS #1
FOR sfxnum% = 0 TO 25
INPUT #1, sfx$(sfxnum%)
NEXT
CLOSE #1
SCREEN 7
PSET (60, 90): DRAW "c15u22C14FD21GHU21EUC12F2D21G2H2U21E2UC4F3D21G3H3U21E3"
PSET (90, 90): DRAW "c15U22C14FD21GHU21EUC12F2D21G2H2U21E2UC4F3D21G3H3U21E3"
PSET (91, 92): DRAW "c15H22C14rf21dlh21uhC12r2f21d2l2h21u2hC4r3f21d3l3h21u3"
PSET (121, 90): DRAW "c15U22C14FD21GHU21EUC12F2D21G2H2U21E2UC4F3D21G3H3U21E3 "
PSET (100, 90): DRAW "c15r22C14gl21her21frC12g2l21h2e2r21f2rC4g3l21h3e3r21f3"
PSET (100, 90): DRAW "c15U22C14FD21GHU21EUC12F2D21G2H2U21E2UC4F3D21G3H3U21E3 "
PSET (100, 68): DRAW "c15r22C14gl21her21frC12g2l21h2e2r21f2rC4g3l21h3e3r21f3"
PSET (201, 90): DRAW "c15U22C14FD21GHU21EUC12F2D21G2H2U21E2UC4F3D21G3H3U21E3 "
PSET (180, 90): DRAW "c15r22C14gl21her21frC12g2l21h2e2r21f2rC4g3l21h3e3r21f3"
PSET (180, 90): DRAW "c15U22C14FD21GHU21EUC12F2D21G2H2U21E2UC4F3D21G3H3U21E3 "
PSET (180, 68): DRAW "c15r22C14gl21her21frC12g2l21h2e2r21f2rC4g3l21h3e3r21f3"
PSET (211, 90): DRAW "c15U22C14FD21GHU21EUC12F2D21G2H2U21E2UC4F3D21G3H3U21E3 "
PSET (211, 68): DRAW "c15r22C14gl21her21frC12g2l21h2e2r21f2rC4g3l21h3e3r21f3"
PSET (211, 80): DRAW "c15r22C14gl21her21frC12g2l21h2e2r21f2rC4g3l21h3e3r21f3"
PSET (251, 90): DRAW "c15U22C14FD21GHU21EUC12F2D21G2H2U21E2UC4F3D21G3H3U21E3 "
PSET (241, 68): DRAW "c15r22C14gl21her21frC12g2l21h2e2r21f2rC4g3l21h3e3r21f3"
PSET (50, 100): DRAW "C7R100U41R121C3UL122D41L100D2R102U41R121C9U3L124D41L100D4R104U41R121C1U5L126D41L100D6R106U41R120"
PSET (10, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (130, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (290, 180): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (20, 180): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
21 PALETTE 4, 0: PALETTE 12, 4: PALETTE 14, 12: PALETTE 15, 14: sfxnum% = 1: playsfx sfx$(sfxnum%): PLAY "p30"
PALETTE 4, 0: PALETTE 12, 0: PALETTE 14, 4: PALETTE 15, 12: PLAY "p30"
PALETTE 4, 0: PALETTE 12, 0: PALETTE 14, 0: PALETTE 15, 4: PLAY "p30"
PALETTE 4, 0: PALETTE 12, 0: PALETTE 14, 4: PALETTE 15, 12: PLAY "p30"
PALETTE 4, 0: PALETTE 12, 4: PALETTE 14, 12: PALETTE 15, 14: PLAY "p30"
PALETTE 4, 4: PALETTE 12, 12: PALETTE 14, 14: PALETTE 15, 15: PLAY "p30"
i$ = INKEY$: IF i$ = "" THEN 21
SCREEN 13
1
CLS
h = 220
PSET (10, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (60, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (250, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 70): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (20, 80): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
sfxnum% = 5: playsfx sfx$(sfxnum%)
52
PSET (110, h): DRAW "c0d10r10br2u10r10d10l10br12u10r10d5l10d5br17u10l5r10br2d10r10u10br2d10u10f10u10"
h = h - 1
PSET (110, h): DRAW "c1d10r10br2u10r10d10l10br12u10r10d5l10d5br17u10l5r10br2d10r10u10br2d10u10f10u10"
PLAY "p60"
IF h > 10 THEN 52
sfxnum% = 25: playsfx sfx$(sfxnum%)
sfxnum% = 22: playsfx sfx$(sfxnum%)
LOCATE 5, 12: COLOR 9: PRINT " Chapitre -  I"
LOCATE 6, 11: COLOR 1: PRINT "Le combat de Kane"
c = 16
53
LOCATE 9, 10: COLOR c: PRINT "par Ivorra Benjamin"
PLAY "p20"
c = c + 1: IF c < 30 THEN 53
LOCATE 22: COLOR 15: PRINT " 'Q' Quitter    ou '5' commencer !"
LOCATE 23: COLOR 15: PRINT " 'C' continuer  ou 'E' erase partie !"
54
i$ = INKEY$: IF i$ = "Q" OR i$ = "q" THEN SYSTEM
IF i$ = "5" THEN 55
IF i$ = "C" OR i$ = "c" THEN 100
IF i$ = "E" OR i$ = "e" THEN 200
GOTO 54
55
CLS
sfxnum% = 3: playsfx sfx$(sfxnum%)
COLOR 2: LOCATE 2: PRINT "Haut/Gauche + Touche 5 "
1053 : m = STICK(0): N = STICK(1): COLOR 4: LOCATE 10, 10: PRINT m; " "; N; "  "
i$ = INKEY$: IF i$ = "5" THEN 1055
GOTO 1053
1055
ho = m + 10: ha = N
sfxnum% = 3: playsfx sfx$(sfxnum%)
COLOR 2: LOCATE 3: PRINT "Bas/Droite + Touche 6"
1056 : m = STICK(0): N = STICK(1): COLOR 4: LOCATE 10, 10: PRINT m; " "; N; "  "
i$ = INKEY$: IF i$ = "6" THEN 1057
GOTO 1056
1057
bo = m - 10: ba = N
OPEN "joy.map" FOR BINARY AS 1
PUT 1, 3, ha
PUT 1, 13, bo
PUT 1, 23, ba
PUT 1, 33, ho
CLOSE
RUN "ac1.bas"
100
OPEN "joy.map" FOR BINARY AS 1
GET 1, 44, la
GET 1, 42, lb
GET 1, 40, lc
IF la = 1 THEN RUN "AC4.bas"
IF lb = 1 THEN RUN "AC3.bas"
IF lc = 1 THEN RUN "AC2.bas"
CLOSE
GOTO 55
200
l = 0
sfxnum% = 12: playsfx sfx$(sfxnum%)
OPEN "joy.map" FOR BINARY AS 1
PUT 1, 44, l
PUT 1, 42, l
PUT 1, 40, l
LOCATE 10, 10: COLOR 4: PRINT "    Erase partie !": PLAY "p3p60"
CLOSE
GOTO 1

SUB playsfx (sfx$)
chan% = VAL(MID$(sfx$, 61, 4))
FOR in = 1 TO 60 STEP 4
  reg$ = MID$(c$(chan%), in, 4): reg% = VAL(reg$)
  dat$ = MID$(sfx$, in, 4): dat% = VAL(dat$)
  OUT &H388, reg%: FOR d% = 1 TO 6: b% = INP(&H388): NEXT
  OUT &H389, dat%: FOR d% = 1 TO 35: b% = INP(&H388): NEXT
NEXT

END SUB

