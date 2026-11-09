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
OPEN "joy.map" FOR BINARY AS 1
GET 1, 3, hr
GET 1, 13, ga
GET 1, 23, ha
GET 1, 33, gr
ha = ha - 15: hr = hr + 15
ga = ga - 15: gr = gr + 15
CLOSE
SCREEN 13: REM MARCHE
av1$ = "c4r5url2c15l4ubr3udlc20lurc1l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar1$ = "c4l5ulr2c15r4ubl3udrc20rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc2lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
av2$ = "c4r5url2c15l4ubr3udlc20lurc1e7lg7le7r3c1f7rh7rf8c15ud2l3udr4c4rldl4bu11bl9c6r4dc1uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar2$ = "c4l5ulr2c15r4ubl3udrc20rulc1h7rf7rh7l3c1g7le7lg8c15ud2r3udl4c4lrdr4bu11br9c6l4dc1uc6l0uc2lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
pa$ = "c4r5url2c15l4ubr3udlc20lurc1l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dl"
99
A$ = "REGARDER"
compt = 3000
y = 169
x = 100
taxi = 0
ts = 1
retr = 100
ro = 0
ronny = 0
cartid = 0
med = 0
lp = 0
lro = 0
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
LOCATE 1: COLOR 15
PRINT "2314 ,terre : apr‚s la chute de l'empire mondial .Le dictateur Aristo IV prend  le pouvoir et dirige la terre d'une mainde fer grƒce … des Cyborgs ."
sfxnum% = 6: playsfx sfx$(sfxnum%)
yy:
i$ = INKEY$: IF i$ = "" THEN GOTO yy
4
CLS
PSET (160, 169): DRAW "c1l5ulr2c15r4ubl3udrc1rulc9r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc9uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd8c66r3url5ur5lul3bu6br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5c15bd5bl6g"
PSET (130, 169): DRAW av1$
PSET (0, 170): DRAW "c8r360"
LOCATE 1
PRINT "Des groupes de r‚sistants se forment de  partout , Surtout des ‚tudiants ."
uyy:
i$ = INKEY$: IF i$ = "" THEN GOTO uyy:
LOCATE 1
PRINT "                                                                          "
LOCATE 23
COLOR 4
PRINT "Voila Kane : Si tu veux entrer chez nous"
yiy:
i$ = INKEY$: IF i$ = "" THEN GOTO yiy:
LOCATE 23
PRINT "Il faut que tu contacte HOARA notre chef"
yjy:
i$ = INKEY$: IF i$ = "" THEN GOTO yjy:
LOCATE 23
PRINT "Il se trouve au Royal H“tel.            "
yly:
i$ = INKEY$: IF i$ = "" THEN GOTO yly:
LOCATE 23
PRINT "Mais tu dois te debrouiller pour y aller"
yyy:
i$ = INKEY$: IF i$ = "" THEN GOTO yyy:
LOCATE 23
PRINT "Car je suis recherch‚ . Bonne chance !  "
tyy:
i$ = INKEY$: IF i$ = "" THEN GOTO tyy:
CLS
COLOR 15
LOCATE 1
PRINT "                ACTE I"
PRINT "        A LA RECHERCHE DE HOARA"
PLAY "p1p60"
x = 150
100
CLS
PSET (0, 170): DRAW "c7r320bu70l320bu80r70d50r50u100r50d50r120d10r10e30bd30p8,7bh20p210,7bd3bl230p210,7c8d56r20u56l10h10d20bep20,8bl50p8,7"
PSET (10, 110): DRAW "c4d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (60, 120): DRAW "c1d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (230, 99): DRAW "c6u10l100d10u10l10u50r120d50l10bep4,6": LINE (240, 89)-(120, 39), 44, B, 10: PSET (155, 70): DRAW "c44u10l10r20br2d10u10r10d5l5r5d5br2e10g5h5f10br2u10bd5br8r10h2f2g2bu2br5h2f2g2bu2br5h2f2g2"
PSET (x, y): DRAW av1$
101
LINE (240, 89)-(120, 39), 44, B, 10
m = STICK(0)
LINE (240, 89)-(120, 39), 6, B, 10
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 102
IF m > ha THEN 103
IF i$ = "5" THEN 104
IF i$ = "E" THEN RUN "loptun.bas"
IF STRIG(0) THEN 105
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 101
102
IF x < 10 THEN x = 300: GOTO 600
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 101
103
IF x > 310 THEN x = 10: GOTO 200
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
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
LOCATE 23: PRINT "1 - affiche rouge  2- affiche bleue "
108
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Recherche Hoara Cohol : 3.375$       "
IF i$ = "2" THEN LOCATE 23: PRINT "Vente d'arme Chez J.O Hocker         "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 101
GOTO 108
107
LOCATE 23: PRINT "rien  "
i$ = INKEY$: IF i$ = "" THEN 107
GOTO 101
3000
200
CLS
x1 = 60
r = 0
PSET (0, 170): DRAW "c7r320bu100l100d30l220bu80c7r20f30r30f30d20u21blr50u100r50r10f50d40br10u100bd100be3p8,7bl100p8,7bl100p8,7bu30p210,7br190p210,7": CIRCLE (35, 10), 14, 4: PAINT (35, 10), 4
PSET (300, 110): DRAW "c14d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0bl10c7l10d5r10u5l10u5l10d5r10"
201
PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9"
x1 = x1 + 1: IF x1 = 145 THEN r = 1
PSET (x1, 10), 210: DRAW "c244r2ur2dr2url8rur9"
206
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 202
IF m > ha THEN 203
IF i$ = "5" THEN 204
IF STRIG(0) THEN 205
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
IF r = 0 THEN 201
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 206
202
IF x < 10 THEN x = 310: GOTO 100
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
IF r = 0 THEN 201
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 206
203
IF x > 310 THEN x = 10: GOTO 300
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 15
PSET (x, y): DRAW av1$
IF r = 0 THEN 201
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 206
204
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 201
IF A$ = "ACTION  " THEN A$ = "REGARDER"
IF r = 0 THEN 201
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 206
205
IF A$ = "REGARDER" THEN 209
IF A$ = "ACTION  " THEN 207
209
LOCATE 23: PRINT "1-affiche  "
208
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Votez Aristoto IV    "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 201
GOTO 208
207
LOCATE 23: PRINT "rien                    "
i$ = INKEY$: IF i$ = "" THEN 207
LOCATE 23: PRINT "                         "
IF r = 0 THEN 201
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 206
300 CLS
PSET (0, 170): DRAW "c7r320u100l10u400l300d400l10r2bup210,7br310p210,7"
PSET (70, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (170, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (270, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
IF taxi = 1 THEN PSET (260, 167): DRAW "c6r50url52ulr54uc44l55ur55ul55ur55ul55ur54l2ul52ur47ul40rur35bl3buurur2ur3ur5dr2dr3d2rd3rd4ldlbu5p9,44bl15bd5c4u5r5l10"
PSET (137, 120): DRAW "c44u10l10r20br2d10u10r10d5l5r5d5br2e10g5h5f10br2u10bd5 "
PSET (x, y): DRAW av1$
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
301
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 302
IF m > ha THEN 303
IF i$ = "5" THEN 304
IF STRIG(0) THEN 305
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 301
302
IF x < 10 THEN x = 300: GOTO 200
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 301
303
IF taxi = 0 AND x > 310 THEN LOCATE 23: PRINT "PAS DE TAXI !!!": GOTO 301
IF taxi = 1 AND x > 230 THEN 498
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 301
304
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 301
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 301
305
IF A$ = "REGARDER" THEN 306
IF A$ = "ACTION  " THEN 307
306
LOCATE 23: PRINT "1-insigne "
308
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "TAXI : 4 $  "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 301
GOTO 308
307
LOCATE 23: PRINT "1- ENTRER CHEZ : TAXI"
i$ = INKEY$
IF i$ = "5" THEN 301
IF i$ = "1" THEN 400
GOTO 307
400
CLS
x = 130
PSET (x, y): DRAW av1$
PSET (170, 169): DRAW "c4l5ulr2c15r4ubl3udrc20rulc9r3ul3ur2ul2ur3ul3ur3uc6l4dc9uc1l0uc3lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd12c6r3url5ur5lul3bu10br3rulul3ulr4ul3c15urc6r2uc23l4rur4d5rdu5bd5bl3c6l"
PSET (0, 170): DRAW "c7r320bu120l320r140dc6d5f10l20e10bdp6,6bd10c14l3r6bd102c6u15r20d5l5d10l15bep139,6"
PSET (20, 169): DRAW "c6e5l20f5r10bup6,6bl4bu5c2u10c4l2r4url6ulr8ul8ur8lul6"
PSET (60, 120): DRAW "c4d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (260, 130): DRAW "c44d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (170, 110): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (280, 169): DRAW "c6u40r30d40l30bep4,6bu3br8bu15c15l3u3r3br2d3r3u3l3br5d3uregfbr2r3l3u2rlur3"
PSET (269, 169): DRAW "c1r5url2c15l4ubr3udlc20lurc1l2ur3ul3ur3ul2ur2ul3ur3ul3c6r4dc1uc6r0uc9rl6ulr7l7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lrur3url4ur3c15ulc66l2uc14r4lul4d5ldu5"
IF taxi = 0 THEN COLOR ts: LOCATE 1: PRINT "1- acheter 1 billet : 4$"
COLOR 1: LOCATE 2: PRINT "2- plan de la ville"
LOCATE 3: PRINT "3- partir"
401
i$ = INKEY$
IF i$ = "1" AND taxi = 0 AND ts = 1 THEN 403
IF i$ = "2" THEN 402
IF i$ = "3" THEN x = 120: COLOR 15: GOTO 300
GOTO 401
402
CLS
PSET (0, 0): DRAW "c2r200d150l200u150r50d100l50r100d10u10r30u50r50u10d30r20"
LOCATE 2, 2: COLOR 4: PRINT "Taxi"
LOCATE 4, 8: COLOR 15: PRINT "Zone industrielle"
LOCATE 5, 8: COLOR 15: PRINT "Mine: UNIMAK 14"
LOCATE 16, 2: COLOR 15: PRINT "Zone habit‚e"
LOCATE 17, 2: COLOR 15: PRINT "Hotel: ROYAL"
404
i$ = INKEY$: IF i$ = "" THEN 404
GOTO 400
403
LOCATE 23: COLOR 2: PRINT "Le taxi est devant la porte !"
retr = retr - 4
taxi = 1
GOTO 401
498
CLS
ux = 0
PSET (60, 167): DRAW "c6r50url52ulr54uc44l55ur55ul55ur55ul55ur54l2ul52ur47ul40rur35bl3buurur2ur3ur5dr2dr3d2rd3rd4ldlbu5p9,44bl15bd5c4u5r5l10"
PSET (0, 170): DRAW "c7r500"
sfxnum% = 13: playsfx sfx$(sfxnum%)
499
PSET (ux, 120): DRAW "c0r100u10e30r100u100r100d100r50e50r100d10r100e50r100r100"
ux = ux - .1
PSET (ux, 120): DRAW "c8r100u10e30r100u100r100d100r50e50r100d10r100e50r100r100"
IF ux < -600 THEN 497
GOTO 499
497
CLS
A = 4
b = 15
c = 15
PSET (0, 0): DRAW "c2r200d150l200u150r50d100l50r100d10u10r30u50r50u10d30r20"
496
LOCATE 2, 2: COLOR A: PRINT "Taxi"
LOCATE 4, 8: COLOR b: PRINT "Zone industrielle"
LOCATE 16, 2: COLOR c: PRINT "Zone habit‚e"
i$ = INKEY$
IF i$ = "1" THEN A = 4: b = 15: c = 15
IF i$ = "2" THEN A = 15: b = 4: c = 15
IF i$ = "3" THEN A = 15: b = 15: c = 4
IF i$ = "5" AND A = 4 THEN x = 100: GOTO 300
IF i$ = "5" AND b = 4 THEN x = 10: GOTO 500
IF i$ = "5" AND c = 4 THEN x = 10: GOTO 1000
GOTO 496
600
CLS
PSET (x, y): DRAW av1$
PSET (0, 60): DRAW "c7r2d110r320bu100l320bl2bu50f30r100e40r20e40r60d100r20u100d100bep8,7bl200p8,7bu30p210,7br180p210,7": CIRCLE (20, 10), 15, 2: PAINT (20, 10), 2: PSET (100, 49): DRAW "c8u10r20e10d20l30bep22,8"
PSET (60, 100): DRAW "c20d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc1rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (10, 169): DRAW "c6r25eu15l10u10r10u10hl25gd35bep4,6bu10br5c2r5u5l5u5r5l3ud12br10bu6c1u8d8br5c14r"
601
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 602
IF m > ha THEN 603
IF i$ = "5" THEN 604
IF STRIG(0) THEN 605
LOCATE 23, 9: PRINT "                               "
LOCATE 23: PRINT A$
GOTO 601
602
IF x < 68 THEN 610
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 601
603
IF x > 310 THEN x = 10: GOTO 100
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
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
LOCATE 23: PRINT "1 - affiche 2-distributeur "
608
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Vive la banque  B.N.R $$$  "
IF i$ = "2" THEN LOCATE 23: PRINT "Un ditributeur B.N.R ...  "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 601
GOTO 608
607
LOCATE 23: PRINT "Utilisez le ditributeur de billet"
i$ = INKEY$: IF i$ = "" THEN 607
LOCATE 23: PRINT "                                 "
GOTO 601
610
CLS
612
COLOR 2
LOCATE 2: PRINT "    Bienvenue dans le distibuteur A124"
COLOR 4
LOCATE 4: PRINT "   Machine en panne : ne pas toucher !!!"
COLOR 1
LOCATE 11: PRINT "              1- retirer"
LOCATE 12: PRINT "              2- r‚paration"
i$ = INKEY$
IF i$ = "1" THEN 611
IF i$ = "2" THEN 620
GOTO 612
611
CLS
SCREEN 12
COLOR 15
PRINT "ERROR IN DATA 11 : code break ... [@] non conforme :"
PRINT "Please change CODE 2 -> 6"
PRINT "              CODE 4 -> 7"
PRINT "         NOT CHANGE CODE 1 - 3 - 5"
PRINT "Programme stoped ... "
PRINT "Return to MS-DOS V 99.0"
PRINT "."
PRINT "."
PRINT "."
PRINT "UIGHF@]@]@^`"
613
i$ = INKEY$
IF i$ = "" THEN 613
SCREEN 13: x = 100: GOTO 600
620
CLS
PRINT "Programme de r‚paration ..."
PRINT " chiffre … entrer -> 7 . 1 . 6 . 3 . 5 "
PRINT " changer code 2 -> 6"
PRINT " changer code 4 -> 7"
PRINT " ne pas changer code 1 - 3 - 5"
INPUT " change code 1 ->", co1
INPUT " change code 2 ->", co2
INPUT " change code 3 ->", co3
INPUT " change code 4 ->", co4
INPUT " change code 5 ->", co5
IF co1 = 1 AND co2 = 6 AND co3 = 3 AND co4 = 7 AND co5 = 5 THEN 621
GOTO 611
621
PRINT " Programme O.K. "
PRINT " Restart now ..."
PRINT " Bienvenue : vous pouvez retirer ..."
PRINT " Votre compte est de : ", compt
INPUT " Entrez le montant du retrait :", retr1
retr = retr1
IF retr > compt THEN retr = compt
compt = compt - retr
SCREEN 13
ts = 1
COLOR 15: x = 100: GOTO 600
500
x = 10
533
CLS
PSET (x, y): DRAW av1$
PSET (0, 170): DRAW "c7r320bu150l320bup210,7": PSET (130, 100): DRAW "c2l10u10r10br2d10u5r10u5d10br2u10r10d5l5r5d5br2u10r10d5l10r5f5br2u10r5d5r5d5l10br12u10r10d10l10br12u10f10u10"
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
501
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 502
IF m > ha THEN 503
IF i$ = "5" THEN 504
IF STRIG(0) THEN 505
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 501
502
IF x < 10 THEN x = 300: GOTO 498
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 501
503
IF x > 310 THEN x = 20: GOTO 800
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (180, 169): DRAW "c7u40h5l40g5d40br25e3u5h3u5e3u5h3u5e3u5h3u"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 501
504
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 501
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 501
505
IF A$ = "REGARDER" THEN 506
IF A$ = "ACTION  " THEN 507
506
LOCATE 23: PRINT "1-insigne "
508
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "CHARBON : UNIMAK XXV "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 501
GOTO 508
507
LOCATE 23: PRINT "1- ENTRER CHEZ : UNIMAK XXV"
i$ = INKEY$
IF i$ = "5" THEN 501
IF i$ = "1" THEN 700
GOTO 507
700
CLS
CIRCLE (70, 100), 80, 247, , , .4
CIRCLE (320, 100), 170, 247, , , .3: PAINT (70, 100), 247: PAINT (310, 100), 247
PSET (0, 100): DRAW "c246r320bd70l321be10p243,246bu60bl10c247r320"
PSET (100, 102): DRAW "c6u30r5l20r5d30ue5f5h10e5f5g5e5h10e5f5g5e5h8f3e4l4u2c44u5dru3d6l2u2r3u2"
PSET (190, 110): DRAW "c6u30r5l20r5d30ue5f5h10e5f5g5e5h10e5f5g5e5h8f3e4l4u2c44u5dru3d6l2u2r3u2"
PSET (10, 108): DRAW "c6u30r5l20r5d30ue5f5h10e5f5g5e5h10e5f5g5e5h8f3e4l4u2c44u5dru3d6l2u2r3u2"
PSET (290, 106): DRAW "c6u30r5l20r5d30ue5f5h10e5f5g5e5h10e5f5g5e5h8f3e4l4u2c44u5dru3d6l2u2r3u2"
PSET (150, 160): DRAW "c4l5ulr2c15r4ubl3udrc20rulc9r2ul2ur2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc9uc6l0uc8lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd9c66r3url5ur5lul3bu7br3rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5bd5bl3c66l2"
PSET (100, 160): DRAW av1$
COLOR 8: LOCATE 1: PRINT "Je suis le contre-maŒtre , Que veux tu ?"
COLOR 1
PRINT "1 - un boulot"
PRINT "2 - renseignement "
PRINT "3 - rien"
701
i$ = INKEY$
IF i$ = "1" AND cartid = 0 THEN 702
IF i$ = "1" AND cartid = 1 THEN 704
IF i$ = "2" THEN 703
IF i$ = "3" THEN x = 100: COLOR 15: GOTO 500
GOTO 701
702
COLOR 8: LOCATE 1: PRINT "Tu n'as pas de papier ...               "
GOTO 701
703
COLOR 8: LOCATE 1: PRINT "Ici on extrait du carbonne XIV ...      "
GOTO 701
704
COLOR 8: LOCATE 1: PRINT "OK ...                                  "
i$ = INKEY$
IF i$ = "" THEN 704
710
CLS
711
COLOR 8
LOCATE 1: PRINT "Ton boulot : tu doit briser au laser les blocs de pierre ... 6000 $ ... Appuie sur feu pour tirer ..."
i$ = INKEY$
IF i$ = "" THEN 711
CLS
712
x = 0
s = 0
t = 10
A = 1
PSET (0, 121): DRAW "c6r320l150bu30c8u10rd5l2u6c7l300r600"
713
PSET (x, 120): DRAW "c0r7lul5"
x = x + A
PSET (x, 120): DRAW "c44r7lul5": PLAY "p60"
IF x > 320 THEN x = 0: t = t - 1: A = A + .25
IF t = 0 THEN 715
i$ = INKEY$
IF i$ = "5" OR STRIG(0) THEN 714
GOTO 713
714
PSET (0, 121): DRAW "c6r320l150bu30c12bdd28": sfxnum% = 21: playsfx sfx$(sfxnum%): PLAY "p60"
PSET (0, 121): DRAW "c6r320l150bu30c0bdd28"
PSET (x, 120): DRAW "c0r7lul5"
IF x > 158 AND x + 5 < 175 THEN sfxnum% = 4: playsfx sfx$(sfxnum%): s = s + 1: t = t - 1: A = A + .5: x = 0
A = A + .25
GOTO 713
715
CLS
IF s < 8 THEN COLOR 4: PRINT s; " rat‚ : tu est vir‚ . Reviens quand tu seras meilleur ..."
IF s > 7 THEN COLOR 1: PRINT s; " r‚ussi : c'est bon , voil… ton fric .   Reviens quand tu veux ...": retr = retr + 6000
PRINT " tu as "; retr; "$"
716
i$ = INKEY$
IF i$ = "" THEN 716
COLOR 15
GOTO 500
800
r = 0
x1 = 0
CLS
PSET (x, y): DRAW av1$
PSET (0, 170): DRAW "c7r320bu100l320bup210,7": CIRCLE (100, 20), 20, 14: PAINT (100, 20), 14
CIRCLE (300, 30), 5, 2: PAINT (300, 30), 2
801
PSET (x1, 60), 210: DRAW "c210r2ur2dr2url8rur9"
x1 = x1 + 1: IF x1 = 321 THEN r = 1
PSET (x1, 60), 210: DRAW "c8r2ur2dr2url8rur9"
806
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 802
IF m > ha THEN 803
IF i$ = "5" THEN 804
IF STRIG(0) THEN 805
LOCATE 23: PRINT A$
IF r = 0 THEN 801
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 806
802
IF x < 10 THEN x = 300: GOTO 533
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
IF r = 0 THEN 801
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 806
803
IF x > 310 THEN x = 10: GOTO 900
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 15
PSET (x, y): DRAW av1$
IF r = 0 THEN 801
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 806
804
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 801
IF A$ = "ACTION  " THEN A$ = "REGARDER"
IF r = 0 THEN 801
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 806
805
LOCATE 23: PRINT "rien                    "
i$ = INKEY$: IF i$ = "" THEN 805
LOCATE 23: PRINT "                         "
IF r = 0 THEN 801
IF r = 1 THEN PSET (x1, 10), 210: DRAW "c210r2ur2dr2url8rur9": GOTO 806
900
CLS
PSET (x, y): DRAW av1$
PSET (0, 170): DRAW "c7r320bu100l30h50l120g50l100be50p210,7"
PSET (300, 169): DRAW "c25l5ulr2c25r4ubl3udrc20rulc22r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc22uc6l0uc4lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd8c66r3url5ur5lul3bu6br2rulul3ulr4ul3c0urc0r2uc22l4rur4d5rdu5"
CIRCLE (10, 10), 15, 15: PAINT (10, 10), 15
901
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
IF x < 10 THEN x = 300: GOTO 800
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 901
903
IF x > 240 THEN 910
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
0 n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
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
LOCATE 23: PRINT "1 - un homme "
908
i$ = INKEY$
IF i$ = "1" AND ronny = 0 THEN LOCATE 23: PRINT "Un inconnu ... "
IF i$ = "1" AND ronny = 1 THEN LOCATE 23: PRINT "Ronny ... "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 901
GOTO 908
907
LOCATE 23: PRINT "aller parler a l'homme"
i$ = INKEY$: IF i$ = "" THEN 907
GOTO 901
910
CLS
COLOR 4
IF ronny = 1 THEN 1230
IF retr > 1200 THEN 912
LOCATE 1: PRINT "Je te fais des faux papiers si tu me donne 1200 $"
PRINT "Il y a une machine au taxi stop . Retire 1200 $ : pas moins"
911
i$ = INKEY$: IF i$ = "" THEN 911
COLOR 15
x = 200
GOTO 900
912
LOCATE 1: PRINT "Tu as 1200$ : O.K. Je te fais des papiers ?"
PRINT "1-oui  2-non"
i$ = INKEY$
IF i$ = "2" THEN 900
IF i$ = "1" AND cartid = 0 THEN 913
IF i$ = "1" AND cartid = 1 THEN 914
GOTO 912
913
PRINT "Oui ? Bon ... Les Voila": cartid = 1
retr = retr - 1200
GOTO 911
914
PRINT "Tu en as d‚j… ..."
GOTO 911
1000
CLS
PSET (x, y): DRAW av1$
CIRCLE (0, 0), 20, 7: PAINT (1, 1), 44, 7
PSET (0, 170): DRAW "c7r320bu130l10h20l200g30l30h100brbf80p210,7c7bd30r10d5l10u5br20bd10r10d5l10u5"
PSET (35, 49): DRAW "c8u30e10f5d10r5d25l20bep23,8": CIRCLE (0, 0), 20, 44
PSET (180, 169), 0: DRAW "c1l10ulr12dc15r3bl15l3c6br13bu2l7uc5lr9ul9ur9ul9ur9l2ul5br5buc66bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd13bl3c66l3rur2br11r2drl3uc8r3url5"
PSET (10, 110): DRAW "c120d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (290, 120): DRAW "c44d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
1001
PSET (180, 169), 0: DRAW "c1l10ulr12dc15r3bl15l3c6br13bu2l7uc5lr9ul9ur9ul9ur9l2ul5br5buc66bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd13bl3c66l3rur2br11r2drl3uc8r3url5"
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
IF x < 10 THEN x = 300: GOTO 498
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
PSET (180, 169), 0: DRAW "c1l10ulr12dc15r3bl15l3c6br13bu2l7uc5lr9ul9ur9ul9ur9l2ul5br5buc66bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd13bl3c66l3rur2br11r2drl3uc8r3url5"
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 1001
1003
IF x > 310 THEN x = 10: GOTO 1100
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
PSET (180, 169), 0: DRAW "c1l10ulr12dc15r3bl15l3c6br13bu2l7uc5lr9ul9ur9ul9ur9l2ul5br5buc66bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd13bl3c66l3rur2br11r2drl3uc8r3url5"
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
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
LOCATE 23: PRINT "1 - enseigne 2- mendiant "
1008
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "CITY : Zone de rˆve        "
IF i$ = "2" THEN LOCATE 23: PRINT "Vend des f‚railles ...          "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 1001
GOTO 1008
1007
1010
IF med = 1 THEN 1001
LOCATE 23: COLOR 15: PRINT "Acheter m‚daille : 15000 $ 1-oui 2-non"
i$ = INKEY$
IF med = 0 AND i$ = "1" THEN 1011
IF i$ = "2" OR med = 1 THEN 1001
GOTO 1010
1011
IF retr > 14999 THEN 1009
LOCATE 23: COLOR 15: PRINT "Tu n'as que  :"; retr; "$        "
1026
i$ = INKEY$: IF i$ = "" THEN 1026
GOTO 1001
GOTO 1010
1009
LOCATE 23: COLOR 1: PRINT "Merci : Prend cette m‚daille .        "
med = 1
retr = retr - 15000
i$ = INKEY$: IF i$ = "" THEN 1009
COLOR 15
GOTO 1001
1100
CLS
PSET (0, 170): DRAW "c7r320bu100l10u100bl280d100l30be20p210,7br291p210,7"
PSET (90, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (185, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (280, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (110, 100): DRAW "c44u10r10d5l5f5br2u10r10d10l10br17u5h5f5e5br2d10u10r10d5l5r5d5br2u10d10r10br2c6u10rd10u5r8br2u5d10br2u10rd10r5br2u10bl2l5br10r10l5d10lu10br8d10ru10br2r7bd5l7bd5r7br2u10rd10br2r7 "
PSET (118, 169): DRAW "c8u50r50d50u50r50d50"
IF ro = 0 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc4d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
IF ro = 1 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru7rd4c8d3e3c44udlbu3bl2c8u3e3hg2fl3uldlu2c44ulr2"
PSET (x, y): DRAW av1$
1101
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 1102
IF m > ha THEN 1103
IF i$ = "5" THEN 1104
IF STRIG(0) THEN 1105
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 1101
1102
IF x < 10 THEN x = 300: GOTO 1000
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (118, 169): DRAW "c8u50r50d50u50r50d50"
IF ro = 0 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc4d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
IF ro = 1 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru7rd4c8d3e3c44udlbu3bl2c8u3e3hg2fl3uldlu2c44ulr2"
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (118, 169): DRAW "c8u50r50d50u50r50d50"
IF ro = 0 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc4d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
IF ro = 1 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru7rd4c8d3e3c44udlbu3bl2c8u3e3hg2fl3uldlu2c44ulr2"
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 1101
1103
IF x > 300 THEN x = 10: GOTO 1200
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (118, 169): DRAW "c8u50r50d50u50r50d50"
IF ro = 0 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc4d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
IF ro = 1 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru7rd4c8d3e3c44udlbu3bl2c8u3e3hg2fl3uldlu2c44ulr2"
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (118, 169): DRAW "c8u50r50d50u50r50d50"
IF ro = 0 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc4d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
IF ro = 1 THEN PSET (230, 169): DRAW "c6l4r8lul6ruc4u10rd10ru7rd4c8d3e3c44udlbu3bl2c8u3e3hg2fl3uldlu2c44ulr2"
x = x + 15
PSET (x, y): DRAW av1$
GOTO 1101
1104
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 1101
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 1101
1105
IF A$ = "REGARDER" THEN 1106
IF A$ = "ACTION  " THEN 1107
1106
LOCATE 23: PRINT "1 - un guarde "
1108
i$ = INKEY$
IF i$ = "1" AND ro = 0 THEN LOCATE 23: PRINT "Tr‚s strict ... Trop mˆme ! "
IF i$ = "1" AND ro = 1 THEN LOCATE 23: PRINT "De la boullie ! "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 1101
GOTO 1108
1107
IF lro = 1 AND ro = 0 THEN LOCATE 23: PRINT "1 - entrer : hotel 2- decharger guarde ": GOTO 1109
LOCATE 23: PRINT "1 - entrer : hotel"
1109
i$ = INKEY$
IF i$ = "1" AND ro = 0 THEN LOCATE 23: PRINT "Le guarde ne veux pas ...             "
IF i$ = "1" AND ro = 1 THEN 1300
IF i$ = "2" AND lro = 1 AND ro = 0 THEN 1120
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 1101
GOTO 1109
1200
CLS
PSET (0, 170): DRAW "c7r320bu50l10u50l5u5r5u50l5u5r5u10bf2p8,7bh2bd60c7l320bd61br325c8d48u10r5l10bu10r10bu10l10bu10r10l10u8d48bl30bu150p210,7"
PSET (300, 169): DRAW "c1l5ulr2c15r4ubl3udrc1rulc9r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc9uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd8c66r3url5ur5lul3bu6br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5c15bd5bl6g"
PSET (20, 59): DRAW "c8u30r70e30r30d50r50d10l180be3p22,8"
CIRCLE (200, 20), 15, 56: PAINT (200, 20), 56
PSET (x, y): DRAW av1$
1201
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 1202
IF m > ha THEN 1203
IF i$ = "5" THEN 1204
IF STRIG(0) THEN 1205
LOCATE 23: PRINT A$
LOCATE 23, 9: PRINT "                               "
GOTO 1201
1202
IF x < 10 THEN x = 300: GOTO 1100
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 1201
1203
IF x > 240 THEN 1220
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 15
PSET (x, y): DRAW av1$
GOTO 1201
1204
IF A$ = "REGARDER" THEN A$ = "ACTION  ": GOTO 1201
IF A$ = "ACTION  " THEN A$ = "REGARDER"
GOTO 1201
1205
IF A$ = "REGARDER" THEN 1206
IF A$ = "ACTION  " THEN 1207
1206
LOCATE 23: PRINT "1 - un homme "
1208
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Tr‚s cool ...  "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 1201
GOTO 1208
1207
LOCATE 23: PRINT "aller parler au type ...       "
1209
i$ = INKEY$: IF i$ = "" THEN 1209
GOTO 1201
1220
IF med = 1 THEN 1221
LOCATE 23: PRINT "je ne parle qu'aux g‚n‚reux ..."
GOTO 1209
1221
CLS
LOCATE 1
PRINT "Salut mec ! Je t'ai vu acheter la m‚daille au vieux pauvre ..."
PRINT "J'aime les types comme toi ... Tu vois cette m‚daille ?"
PRINT "C'est la cl‚ de l'h“tel . Comment ? Vas voir Ronny : Il est … la  zone industrielle ... Il vend des faux papiers ..."
ronny = 1
1222
i$ = INKEY$
IF i$ = "" THEN 1222
GOTO 1200
1230
CLS
1231
LOCATE 1
PRINT "Te revoil… ? C'est Bill qui t'envoie ."
PRINT "Donne moi la m‚daille ... Merci ... Elle vaut de l'or ! "
PRINT "Maintenant je vais t'aider … entrer a l'hotel royal ..."
PRINT "Le guardien : C'est un cyborg : d‚connecte le ..."
PRINT "Il faut ‚tablir la communication C et D ... Deconnecte les autres ..."
1232
i$ = INKEY$
IF i$ = "" THEN 1232
lro = 1
GOTO 900
DRAW "c6l4r8lul6ruc4u10rd10ru7rd4c8d3e3c44udlbu3bl2c8u3e3hg2fl3uldlu2c44ulr2"
1120
CLS
PSET (10, 30): DRAW "c6l4r8lul6ruc4u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc4d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
LOCATE 1, 10: COLOR 2: PRINT "Cyborg ouvert ==>"
PSET (50, 50): DRAW "c2r200d100l200u100r40d100r40u100r40d100r40u100r40d30l200d40r200"
LOCATE 9, 10: PRINT "D"
LOCATE 9, 15: PRINT "E"
LOCATE 9, 20: PRINT "B"
LOCATE 9, 25: PRINT "A"
LOCATE 9, 30: PRINT "C"
LOCATE 17, 10: PRINT "1"
LOCATE 17, 15: PRINT "2"
LOCATE 17, 20: PRINT "3"
LOCATE 17, 25: PRINT "4"
LOCATE 17, 30: PRINT "5"
a1$ = "X": a2$ = "O": a3$ = "X": a4$ = "O": a5$ = "O"
LOCATE 2, 10: PRINT "1=on 2=off +/-=change 3=exit"
x$ = "X"
i = 1
1121
LOCATE 3, 10: PRINT "colonne :"; i
LOCATE 13, 10: PRINT a1$
LOCATE 13, 15: PRINT a2$
LOCATE 13, 20: PRINT a3$
LOCATE 13, 25: PRINT a4$
LOCATE 13, 30: PRINT a5$
IF a1$ = "O" AND a2$ = "X" AND a3$ = "X" AND a4$ = "X" AND a5$ = "O" THEN 1122
i$ = INKEY$
IF i$ = "+" AND i < 5 THEN i = i + 1
IF i$ = "-" AND i > 1 THEN i = i - 1
IF i$ = "1" THEN x$ = "O": COLOR 2
IF i$ = "2" THEN x$ = "X": COLOR 2
IF i = 1 THEN a1$ = x$
IF i = 2 THEN a2$ = x$
IF i = 3 THEN a3$ = x$
IF i = 4 THEN a4$ = x$
IF i = 5 THEN a5$ = x$
IF i$ = "3" THEN 1100
GOTO 1121
1122
COLOR 4
LOCATE 12, 7: PRINT "   Error ... Surchauffe !!!"
PLAY "p5p60"
CIRCLE (10, 3), 5, 14, , , .3: PAINT (11, 3), 14: sfxnum% = 6: playsfx sfx$(sfxnum%): PLAY "o0p10p60"
CIRCLE (10, 3), 5, 0, , , .3: PAINT (11, 3), 0
CIRCLE (10, 9), 10, 44: PAINT (11, 9), 44: sfxnum% = 6: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (10, 9), 10, 0: PAINT (11, 9), 0
CIRCLE (10, 13), 15, 44: PAINT (11, 13), 44: sfxnum% = 6: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (10, 13), 15, 0: PAINT (11, 13), 0
ro = 1: PSET (10, 30): DRAW "c6l4r8lul6ruc4u10rd10ru7rd4c8d3e3c44udlbu3bl2c8u3e3hg2fl3uldlu2c44ulr2"
x1 = 0: x2 = 200
LOCATE 13, 7: COLOR 2: PRINT "Programme arr‚t‚ : Mise en veille"
PLAY "p1p60"
1123
PSET (0, x1): DRAW "c2r320uc0l320"
PSET (0, x2): DRAW "c2r320dc0l320"
x1 = x1 + .1
x2 = x2 - .1
IF x1 > x2 THEN 1100
COLOR 15
GOTO 1123
1300
CLS
PLAY "p3p60"
PSET (270, 169): DRAW "c8l5ulr2c8r4ubl3udrc20rulc7r3ul3ur2ul2ur3ul3ur3uc6l4dc9uc1l0uc8lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd12c64r3url5ur5lul3bu10br3rulul3ulr4ul3c15urc64r2uc6l4rur4d5rdu5bd4bl2gl2"
PSET (260, 169): DRAW "c6u14l14d14r14bhp6,6bu14c15l10bd15br50c6u50r50d50l50bep6,6"
PSET (0, 170): DRAW "c7r320bu150l320r140dc6d5f10l20e10bdbdp6,6"
PSET (20, 169): DRAW "c6e5l20f5r10bup6,6bl4bu5c2u10c4l2r4url6ulr8ul8ur8lul6"
PSET (180, 169): DRAW "c6e5l20f5r10bup6,6bl4bu5c2u10c44l2r4url6ulr8ul8ur8lul6"
PSET (60, 90): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (230, 90): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (100, 169): DRAW "c7u40r40d40bl20u10e5u10h10u5lbdp8,7br20p8,7"
PSET (230, 169): DRAW av1$
LOCATE 23: COLOR 15: PRINT "O— se trouve Mr Hoara ?"
PLAY "p1p60"
LOCATE 23: COLOR 1: PRINT "Il revient dans 5 minutes ..."
PLAY "p1p60"
LOCATE 23: COLOR 1: PRINT "Vous pouvez l'attendre ici ..."
PLAY "p1p60"
LINE (220, 169)-(245, 139), 0, BF
PSET (230, 169): DRAW "c15l4r8lul6ruc1u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
LOCATE 1: COLOR 1: PRINT "                              "
CIRCLE (120, 150), 19, 44: PAINT (120, 150), 44: sfxnum% = 12: playsfx sfx$(sfxnum%)
CIRCLE (120, 150), 19, 0: PAINT (120, 150), 0
LINE (220, 169)-(245, 139), 0, BF
PSET (230, 169): DRAW ar1$
PSET (120, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PLAY "p5p60"
PSET (120, 169): DRAW "c0l4r8lul6ruu10rd10ru10rd10ru11l4uu7rd7ru7rd7ru7rd7ru7drd6ru6bl12d6ru6rud7ru7br4bulurur2l4ur4uludlludlu2r2dur2dul4gd4rbr3ru4h2rl3dlbd15br5d4uru3bl7d4u4ld3"
PSET (120, 169): DRAW "c6r5url2l4ubr3udlc15lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lrur3url4ur3c14ulc66l2uc6r4lul4d5ldu5"
PLAY "p5p60"
LOCATE 23: COLOR 7: PRINT "Kane . Vous Etes en etat d'arrestation !"
PLAY "p1p60"
LOCATE 23: COLOR 7: PRINT "Vous vouliez vous rebeller !            "
PLAY "p1p60"
LOCATE 23: COLOR 7: PRINT "Mr HOARA Vous a d‚nonc‚ !   "
PLAY "p1p60"
x1 = 0
x2 = 200
1223
PSET (0, x1): DRAW "c8r320uc0l320"
PSET (0, x2): DRAW "c8r320dc0l320"
x1 = x1 + .1
x2 = x2 - .1
IF x1 > x2 THEN 1224
COLOR 15
GOTO 1223
1224
CLS
LOCATE 1: COLOR 15: PRINT "Kane aprŠs un proc‚s sommaire va ˆtre d‚port‚ sur la colonnie P“lux IX . Il y est condamn‚ … vie aux travaux forc‚s ..."
PLAY "p1p1p1p1p60"
CLS
1225
PSET (10, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (130, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (290, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 70): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (20, 80): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
CIRCLE (300, 10), 20, 7: PAINT (300, 10), 7: CIRCLE (287, 5), 3, 8, , 5: CIRCLE (305, 18), 5, 8, , 4
CIRCLE (155, 200), 200, 210, , , .3
x1 = 0
1226
PSET (x1, 60), 210: DRAW "c0r2ur2dr2url8rur9"
x1 = x1 + 1: IF x1 = 150 THEN 1227
PSET (x1, 60), 210: DRAW "c8r2ur2dr2url8rur9"
m = STICK(0)
n = STICK(1)
GOTO 1226
1227
PSET (x1, 60), 210: DRAW "c8r2ur2dr2url8rur9"
h1 = 60
sfxnum% = 24: playsfx sfx$(sfxnum%)
1228
PSET (153, h1), 14: h1 = h1 + 1: PLAY "p60"
IF h1 > 180 THEN 1229
GOTO 1228
1229
sfxnum% = 25: playsfx sfx$(sfxnum%)
CLS
LOCATE 1: PRINT "Il est t‚l‚port‚ sur la base."
PSET (100, 50): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
CIRCLE (300, 10), 20, 7: PAINT (300, 10), 7: CIRCLE (287, 5), 3, 8, , 5: CIRCLE (305, 18), 5, 8, , 4
PSET (0, 170): DRAW "c210r320l300uc7u100r30d30r30d2r5u2r5d2r5u2r5d2r5u2r5u30r30d50f30r30d2r5u5r5u2r5u2r5e30r20d30r10d27l259bep8,7bd30p210,210"
h1 = 10
sfxnum% = 24: playsfx sfx$(sfxnum%)
1252
PSET (193, h1), 14: h1 = h1 + 1: PLAY "o0p60"
IF h1 > 148 THEN 1253
GOTO 1252
1253
sfxnum% = 25: playsfx sfx$(sfxnum%)
CLS
LOCATE 1: COLOR 15
PRINT "             ACTE II"
PRINT "      Evasion de la citadelle"
PLAY "p1p10"
RUN "ac2.bas"

SUB playsfx (sfx$)
chan% = VAL(MID$(sfx$, 61, 4))
FOR in = 1 TO 60 STEP 4
  reg$ = MID$(c$(chan%), in, 4): reg% = VAL(reg$)
  dat$ = MID$(sfx$, in, 4): dat% = VAL(dat$)
  OUT &H388, reg%: FOR d% = 1 TO 6: b% = INP(&H388): NEXT
  OUT &H389, dat%: FOR d% = 1 TO 35: b% = INP(&H388): NEXT
NEXT

END SUB

