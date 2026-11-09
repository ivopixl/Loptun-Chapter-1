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
SCREEN 13
0
REM MARCHE
av1$ = "c6r5url2l4ubr3udlc1lurc1l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar1$ = "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc15lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
av2$ = "c6r5url2l4ubr3udlc1lurc1e7lg7le7r3c1f7rh7rf8c6ud2l3udr4rldl4bu11bl9c6r4dc1uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar2$ = "c6l5ulr2r4ubl3udrc1rulc1h7rf7rh7l3c1g7le7lg8c6ud2r3udl4lrdr4bu11br9c6l4dc1uc6l0uc15lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
pa$ = "c6r5url2l4ubr3udlc2lurc1l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dl"
99
a$ = "REGARDER"
compt = 3000
y = 169
x = 100
ch = 1
taxi = 0
ts = 1
retr = 100
ro = 0
ronny = 0
cartid = 0
med = 0
lp = 0
lro = 0
OPEN "joy.map" FOR BINARY AS 1
GET 1, 3, hr
GET 1, 13, ga
GET 1, 23, ha
GET 1, 33, gr
nive = 1
PUT 1, 44, nive
ha = ha - 15: hr = hr + 15
ga = ga - 15: gr = gr + 15
CLOSE
CLS
GOTO 100
55
x = 10
4
CLS
PSET (70, 169): DRAW "c4r5url2c15l4ubr3udlc20lurc1l2ur3ul3ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc1rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc44r4lul4d5ldu5"
PSET (50, 169): DRAW "c4r5url2c15l4ubr3udlc20lurc2l2ur3ul3ur3l3r3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc1rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc151r4lul4d5ldu5"
PSET (160, 169): DRAW "c1l5ulr2c15r4ubl3udrc1rulc9r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc9uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd8c66r3url5ur5lul3bu6br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5c15bd5bl6g"
PSET (190, 169): DRAW "c1l5ulr2c15r4ubl3udrc1rulc9r2l3ur3ul3ur2ul2ur3ul3ur3uc6l4dc9uc6l0uc40lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd8c66r3url5ur5lul3bu6br2rulul3ulr4ul3c15urc66r2uc115l4rur4d5rdu5"
PSET (130, 169): DRAW av1$
PSET (0, 170): DRAW "c8r360"
LOCATE 1
PRINT "De retour sur terre Kane reprend contact avec le groupe de r‚sistant ."
PLAY "p1p60"
5
i$ = INKEY$: IF i$ = "" THEN 5
LOCATE 1
PRINT "                                                                          "
COLOR 12
LOCATE 23
PRINT "Heureux de te revoir parmis-nous Kane !"
PLAY "p3p60"
6
i$ = INKEY$: IF i$ = "" THEN 6
LOCATE 23
PRINT "Nous allons lancer l'assault final vers"
PLAY "p3p60"
7
i$ = INKEY$: IF i$ = "" THEN 7
LOCATE 23
PRINT "la libert‚ : Ecoute notre plan ...     "
PLAY "p3p60"
8
i$ = INKEY$: IF i$ = "" THEN 8
CLS
PRINT "Aristo va prononcer un discours avec tous les chefs de son parti . Nous nous serons engag‚s comme serveurs . Nous n'aurons qu'une chance , il faudra l'abattre ! Tu marche ?"
PLAY "p1p1p60"
COLOR 15
PRINT "On vas lui ouvrir ses entrailles … ce   sale faschiste !"
PLAY "p3p60"
9
i$ = INKEY$: IF i$ = "" THEN 9
CLS
PSET (70, 169): DRAW "c4r5url2c15l4ubr3udlc20lurc1l2ur3ul3ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc1rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc44r4lul4d5ldu5"
PSET (50, 169): DRAW "c4r5url2c15l4ubr3udlc20lurc2l2ur3ul3ur3l3r3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc1rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc151r4lul4d5ldu5"
PSET (160, 169): DRAW "c1l5ulr2c15r4ubl3udrc1rulc9r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc9uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd8c66r3url5ur5lul3bu6br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5c15bd5bl6g"
PSET (190, 169): DRAW "c1l5ulr2c15r4ubl3udrc1rulc9r2l3ur3ul3ur2ul2ur3ul3ur3uc6l4dc9uc6l0uc40lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd8c66r3url5ur5lul3bu6br2rulul3ulr4ul3c15urc66r2uc115l4rur4d5rdu5"
PSET (130, 169): DRAW av1$
PSET (0, 170): DRAW "c8r360"
PLAY "p3p60"
LOCATE 13: COLOR 44: PRINT "            Vive l'Anarchie !"
sfxnum% = 12: playsfx sfx$(sfxnum%): PLAY "p10p60"
10
i$ = INKEY$: IF i$ = "" THEN 10
CLS
COLOR 15
PRINT "Le soir venu , lors du discour :"
11
i$ = INKEY$: IF i$ = "" THEN 11
CLS
1
CLS
x = 10
2
PSET (x, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
x = x + 20
IF x > 320 THEN 3
GOTO 2
3
PSET (152, 135): DRAW "c6l4uc8u7rd7ru7rd7ru7rc7d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc8l4gd4rbr3ru4h2rl3dlbd13bl7c66l5r2ur3br18r3dr2l5"
PSET (0, 170): DRAW "c7r320l140uc6u5l10u10e10u10l60d10f10d10l10d5r60bh15p6,6bf15bu35bl20c4d30l20u30r20bgp4,4": CIRCLE (150, 150), 5, 15: PAINT (150, 150), 15: PSET (150, 150): DRAW "c0h2f4h2d3u6"
LOCATE 1: COLOR 15: PRINT "Mes cher amis ! Le mouvement r‚sistant sera bient“t d‚truit ! Et notre pouvoir sera infini ! Vive le parti des Bourges !"
PLAY "p1p60"
12
i$ = INKEY$: IF i$ = "" THEN 12
CLS
av1$ = "c6r5url2l4ubr3udlc4lurc4l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc4uc6r0uc4rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar1$ = "c6l5ulr2r4ubl3udrc4rulc4r2ul3ur3ul3ur2ul2ur3ul3ur3uc15l4dc4uc6l0uc4lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
av2$ = "c6r5url2l4ubr3udlc4lurc4e7lg7le7r3c4f7rh7rf8c6ud2l3udr4rldl4bu11bl9c15r4dc4uc15r0uc4rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar2$ = "c6l5ulr2r4ubl3udrc4rulc4h7rf7rh7l3c4g7le7lg8c6ud2r3udl4lrdr4bu11br9c15l4dc4uc15l0uc4lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
PSET (0, 170): DRAW "c8r360"
PSET (150, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2ur3ul3ur3ul3r3ul2ur2ul3ur3ul3uc15r4dc4uc6r0uc4rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc44r4lul4d5ldu5"
PSET (200, y): DRAW av1$ + "bd6br10c66r3ldl2u3drc7r5ur7l15"
LOCATE 23: COLOR 12: PRINT "            Ne le rate pas !"
13
i$ = INKEY$: IF i$ = "" THEN 13
14
CLS
15
CLS
x = 10
16
PSET (x, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
x = x + 20
IF x > 320 THEN 17
GOTO 16
17
PSET (152, 135): DRAW "c6l4uc8u7rd7ru7rd7ru7rc7d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc8l4gd4rbr3ru4h2rl3dlbd13bl7c66l5r2ur3br18r3dr2l5"
PSET (0, 170): DRAW "c7r320l140uc6u5l10u10e10u10l60d10f10d10l10d5r60bh15p6,6bf15bu35bl20c4d30l20u30r20bgp4,4": CIRCLE (150, 150), 5, 15: PAINT (150, 150), 15: PSET (150, 150): DRAW "c0h2f4h2d3u6"
x = 10: a = 5
18
IF x < 10 OR x > 300 THEN 20
PSET (x, 80): DRAW "c0d2"
x = x + a: a = a + .5
PSET (x, 80): DRAW "c44d2"
PLAY "p64"
i$ = INKEY$: IF STRIG(0) THEN 19
GOTO 18
19
PSET (x, 200): DRAW "c12u80"
sfxnum% = 13: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (x, 120), 10, 43: PAINT (x, 120), 44, 43
sfxnum% = 4: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (x, 120), 10, 0: PAINT (x, 120), 0, 0
IF x < 140 OR x > 160 THEN 20
ra = 0
GOTO 21
20 ra = 1
21
CLS
PSET (0, 170): DRAW "c8r360"
PSET (150, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2ur3ul3ur3ul3r3ul2ur2ul3ur3ul3uc15r4dc4uc6r0uc4rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc44r4lul4d5ldu5"
PSET (200, y): DRAW av1$ + "bd6br10c66r3ldl2u3drc7r5ur7l15"
IF ra = 0 THEN LOCATE 23: COLOR 12: PRINT "            Bien jou‚ !"
IF ch <= 0 THEN 30
IF ra = 1 THEN LOCATE 23: COLOR 12: PRINT "        Vite ! recommence !": ch = ch - 1:
22
i$ = INKEY$: IF i$ = "" THEN 22
IF ra = 1 THEN GOTO 15
GOTO 40
30
CLS
PSET (0, 170): DRAW "c8r360"
PSET (150, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2ur3ul3ur3ul3r3ul2ur2ul3ur3ul3uc15r4dc4uc6r0uc4rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc44r4lul4d5ldu5"
PSET (200, y): DRAW av1$
PSET (320, 150): DRAW "c12l120"
sfxnum% = 21: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (200, 150), 20, 44: PAINT (200, 150), 44
sfxnum% = 4: playsfx sfx$(sfxnm%): PLAY "p10p60"
LOCATE 23: COLOR 12: PRINT "              Trops tard !"
PLAY "p1p60"
CLS
COLOR 15: PRINT "Vous avez ‚t‚ captur‚ ! Recommencez !"
PLAY "p1p1p1p10"
GOTO 4
40
PLAY "p1p60"
41
CLS
x = 10
42
PSET (x, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
x = x + 20
IF x > 320 THEN 43
GOTO 42
43
PSET (152, 135): DRAW "c6l4uc17u7rd7ru7rd7ru7rc18d7ru7drd6ru6bl12d6ru6rud7ru7c22br4bulurur2l4ur4ulc44udlc22lc44udlc22u2r2dur2duc7l4gd4rbr3ru4h2rl3dlbd13bl7c22l5r2ur3br18r3dr2l5"
PSET (0, 170): DRAW "c7r320l140uc6u5l10u10e10u10l60d10f10d10l10d5r60bh15p6,6bf15bu35bl20c4d30l20u30r20bgp4,4": CIRCLE (150, 150), 5, 15: PAINT (150, 150), 15: PSET (150, 150): DRAW "c0h2f4h2d3u6"
LOCATE 10
COLOR 12
PRINT "   Kane regarde : C'est un cyborg !"
sfxnum% = 5: playsfx sfx$(sfxnum%)
44
i$ = INKEY$: IF i$ = "" THEN 44
LOCATE 10
COLOR 8
PRINT "       Capturez ces rebelles !     "
sfxnum% = 6: playsfx sfx$(sfxnum%): PLAY "p10p60"
45
i$ = INKEY$: IF i$ = "" THEN 45
CLS
PSET (0, 170): DRAW "c8r360"
PSET (100, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2ur3ul3ur3ul3r3ul2ur2ul3ur3ul3uc15r4dc4uc6r0uc4rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc44r4lul4d5ldu5"
PSET (150, y): DRAW av1$
PSET (10, 169): DRAW "c6r5url2c6l4ubr3udlc20lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c14ulc66l2uc44r4lul4d5ldu5"
PSET (30, 169): DRAW "c6r5url2c6l4ubr3udlc20lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c14ulc66l2uc155r4lul4d5ldu5"
PSET (60, 169): DRAW "c6r5url2c6l4ubr3udlc20lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c14ulc66l2uc6r4lul4d5ldu5" + "bd6br10c66r3ldl2u3drc7r5ur7l15"
PSET (190, 169): DRAW "c6l5ulr2r4ubl3udrc8rul1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc8uc6l0uc17lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c8r3url5ur5lul3bu3br2rulul3ulr4ul3c44urc8r2uc7l4rur4d5rdu5"
LOCATE 15
COLOR 8
PRINT "      Alors on fait moins les malins ?     "
46
i$ = INKEY$: IF i$ = "" THEN 46
LOCATE 15
COLOR 8
PRINT "Sachez sales humains que votre race sera d‚truite !"
47
i$ = INKEY$: IF i$ = "" THEN 47
LOCATE 15
COLOR 8
PRINT "Votre chef Hoara est entre nos mains !   Et vous vous serez ex‚cut‚s demain !"
48
i$ = INKEY$: IF i$ = "" THEN 48
CLS
50
COLOR 44
sfxnum% = 5: playsfx sfx$(sfxnum%): PLAY "p10p60"
PRINT "Cela semble ˆtre la fin de ce chapitre . Kane captur‚ que fera l'humanit‚ ?"
PRINT "Le combat n'est pourtant pas fini ! La  lutte continuera dans le prochain        chapitre de :"
51
i$ = INKEY$: IF i$ = "" THEN 51
CLS
h = 220
PSET (10, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (60, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (250, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 70): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (20, 80): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
sfxnum% = 24: playsfx sfx$(sfxnum%): PLAY "p10p60"
52
PSET (110, h): DRAW "c0d10r10br2u10r10d10l10br12u10r10d5l10d5br17u10l5r10br2d10r10u10br2d10u10f10u10"
h = h - 1
PSET (110, h): DRAW "c1d10r10br2u10r10d10l10br12u10r10d5l10d5br17u10l5r10br2d10r10u10br2d10u10f10u10"
PLAY "p60"
IF h > 10 THEN 52
sfxnum% = 25: playsfx sfx$(sfxnum%): PLAY "p10p60"
sfxnum% = 22: playsfx sfx$(sfxnum%): PLAY "p10p60"
LOCATE 5, 12: COLOR 9: PRINT " Chapitre - II"
LOCATE 6, 11: COLOR 1: PRINT "La lutte de Rhama"
c = 16
53
LOCATE 9, 10: COLOR c: PRINT "par Ivorra Benjamin"
PLAY "p20"
c = c + 1: IF c < 30 THEN 53
54
i$ = INKEY$: IF i$ = "" THEN 54
CLS
RUN "loptun.bas"
100
CLS
PSET (0, 170): DRAW "c7r320bu100l320bdp17,7"
PSET (150, 169): DRAW av1$
PSET (190, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc40lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c65r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc65r2uc8l4rur4d5rdu5"
PSET (15, 169): DRAW "c0u60r60d60l60rbup20,0"
PSET (20, 120): DRAW "c1r50fd30gl50hu30bfp9,1"
LOCATE 1: COLOR 7: PRINT "Ecoute … cause de l'arm‚e mes hommes ont fuit ! Il me faut quelqu'un au commande de l'ordinateur central !"
COLOR 15: PRINT "O.K ! J'y vais !"
101
i$ = INKEY$: IF i$ = "" THEN 101
102
CLS
PAINT (1, 1), 54
COLOR 2
LOCATE 2, 6: PRINT "Starup .... Clean Hard-Ware ! "
LOCATE 3, 13: PRINT "Mem : 59000 Go"
PRINT
PRINT "      Programmateur de trajectoire      "
COLOR 10
PRINT "      +/- rotation     4/6 changer      "
c1 = 4: c2 = 4: c3 = 4
ta1 = 45: ta2 = 182: ta3 = 255
ch = 1
tmps = TIMER
COLOR 9
LOCATE 7: PRINT "    Temps avant hyper espace :"; 60 - INT(tmps - TIMER); "     "
CIRCLE (160, 120), 20, 6: PAINT (160, 120), 115, 6
PSET (160, 80): DRAW "c" + STR$(c1) + "ta" + STR$(ta1) + "u10d12hfe"
PSET (120, 120): DRAW "c" + STR$(c2) + "ta" + STR$(ta2) + "u10d12hfe"
PSET (210, 120): DRAW "c" + STR$(c3) + "ta" + STR$(ta3) + "u10d12hfe"
COLOR 9
103
LOCATE 7: PRINT "    Temps avant hyper espace :"; 35 - INT(TIMER - tmps); "      "
i$ = INKEY$
IF i$ = "E" THEN RUN "loptun.bas"
IF i$ = "6" THEN 120
IF i$ = "4" THEN 121
IF i$ = "+" THEN 125
IF i$ = "-" THEN 126
IF c1 = 44 AND c2 = 44 AND c3 = 44 THEN 300
IF 35 - INT(TIMER - tmps) < 0 THEN 314
GOTO 103
120
IF ch = 1 THEN ch = 3: GOTO 103
IF ch = 3 THEN ch = 2: GOTO 103
IF ch = 2 THEN ch = 1: GOTO 103
121
IF ch = 1 THEN ch = 2: GOTO 103
IF ch = 2 THEN ch = 3: GOTO 103
IF ch = 3 THEN ch = 1: GOTO 103
125
c1 = 4: c2 = 4: c3 = 4
PSET (160, 80): DRAW "c54ta" + STR$(ta1) + "u10d12hfe"
PSET (120, 120): DRAW "c54ta" + STR$(ta2) + "u10d12hfe"
PSET (210, 120): DRAW "c54ta" + STR$(ta3) + "u10d12hfe"
IF ch = 1 THEN ta1 = ta1 + 1
IF ta1 > 360 THEN ta1 = 360
IF ch = 2 THEN ta2 = ta2 + 1
IF ta2 > 360 THEN ta2 = 360
IF ch = 3 THEN ta3 = ta3 + 1
IF ta3 > 360 THEN ta3 = 360
IF ta1 = 0 OR ta1 = 360 THEN c1 = 44
IF ta3 = 270 THEN c3 = 44
IF ta2 = 90 THEN c2 = 44
PSET (160, 80): DRAW "c" + STR$(c1) + "ta" + STR$(ta1) + "u10d12hfe"
PSET (120, 120): DRAW "c" + STR$(c2) + "ta" + STR$(ta2) + "u10d12hfe"
PSET (210, 120): DRAW "c" + STR$(c3) + "ta" + STR$(ta3) + "u10d12hfe"
GOTO 103
126
c1 = 4: c2 = 4: c3 = 4
PSET (160, 80): DRAW "c54ta" + STR$(ta1) + "u10d12hfe"
PSET (120, 120): DRAW "c54ta" + STR$(ta2) + "u10d12hfe"
PSET (210, 120): DRAW "c54ta" + STR$(ta3) + "u10d12hfe"
IF ch = 1 THEN ta1 = ta1 - 1
IF ta1 < 0 THEN ta1 = 0
IF ch = 2 THEN ta2 = ta2 - 1
IF ta2 < 0 THEN ta2 = 0
IF ch = 3 THEN ta3 = ta3 - 1
IF ta3 < 0 THEN ta3 = 0
IF ta1 = 0 OR ta1 = 360 THEN c1 = 44
IF ta3 = 270 THEN c3 = 44
IF ta2 = 90 THEN c2 = 44
PSET (160, 80): DRAW "c" + STR$(c1) + "ta" + STR$(ta1) + "u10d12hfe"
PSET (120, 120): DRAW "c" + STR$(c2) + "ta" + STR$(ta2) + "u10d12hfe"
PSET (210, 120): DRAW "c" + STR$(c3) + "ta" + STR$(ta3) + "u10d12hfe"
GOTO 103
300
sfxnum% = 21: playsfx sfx$(sfxnum%): PLAY "p10p60"
LOCATE 1: COLOR 12: PRINT " Trajectoire : O.K : READY .....        "
PLAY "p1p60"
CLS
x = 0: a = 0
PSET (10, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (130, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (290, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 70): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (20, 80): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
COLOR 15
LOCATE 1: PRINT " Les voil… partis vers la terre !"
1103
PSET (x, 100): DRAW "c0r2ur2dr2url8rur9"
x = x + a: a = a + .5
PSET (x, 100): DRAW "c8r2ur2dr2url8rur9"
PLAY "p60"
IF x < 320 THEN 1103
PLAY "p1p1p60"
GOTO 55
314
sfxnum% = 21: playsfx sfx$(sfxnum%): PLAY "p10p60"
LOCATE 1: COLOR 12: PRINT " Trajectoire : O.K : READY .....        "
PLAY "p1p60"
CLS
x = 0: a = 0
PSET (10, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (130, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (290, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 70): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (20, 80): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
COLOR 15
LOCATE 1: PRINT " Les voil… perdus dans l'espace car la  trajectoire n'a pas ‚t‚ trouv‚e !"
1104
PSET (x, 100): DRAW "c0r2ur2dr2url8rur9"
x = x + a: a = a + .5
PSET (x, 100): DRAW "c8r2ur2dr2url8rur9"
PLAY "p60"
IF x < 320 THEN 1104
PLAY "p1p1p60"
GOTO 100

SUB playsfx (sfx$)
chan% = VAL(MID$(sfx$, 61, 4))
FOR in = 1 TO 60 STEP 4
  reg$ = MID$(c$(chan%), in, 4): reg% = VAL(reg$)
  dat$ = MID$(sfx$, in, 4): dat% = VAL(dat$)
  OUT &H388, reg%: FOR d% = 1 TO 6: b% = INP(&H388): NEXT
  OUT &H389, dat%: FOR d% = 1 TO 35: b% = INP(&H388): NEXT
NEXT

END SUB

