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
2000
av1$ = "c6r5url2l4ubr3udlc28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0uc28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar1$ = "c6l5ulr2r4ubl3udrc28rulc28r2ul3ur3ul3ur2ul2ur3ul3ur3uc15l4dc1uc15l0uc28lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
av2$ = "c6r5url2l4ubr3udlc28lurc28e7lg7le7r3c1f7rh7rf8c15ud2l3udr4c4rldl4bu11bl9c15r4dc1uc15r0uc28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar2$ = "c6l5ulr2r4ubl3udrc28rulc28h7rf7rh7l3c1g7le7lg8c15ud2r3udl4c4lrdr4bu11br9c15l4dc1uc15l0uc28lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
pa$ = "c6r5url2l4ubr3udlc28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0uc28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dl"
OPEN "joy.map" FOR BINARY AS 1
nive = 1
PUT 1, 40, nive
GET 1, 3, hr
GET 1, 13, ga
GET 1, 23, ha
GET 1, 33, gr
ha = ha - 15: hr = hr + 15
ga = ga - 15: gr = gr + 15
CLOSE
lav = 0
mir = 0
ga = 0
jjj = 0
cle = 0
lp = 0
hang = 0
pri = 0
cl = 0
arm = 0
CLS
PSET (0, 170): DRAW "c8r320l20uc7u100d10l10u10d100u10r10u90c8r20l320d100u100r50c6r40dl40bubl49bd80r40d5l40u5bfp6,6er10uc23h15"
PSET (100, 169): DRAW "c15r20l2ul16r7u10rd10ru10rd10u11r3l9ul3r15url17ur17l3u10l10d10bep1,15c1e3ud2f"
PSET (192, 110): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (200, 120): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (310, 169): DRAW "c6r5url2c6l4ubr3udlc20lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c14ulc66l2uc44r4lul4d5ldu5"
PSET (50, 169): DRAW av1$
LOCATE 1: COLOR 15
PRINT "(R)egarder (U)tiliser (P)rendre"
2001
LOCATE 2: PRINT "                                                                                             "
2099
i$ = INKEY$
IF i$ = "R" OR i$ = "r" THEN 2002
IF i$ = "U" OR i$ = "u" THEN 2003
IF i$ = "P" OR i$ = "p" THEN 2004
GOTO 2099
2002
LOCATE 2: PRINT " 1- voir lavabo 2- voir pi‚ce 5- fin  "
i$ = INKEY$
IF i$ = "1" THEN LOCATE 3: PRINT "Un bout de verre est … moiti‚ cass‚": lav = 1
IF i$ = "2" THEN LOCATE 3: PRINT "Pas de sortie ...                  "
IF i$ = "5" THEN 2001
GOTO 2002
2004
IF lav = 1 THEN LOCATE 2: PRINT " 1- lavabo 5- fin        "
IF lav <> 1 THEN LOCATE 2: PRINT " 5- fin                    "
i$ = INKEY$
IF i$ = "1" AND lav = 1 AND mir <> 1 THEN LOCATE 3: PRINT "Je casse le bout verre": GOTO 2100
IF i$ = "5" THEN 2001
GOTO 2004
2003
IF mir = 1 THEN LOCATE 2: PRINT " 1- verre sur cyborg 5- fin"
IF mir <> 1 THEN LOCATE 2: PRINT " 5- fin                         "
i$ = INKEY$
IF i$ = "1" AND mir = 1 THEN LOCATE 3: PRINT "O.K Action !": GOTO 2200
IF i$ = "5" THEN 2001
GOTO 2003
2100
LINE (45, 169)-(80, 120), 0, BF
PSET (100, 169): DRAW "c15r20l2ul16r7u10rd10ru10rd10u11r3l9ul3r15url17ur17l3u10l10d10bep1,15c1e3ud2f"
PSET (100, 169): DRAW av1$
mir = 1: sfxnum% = 7: playsfx sfx$(sfxnum%): PSET (100, 169): DRAW "c15r20l2ul16r7u10rd10ru10rd10u11r3l9ul3r15url17ur17l3u10l10d10bep1,15c0e3ud2fldlr3ul2ulr3u"
PSET (100, 169): DRAW av1$
GOTO 2004
2200
LOCATE 1: PRINT "                                        "
LOCATE 2: PRINT "                                        "
PLAY "p60"
LINE (45, 169)-(280, 130), 0, BF
PSET (100, 169): DRAW "c15r20l2ul16r7u10rd10ru10rd10u11r3l9ul3r15url17ur17l3u10l10d10bep1,15c0e3ud2fldlr3ul2ulr3u"
PSET (150, 169): DRAW av1$: PLAY "p30"
LINE (45, 169)-(280, 130), 0, BF
PSET (100, 169): DRAW "c15r20l2ul16r7u10rd10ru10rd10u11r3l9ul3r15url17ur17l3u10l10d10bep1,15c0e3ud2fldlr3ul2ulr3u"
PSET (200, 169): DRAW av1$: PLAY "p30"
LINE (45, 169)-(280, 130), 0, BF
PSET (100, 169): DRAW "c15r20l2ul16r7u10rd10ru10rd10u11r3l9ul3r15url17ur17l3u10l10d10bep1,15c0e3ud2fldlr3ul2ulr3u"
PSET (250, 169): DRAW av1$: PLAY "p30"
LINE (45, 169)-(280, 130), 0, BF
PSET (100, 169): DRAW "c15r20l2ul16r7u10rd10ru10rd10u11r3l9ul3r15url17ur17l3u10l10d10bep1,15c0e3ud2fldlr3ul2ulr3u"
PSET (280, 169): DRAW av1$: PLAY "p30"
PSET (291, 142): DRAW "c9r5dl4rdr2": PLAY "p30"
PSET (291, 142): DRAW "c0r5dl4rdr2"
PSET (311, 142): DRAW "c9r5dl4rdr2": sfxnum% = 8: playsfx sfx$(sfxnum%): PLAY "p30"
CIRCLE (311, 142), 8, 43: PAINT (311, 142), 44, 43: sfxnum% = 4: playsfx sfx$(sfxnum%): PLAY "o0l60p60"
CIRCLE (311, 142), 8, 0: PAINT (311, 142), 0
2500
LOCATE 3: PRINT "Je prend les cl‚s et je me tire !"
i$ = INKEY$: IF i$ = "" THEN 2500
PLAY "p10"
LINE (45, 169)-(288, 130), 0, BF
PSET (100, 169): DRAW "c15r20l2ul16r7u10rd10ru10rd10u11r3l9ul3r15url17ur17l3u10l10d10bep1,15c0e3ud2fldlr3ul2ulr3u"
PSET (283, 169): DRAW "c6r5url2l4ubr3udlbr3c28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0ubr3c28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br18bd7c66l3ulr5ul5rur3bu5bl12lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PLAY "p10"
PSET (283, 169): DRAW "c6r5url2l4ubr3udlbr3c28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0ubr3c28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br18bd7c0l3ulr5ul5rur3bu5bl12lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PSET (283, 169): DRAW "c6r5url2l4ubr3udlbr3c28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0ubr3c28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br17bd7c66l3ulr5ul5rur3bu5bl11lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PLAY "p10"
PSET (283, 169): DRAW "c6r5url2l4ubr3udlbr3c28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0ubr3c28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br17bd7c0l3ulr5ul5rur3bu5bl11lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PSET (283, 169): DRAW "c6r5url2l4ubr3udlbr3c28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0ubr3c28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br20bd7c66l3ulr5ul5rur3bu5bl14lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PLAY "p10"
PSET (283, 169): DRAW "c6r5url2l4ubr3udlbr3c28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0ubr3c28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br20bd7c0l3ulr5ul5rur3bu5bl14lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PSET (283, 169): DRAW "c6r5url2l4ubr3udlbr3c28lurc28l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc1uc15r0ubr3c28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br22bd7c66l3ulr5ul5rur3bu5bl16lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PLAY "p10"
sfxnum% = 18: playsfx sfx$(sfxnum%): PLAY "o3p60"
2501
LOCATE 3: PRINT "             Je les ai !         "
i$ = INKEY$: IF i$ = "" THEN 2501
LOCATE 3: PRINT "                                 "
y = 140
t = 0
2502
LINE (275, 169)-(300, y), 0, BF
PSET (280, 169): DRAW av1$: PLAY "p60"
IF t = 10 THEN sfxnum% = 12: playsfx sfx$(sfxnum%): t = 0
t = t + 1
y = y - 1: IF y > 69 THEN 2502
2503
LOCATE 3: PRINT "   Prenons les habits du cyborg !"
i$ = INKEY$: IF i$ = "" THEN 2503
CLS
1
av1$ = "c6r5url2l4ubr3udlc2lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar1$ = "c6l5ulr2r4ubl3udrc2rulc2r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc2uc6l0uc2lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
av2$ = "c6r5url2l4ubr3udlc2lurc2e7lg7le7r3c2f7rh7rf8c6ud2l3udr4rldl4bu11bl9c6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar2$ = "c6l5ulr2r4ubl3udrc2rulc2h7rf7rh7l3c2g7le7lg8c6ud2r3udl4lrdr4bu11br9c6l4dc2uc6l0uc2lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
pa$ = "c6r5url2l4ubr3udlc2lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dl"
A$ = "REGARDER"
compt = 3000
y = 169
x = 100
pass = 0
cle = 0
100
CLS
PSET (0, 170): DRAW "c7r320bu150l320"
PSET (130, 100): DRAW "c4l10e10l10br12r10d10l10u10br15d10u10f10u10br2d10r10l10u5r7l7u5r10br5f10h5e5g10br12u10br2d10br2c2d3l72u16r72d16"
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (80, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (280, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (292, 100): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 110): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (190, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (x, y): DRAW av1$
101
COLOR 15
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 102
IF m > ha THEN 103
IF i$ = "E" THEN RUN "loptun.bas"
IF i$ = "5" THEN 104
IF STRIG(0) THEN 105
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 101
102
IF x < 10 THEN x = 300: GOTO 200
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (80, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (280, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (190, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (280, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (190, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 101
103
IF x > 160 AND pass = 0 THEN 130
IF x > 310 THEN x = 20: GOTO 600
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (280, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (80, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (190, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (280, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (190, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 101
104
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 101
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 101
105
IF A$ = "REGARDER" THEN 106
IF A$ = "ACTION  " THEN 107
106
LOCATE 23: PRINT "1-Les lieux  "
108
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Il y a un cyborg qui bloque l'acces ! "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 101
GOTO 108
107
LOCATE 23: PRINT "Rien ..."
i$ = INKEY$
IF i$ = "5" THEN 101
GOTO 107
130
lp = 1: LOCATE 1: COLOR 4: PRINT " Vous ne pouvez passer sans accord !"
i$ = INKEY$: IF i$ = "" THEN 130
LOCATE 1: COLOR 4: PRINT "                                    "
GOTO 101
300
200
CLS
PSET (0, 170): DRAW "c7r320bu150l320r320l90d100l20u100bfp8,7"
PSET (300, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (85, 100): DRAW "bu20br5c4d40h10g10u40r20bgp4,4ebl21c6l3br25r3"
CIRCLE (80, 100), 5, 15: PAINT (80, 100), 15: PSET (80, 100): DRAW "c0h2f4h2d3u6"
PSET (x, y): DRAW av1$
201
COLOR 15
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 202
IF m > ha THEN 203
IF i$ = "5" THEN 204
IF STRIG(0) THEN 205
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 201
202
IF x < 10 THEN x = 300: GOTO 400
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (300, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (300, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 201
203
IF x > 310 THEN x = 20: GOTO 100
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (300, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (300, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 201
204
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 201
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 201
205
IF A$ = "REGARDER" THEN 206
IF A$ = "ACTION  " THEN 207
206
LOCATE 23: PRINT "1-Les lieux  "
208
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Un hall qui m‚ne hors des cellules ."
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 201
GOTO 208
207
IF cle = 0 THEN LOCATE 23: PRINT "Je ne peux pas encore ouvrir la porte ."
IF cle = 1 THEN LOCATE 23: PRINT " 1-Ouvrir porte"
i$ = INKEY$
IF cle = 1 AND i$ = "1" THEN 500
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 201
GOTO 207
500
CLS
PSET (55, 10): DRAW "c2r200d100l200u100"
nb = 1
ch = 5
COLOR 2: LOCATE 4, 9: PRINT "Mise en marche d‚codeur"
LOCATE 5, 9: PRINT "Pressez une touche ..."
501
nb = nb + 1: IF nb > 30 THEN nb = 1
i$ = INKEY$: IF i$ = "" THEN 501
502
LOCATE 5, 9: PRINT "                      "
LOCATE 5, 9: INPUT "Quel code ? (1-30) :", hu
IF hu = nb THEN 520
IF hu < nb THEN COLOR 4: LOCATE 6, 9: PRINT " ERROR : + !": sfxnum% = 16: playsfx sfx$(sfxnum%): PLAY "o3l60p60"
IF hu > nb THEN COLOR 4: LOCATE 6, 9: PRINT " ERROR : - !": sfxnum% = 16: playsfx sfx$(sfxnum%): PLAY "o3l60p60"
COLOR 2
ch = ch - 1: IF ch <= 0 THEN 503
GOTO 502
503
COLOR 4: LOCATE 7, 9: PRINT " ACCES REFUSE !": sfxnum% = 8: playsfx sfx$(sfxnum%): PLAY "o3l60p60"
504
i$ = INKEY$: IF i$ = "" THEN 504
IF cl = 2 THEN 900
x = 280: GOTO 200
520
COLOR 44: LOCATE 7, 9: PRINT " ACCES AUTORISE!": sfxnum% = 3: playsfx sfx$(sfxnum%): PLAY "o3l60p60"
505
i$ = INKEY$: IF i$ = "" THEN 505
IF cl = 2 AND jjj = 1 THEN 920
GOTO 510
400
CLS
PSET (0, 170): DRAW "c7r320bu150l320r10d150bubl5p8,7"
PSET (130, 100): DRAW "c12l10e10l10br12r10d10l10u10br15d10u10f10u10br2d10r10l10u5r7l7u5r10br5f10h5e5g10br12bu10br2bd10c2d3l72u16r72d16"
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (92, 100): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (100, 110): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (x, y): DRAW av1$
401
COLOR 15
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 402
IF m > ha THEN 403
IF i$ = "5" THEN 404
IF STRIG(0) THEN 405
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 401
402
IF x < 50 THEN 401
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 401
403
IF x > 310 THEN x = 20: GOTO 300
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 401
404
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 401
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 401
405
IF A$ = "REGARDER" THEN 406
IF A$ = "ACTION  " THEN 407
406
LOCATE 23: PRINT "1-Les lieux  "
408
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Il y a un prisonier … qui parler ! "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 401
GOTO 408
407
LOCATE 23: PRINT "1-parler au d‚tenu"
i$ = INKEY$
IF i$ = "1" THEN 410
IF i$ = "5" THEN 401
GOTO 407
410
CLS
COLOR 4
PRINT "Sale faschiste de cyborg !!!"
COLOR 2
PRINT " 1- Je suis un ami !"
PRINT " 2- Chut ! Je suis humain !"
411 : i$ = INKEY$
IF i$ = "2" THEN COLOR 4: PRINT "Prouve le moi ! Qui est tu ?": GOTO 420
IF i$ = "1" THEN COLOR 4: PRINT "Trou du cul !": PLAY "p1p10": x = 180: GOTO 400
GOTO 411
420
COLOR 2
PRINT " 1- Mon nom est Kane  !"
PRINT " 2- Mon nom est Hoara !"
412 : i$ = INKEY$
IF i$ = "1" THEN COLOR 4: PRINT "Connait pas !": GOTO 421
IF i$ = "2" THEN COLOR 4: PRINT "Et moi le pape!": PLAY "p1p10": x = 180: GOTO 400
GOTO 412
421
COLOR 2
PRINT " 1- Comment puis-je sortir ?"
PRINT " 2- La devise : Vive l'anarchisme !"
413 : i$ = INKEY$
IF i$ = "1" THEN COLOR 4: PRINT "OK ! Je vais t'aider ! ": GOTO 423
IF i$ = "2" THEN COLOR 4: PRINT "Ouais ! Je vais t'aider !": GOTO 423
GOTO 413
423
COLOR 4
PRINT "Un jour j'ai pris un d‚codeur … un guarde . H‚las il ne marche pas pour ma cellule , mais il fonctionne avec la porte dans la pi‚ce … c“t‚ !"
PRINT "Utilise le pour trouver le code de cette porte : C'est un nombre entre 1 et 30 !"
PRINT "Au bout de 5 erreurs le syst‚me change de code et tout est … refaire !"
PRINT "Il t'aidera en te disant si le code est plus grand ou plus petit ."
cle = 1
414 : i$ = INKEY$
IF i$ = "" THEN 414
GOTO 400
510
CLS
x = 130
PSET (x, y): DRAW av1$
PSET (0, 170): DRAW "c7r320bu120l320r140dc6d5f10l20e10bdp6,6bd10c14l3r6bd102c6u15r20d5l5d10l15bep139,6"
PSET (20, 169): DRAW "c6e5l20f5r10bup6,6bl4bu5c2u10c9l2r4url6ulr8ul8ur8lul6"
PSET (175, 169): DRAW "c6l5ulr2r4ubl3udrc2rulc2r2ul2r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc2uc6l0uc2lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc44l4rur4d5rdu5"
PSET (70, 110): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (170, 110): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (270, 110): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
IF lp = 1 AND pass = 0 THEN COLOR 44: LOCATE 1: PRINT "1- Demander un laisser pass‚"
IF lp = 2 AND pass = 2 THEN COLOR 44: LOCATE 1: PRINT "1- Demander l'acc‚s a l'‚tage 0"
COLOR 44: LOCATE 2: PRINT "2- partir"
511
i$ = INKEY$
IF i$ = "1" AND lp = 1 AND pass = 0 THEN LOCATE 3: COLOR 6: PRINT "Le voici !": pass = 1: PLAY "p3p60": x = 280: GOTO 200
IF i$ = "1" AND lp = 2 AND pass = 2 THEN LOCATE 3: COLOR 6: PRINT "Le voici !": hang = 1: PLAY "p3p60": x = 280: GOTO 200
IF i$ = "2" THEN x = 280: GOTO 200
GOTO 511
600
CLS
PSET (250, 100): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (0, 170): DRAW "c7r320bu150l320r310d150bep8,7"
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (100, 110): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (256, 110): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (x, y): DRAW av1$
601
COLOR 15
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 602
IF m > ha THEN 603
IF i$ = "5" THEN 604
IF STRIG(0) THEN 605
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 601
602
IF x < 10 THEN x = 300: GOTO 100
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 601
603
IF x > 260 THEN 601
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 601
604
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 601
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 601
605
IF A$ = "REGARDER" THEN 606
IF A$ = "ACTION  " THEN 607
606
LOCATE 23: PRINT "1-Les lieux  "
608
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Une porte ... "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 601
GOTO 608
607
LOCATE 23: PRINT "1-prendre la porte"
i$ = INKEY$
IF i$ = "1" THEN eta = 3: GOTO 700
IF i$ = "5" THEN 601
GOTO 607
700
CLS
PSET (140, 130): DRAW ar1$
PSET (100, 131): DRAW "c7r90u70l90d70u70r45uc8u100rd100l2u100lc6d50rd10rd15rd20rd6c7dc8rl7rdc12r5ldl3"
PSET (99, 0): DRAW "c22d210r92u210"
LOCATE 10, 25: COLOR 44: PRINT eta
COLOR 7: LOCATE 1, 1: PRINT "Quel ‚tage ?"
PRINT "+ ou -"
PRINT "5=descendre"
701
IF eta > 3 THEN eta = 3
IF eta < 0 THEN eta = 0
COLOR 2: LOCATE 4: PRINT eta
i$ = INKEY$
IF i$ = "+" THEN eta = eta + 1
IF i$ = "-" THEN eta = eta - 1
IF i$ = "5" THEN 702
GOTO 701
702
IF eta = 3 THEN x = 150: GOTO 600
IF eta = 1 THEN x = 150: GOTO 800
IF eta = 2 THEN 1000
IF hang = 1 THEN 1200
LOCATE 6: COLOR 4: PRINT "pas d'"
PRINT "acc‚s": lp = 2
sfxnum% = 6: playsfx sfx$(sfxnum%)
PLAY "p5p10"
LOCATE 6: COLOR 4: PRINT "      "
PRINT "     "
GOTO 701
800
CLS
PSET (130, 100): DRAW "c44l10e10l10br12r10d10l10u10br15d10u10f10u10br2d10r10l10u5r7l7u5r10br5f10h5e5g10br12u10br2d10br2c2d3l72u16r72d16"
PSET (290, 100): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (0, 170): DRAW "c7r320bu150l320r310d150bep8,7"
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (80, 110): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (296, 110): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (x, y): DRAW av1$
801
COLOR 15
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 802
IF m > ha THEN 803
IF i$ = "5" THEN 804
IF STRIG(0) THEN 805
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 801
802
IF x < 10 THEN x = 300: GOTO 900
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 801
803
IF x > 260 THEN 801
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 801
804
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 801
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 801
805
IF A$ = "REGARDER" THEN 806
IF A$ = "ACTION  " THEN 807
806
LOCATE 23: PRINT "1-Les lieux  "
808
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Une porte ... "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 801
GOTO 808
807
LOCATE 23: PRINT "1-prendre la porte"
i$ = INKEY$
IF i$ = "1" THEN eta = 1: GOTO 700
IF i$ = "5" THEN 801
GOTO 807
900
CLS
PSET (0, 170): DRAW "c7r320bu150l320r10d150bubl5p8,7"
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
IF pri = 0 THEN PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc14l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (192, 100): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (200, 110): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (x, y): DRAW av1$
901
COLOR 15
cl = 1
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 902
IF m > ha THEN 903
IF i$ = "5" THEN 904
IF STRIG(0) THEN 905
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 901
902
IF x < 50 THEN 901
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
IF pri = 0 THEN PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc14l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
IF pri = 0 THEN PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc14l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 901
903
IF x > 310 THEN x = 20: GOTO 800
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
IF pri = 0 THEN PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc14l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
IF pri = 0 THEN PSET (260, 169): DRAW "c20l4r8lul6ruc8u10rd10ru10rd10ru11c15l4uc8u7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7c65br4bulurur2l4ur4ulc15udlc65lc15udlc65u2r2dur2duc14l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 901
904
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 901
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 901
905
IF A$ = "REGARDER" THEN 906
IF A$ = "ACTION  " THEN 907
906
LOCATE 23: PRINT "1-Les lieux  "
908
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Il y a un prisonier … qui parler ! "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 901
GOTO 908
907
IF pri = 0 THEN LOCATE 23: PRINT "1-parler au d‚tenu"
IF pri = 1 THEN LOCATE 23: PRINT "Rien ...          "
i$ = INKEY$
IF i$ = "1" AND pri = 0 THEN 910
IF i$ = "5" THEN 901
GOTO 907
910
CLS
COLOR 14
PRINT "Piti‚ , ouvre moi la porte !"
COLOR 4
PRINT " 1- ouvrir "
PRINT " 2- refuser"
911
i$ = INKEY$
IF i$ = "1" THEN cl = 2: jjj = 1: GOTO 500
IF i$ = "2" THEN 900
GOTO 911
920
CLS
PSET (0, 170): DRAW "c7r320bu150l320r10d150bubl5p8,7"
PSET (80, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (280, 169): DRAW "c7u40h5l40g5d40u10r50u10l50u10r50u10l50r25u5d45"
PSET (92, 100): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (100, 110): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (150, y): DRAW av1$
PSET (200, y): DRAW "c6l5ulr2r4ubl3udrc28rulc28r2ul3ur3ul3ur2ul2ur3ul3ur3uc15l4dc1uc15l0uc28lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5"
pri = 1: jjj = 0
LOCATE 1: PRINT "Merci ! Toi tu est un vrai rebelle : prend cette arme que j'ai d‚rob‚ aux cyborgs elle te sera utile ! Moi j'en ai deux autres !"
921
i$ = INKEY$
IF i$ = "" THEN 921
CLS : PLAY "p5p60": x = 150: arm = 1
GOTO 900
1000
CLS
PSET (130, 100): DRAW "c12l10e10l10br12r10d10l10u10br15d10u10f10u10br2d10r10l10u5r7l7u5r10br5f10h5e5g10br12bu10br2bd10c44d3l72u16r72d16"
PSET (280, 110): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (0, 170): DRAW "c7r320bu150l320r310d150bep8,7"
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
PSET (60, 100): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (286, 120): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (x, y): DRAW av1$
1001
COLOR 15
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 1002
IF m > ha THEN 1003
IF i$ = "5" THEN 1004
IF STRIG(0) THEN 1005
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 1001
1002
IF x < 10 THEN x = 300: GOTO 1100
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 1001
1003
IF x > 260 THEN 1001
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
PSET (150, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 1001
1004
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 1001
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 1001
1005
IF A$ = "REGARDER" THEN 1006
IF A$ = "ACTION  " THEN 1007
1006
LOCATE 23: PRINT "1-Les lieux  "
1008
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Une porte ... "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 1001
GOTO 1008
1007
LOCATE 23: PRINT "1-prendre la porte"
i$ = INKEY$
IF i$ = "1" THEN eta = 2: GOTO 700
IF i$ = "5" THEN 1001
GOTO 1007
1100
CLS
x = 130
PSET (x, y): DRAW av1$
PSET (0, 170): DRAW "c7r320bu120l320r140dc6d5f10l20e10bdp6,6bd10c14l3r6bd102c6u15r20d5l5d10l15bep139,6"
PSET (20, 169): DRAW "c6e5l20f5r10bup6,6bl4bu5c2u10c44l2r4url6ulr8ul8ur8lul6"
PSET (175, 169): DRAW "c15l5ulr2r4ubl3udrc2rulc2r2ul2r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc2uc6l0uc2lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc7l4rur4d5rdu5"
PSET (60, 100): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (160, 100): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
PSET (260, 100): DRAW "c8l20u20r20d20l5u20l5d20l5u20l5d5r20d10l20"
IF lp = 2 THEN COLOR 44: LOCATE 1: PRINT "1- Demander l'acc‚s … l'‚tage 0"
COLOR 44: LOCATE 2: PRINT "2- partir"
1101
i$ = INKEY$
IF i$ = "1" AND lp = 2 THEN LOCATE 3: COLOR 6: PRINT "Allez au bureau du 3ø ‚tage et donnez ce mot !": pass = 2: PLAY "p1p1p60": x = 20: GOTO 1000
IF i$ = "2" THEN x = 20: GOTO 1000
GOTO 1101
1200
CLS
PSET (10, y): DRAW av1$
PSET (0, 170): DRAW "c7r320bu170l320bd170r50uc8u100e10r200f10d100u11l220u20r220u20l220u20r220u20l220"
LOCATE 2, 15: COLOR 12: PRINT "Hangar 1x3"
PSET (100, 169): DRAW "c6r5url2l4ubr3udlc9lurc9l2ur3ul3ur3ul2ur2ul3ur3ul3uc15r4dc9uc15r0uc9rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c44ulc66l2uc115r4lul4d5ldu5"
PSET (70, 169): DRAW "c113r20u20l20d20u2e18r2d2g18br5bup6,113bu5p6,113bu10p6,113"
PSET (270, 169): DRAW "c113r20u20l20d20u2e18r2d2g18br5bup6,113bu5p6,113bu10p6,113"
PSET (240, 169): DRAW "c113r20u20l20d20u2e18r2d2g18br5bup6,113bu5p6,113bu10p6,113"
PSET (255, 149): DRAW "c113r20u20l20d20u2e18r2d2g18br5bup6,113bu5p6,113bu10p6,113"
PSET (150, 168): DRAW "c22r30ur25ur20ur5ur2ur5ur9ur20uru2ru3lu2l2ul5ul9ul30ulu2lu3l10dl2dldl3dl9dl20dl2dl2d3ld6ld3r9ur5ur15bd3bl29l9dl10dl5r4dr5bup15,22br95bu16c22u2l2ul3ul2ululul6ul9dldl6br9p9,22"
IF arm = 1 THEN 1210
LOCATE 23: COLOR 15: PRINT "Un cyborg guarde l'entr‚e !"
1201
i$ = INKEY$: IF i$ = "" THEN 1201
GOTO 700
1210
LOCATE 23: COLOR 15: PRINT "Utilisons le laser !"
1211
PLAY "p60"
i$ = INKEY$: IF i$ = "" THEN 1211
LOCATE 23: COLOR 15: PRINT "                    "
PSET (10, y): DRAW av1$ + "bd6br10c66r3ldl2u3drc7r5ur7l15"
: PLAY "p3p64"
PSET (10, y): DRAW av1$ + "bd6br10c0r3ldl2u3drr5ur7l15"
PSET (10, y): DRAW av1$ + "bd7br12c66r3ldl2u3drc7r5ur7l15r15c12r70"
sfxnum% = 12: playsfx sfx$(sfxnum%)
PLAY "o3p10p60"
CIRCLE (105, 148), 10, 43: PAINT (105, 148), 44, 43
sfxnum% = 4: playsfx sfx$(sfxnum%): PLAY "p10"
PLAY "p10p60"
PSET (10, y): DRAW av1$ + "bd7br12c0r3ldl2u3drr5ur7l15r15r70"
CIRCLE (105, 148), 10, 0: PAINT (105, 148), 0
PLAY "p3p60"
sfxnum% = 8: playsfx sfx$(sfxnum%): PLAY "p5"
sfxnum% = 8: playsfx sfx$(sfxnum%): PLAY "p5"
sfxnum% = 8: playsfx sfx$(sfxnum%): PLAY "p5"
sfxnum% = 8: playsfx sfx$(sfxnum%): PLAY "p5"
sfxnum% = 8: playsfx sfx$(sfxnum%): PLAY "p5"
LOCATE 23: COLOR 15: PRINT "Je prend le vaisseau vite fait !"
1212
i$ = INKEY$: IF i$ = "" THEN 1212
CLS
1213
h = 170: l = 0
PSET (0, h): DRAW "c7r320 "
PSET (185, 160): DRAW "c15r0uc28rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PSET (100, 168): DRAW "c22r30ur25ur20ur5ur2ur5ur9ur20uru2ru3lu2l2ul5ul9ul30ulu2lu3l10dl2dldl3dl9dl20dl2dl2d3ld6ld3r9ur5ur15bd3bl29l9dl10dl5r4dr5bup15,22br95bu16"
PLAY "p3p60"
PSET (100, 168): DRAW "c22r30ur25ur20ur5ur2ur5ur9ur20uru2ru3lu2l2ul5ul9ul30ulu2lu3l10dl2dldl3dl9dl20dl2dl2d3ld6ld3r9ur5ur15bd3bl29l9dl10dl5r4dr5bup15,22br95bu16c22u2l2ul3ul2ululul6ul9dldl6br9p9,22"
sfxnum% = 18: playsfx sfx$(sfxnum%)
PLAY "p3p60"
sfxnum% = 13: playsfx sfx$(sfxnum%)
PLAY "p3p60"
1214
PSET (l, h): DRAW "c0r320 "
h = h + 1
PSET (l, h): DRAW "c7r320c0r20 "
PLAY "p15": IF h < 198 THEN 1214
1215
PSET (l, h): DRAW "c7r320c0r20 "
l = l - 1
PLAY "p60": IF l > -100 THEN 1215
sfxnum% = 12: playsfx sfx$(sfxnum%)
PLAY "p3p60"
1216
PSET (l, h): DRAW "c7r320c0r20 "
l = l - 10
PLAY "p60": IF l > -320 THEN 1216
CLS
PLAY "p60"
PSET (150, 168): DRAW "c22r30ur25ur20ur5ur2ur5ur9ur20uru2ru3lu2l2ul5ul9ul30ulu2lu3l10dl2dldl3dl9dl20dl2dl2d3ld6ld3r9ur5ur15bd3bl29l9dl10dl5r4dr5bup15,22br95bu16c22u2l2ul3ul2ululul6ul9dldl6br9p9,22"
PLAY "p60"
CLS
PSET (200, 158): DRAW "c22r30ur25ur20ur5ur2ur5ur9ur20uru2ru3lu2l2ul5ul9ul30ulu2lu3l10dl2dldl3dl9dl20dl2dl2d3ld6ld3r9ur5ur15bd3bl29l9dl10dl5r4dr5bup15,22br95bu16c22u2l2ul3ul2ululul6ul9dldl6br9p9,22"
PLAY "p60"
CLS
PSET (250, 148): DRAW "c22r30ur25ur20ur5ur2ur5ur9ur20uru2ru3lu2l2ul5ul9ul30ulu2lu3l10dl2dldl3dl9dl20dl2dl2d3ld6ld3r9ur5ur15bd3bl29l9dl10dl5r4dr5bup15,22br95bu16c22u2l2ul3ul2ululul6ul9dldl6br9p9,22"
PLAY "p60"
CLS
PSET (300, 138): DRAW "c22r30ur25ur20ur5ur2ur5ur9ur20uru2ru3lu2l2ul5ul9ul30ulu2lu3l10dl2dldl3dl9dl20dl2dl2d3ld6ld3r9ur5ur15bd3bl29l9dl10dl5r4dr5bup15,22br95bu16c22u2l2ul3ul2ululul6ul9dldl6br9p9,22"
PLAY "p60"
CLS
PSET (320, 128): DRAW "c22r30ur25ur20ur5ur2ur5ur9ur20uru2ru3lu2l2ul5ul9ul30ulu2lu3l10dl2dldl3dl9dl20dl2dl2d3ld6ld3r9ur5ur15bd3bl29l9dl10dl5r4dr5bup15,22br95bu16c22u2l2ul3ul2ululul6ul9dldl6br9p9,22"
PLAY "p60"
CLS
COLOR 15
LOCATE 1
PRINT "Kane a enfin r‚ussit … s'‚chapper de la base P“lux . Il peut maintenant retourner sur terre pour continuer son combat !"
PLAY "p1p1p1p1p1p1p10"
1253
CLS
LOCATE 1: COLOR 15
PRINT "                ACTE III"
PRINT "        Le chemin vers la terre"
PLAY "p1p10"
RUN "ac3.bas"

SUB playsfx (sfx$)

'plays an sfx$ that is sent to it.
'sub expects the c$() array (channel info) to be global

chan% = VAL(MID$(sfx$, 61, 4))
FOR in = 1 TO 60 STEP 4
  reg$ = MID$(c$(chan%), in, 4): reg% = VAL(reg$)
  dat$ = MID$(sfx$, in, 4): dat% = VAL(dat$)
  OUT &H388, reg%: FOR d% = 1 TO 6: b% = INP(&H388): NEXT
  OUT &H389, dat%: FOR d% = 1 TO 35: b% = INP(&H388): NEXT
NEXT

END SUB

