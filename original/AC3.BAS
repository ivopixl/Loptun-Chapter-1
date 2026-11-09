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
av1$ = "c6r5url2l4ubr3udlc2lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar1$ = "c6l5ulr2r4ubl3udrc2rulc2r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc2uc6l0uc2lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
av2$ = "c6r5url2l4ubr3udlc2lurc2e7lg7le7r3c2f7rh7rf8c6ud2l3udr4rldl4bu11bl9c6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar2$ = "c6l5ulr2r4ubl3udrc2rulc2h7rf7rh7l3c2g7le7lg8c6ud2r3udl4lrdr4bu11br9c6l4dc2uc6l0uc2lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
pa$ = "c6r5url2l4ubr3udlc2lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dl"
OPEN "joy.map" FOR BINARY AS 1
nive = 1
PUT 1, 42, nive
GET 1, 3, hr
GET 1, 13, ga
GET 1, 23, ha
GET 1, 33, gr
ha = ha - 15: hr = hr + 15
ga = ga - 15: gr = gr + 15
CLOSE
sac = 0
bar = 0: fric = 0
blast = 0
a$ = "REGARDER"
LOCATE 1: COLOR 15
hab = 0: y = 169: pf = 0: vis = 0
1225
PSET (10, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (130, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (290, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 70): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (20, 80): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
CIRCLE (300, 10), 20, 7: PAINT (300, 10), 7: CIRCLE (287, 5), 3, 8, , 5: CIRCLE (305, 18), 5, 8, , 4
CIRCLE (155, 200), 200, 210, , , .3
PRINT "Kane est alors pris en chasse ! Son seulespoir est de rentrer en hyper espace !"
x = 0: h = 100: a = 2
1
PSET (x, h + a), 210: DRAW "c0r3ulr5lul2l2dl"
PSET (x - 40, h), 210: DRAW "c0r2ur2dr2url8rur9"
x = x + 4
PSET (x, h + a), 210: DRAW "c15r3ulr5luc9l2c15l2dl"
PSET (x - 40, h), 210: DRAW "c8r2ur2dr2url8rur9"
PLAY "p64"
IF x < 100 THEN 1
PSET (x, h + a), 210: DRAW "c15r3ulr5luc9l2c15l2dl"
PSET (x - 40, h), 210: DRAW "c8r2ur2dr2url8rur10c44r320"
sfxnum% = 21: playsfx sfx$(sfxnum%)
PLAY "p60p60"
PSET (x - 40, h), 210: DRAW "c8r2ur2dr2url8rur10c0r320"
PSET (x - 40, h), 210: DRAW "c0r2ur2dr2url8rur9"
2
PSET (x, h + a), 210: DRAW "c0r3ulr5lul2l2dl"
PSET (x - 40, h + 1), 210: DRAW "c0r2ur2dr2url8rur9"
x = x + 4
PSET (x, h + a), 210: DRAW "c15r3ulr5luc9l2c15l2dl"
PSET (x - 40, h + 1), 210: DRAW "c8r2ur2dr2url8rur9"
PLAY "p64"
IF x < 320 THEN 2
100
CLS
x = 120: y = 100: a1 = 160: a2 = 160: b1 = 100: b2 = 100: c = 20: d = 100: ray = 100
r = 1: v = 2: g = 1
101
LINE (a1, b1)-(a2, b2), 0, B, &O10
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
CIRCLE (c, d), ray, 0
a1 = a1 - r: b1 = b1 - r: a2 = a2 + r: b2 = b2 + r: ray = ray - g
IF ray < 2 THEN ray = 100: c = x + 25: d = y: g = g + .03
IF b1 < 0 THEN a1 = 160: a2 = 160: b1 = 100: b2 = 100: r = r + .01: sfxnum% = 22: playsfx sfx$(sfxnum%)
LINE (a1, b1)-(a2, b2), 44, B, &O10
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
CIRCLE (c, d), ray, 4
IF g >= 3.5 THEN 250
IF ray < 3 AND c > x AND c < x + 53 AND d < y + 3 AND d > y - 9 THEN 150
t = t + 1: IF t > 21 THEN t = 0
IF v < 0 THEN 200
IF t = 10 THEN m = STICK(0)
IF t = 10 THEN n = STICK(1)
IF i$ = "E" THEN RUN "loptun.bas"
IF m > ha AND x < 300 THEN 110
IF m < hr AND x > 10 THEN 115
IF n > ha AND y < 190 THEN 120
IF n < hr AND y > 10 THEN 125
GOTO 101
110
PSET (x, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
x = x + 1
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
GOTO 101
115
PSET (x, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
x = x - 1
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
GOTO 101
120
PSET (x, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
y = y + 1
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
GOTO 101
125
PSET (x, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
y = y - 1
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
GOTO 101
150
CIRCLE (x + 20, y), 10, 43: PAINT (x + 20, y), 44, 43
sfxnum% = 4: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (x + 20, y), 10, 0: PAINT (x + 20, y), 0
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
v = v - 1
GOTO 101
200
CIRCLE (x + 20, y), 20, 43, , , .3: PAINT (x + 20, y), 44, 43
sfxnum% = 4: playsfx sfx$(sfxnum%): PLAY "p5p60"
PSET (x, y): DRAW "c42r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
CIRCLE (x + 20, y), 20, 0, , , .3: PAINT (x + 20, y), 0
PSET (x, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
LOCATE 1: PRINT "Recomposition du vaisseau !": PLAY "p1p64": GOTO 100
250
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
sfxnum% = 12: playsfx sfx$(sfxnum%): PLAY "p10p60"
sfxnum% = 13: playsfx sfx$(sfxnum%): PLAY "p10p60"
PSET (x, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
PSET (x, y): DRAW "c1r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p10"
PSET (x, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
PSET (x + 5, y): DRAW "s3c1r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p10"
PSET (x + 5, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
PSET (x + 12, y): DRAW "s2c1r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p10"
PSET (x + 12, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
PSET (x + 20, y): DRAW "s1c1r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p10"
PSET (x + 20, y): DRAW "c0r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2s4"
300
CLS
PSET (90, 50): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (150, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (200, 150): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 170): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (120, 80): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
LOCATE 1: COLOR 15
PRINT "Kane s'est endormi … cause du choc provoqu‚ par le saut dans l'hyper espace . Mais o— est il ?"
x = 0: h = 100: a = 2
301
PSET (x, h + a), 210: DRAW "c0r3ulr5lul2l2dl"
x = x + 1
PSET (x, h + a), 210: DRAW "c15r3ulr5luc9l2c15l2dl"
PLAY "p60"
IF x < 320 THEN 301
302
CLS
PSET (10, 50): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (150, 90): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 60): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
CIRCLE (100, 190), 250, 115, , , .3: PAINT (100, 190), 6, 115
PRINT "Une plan‚te non r‚pertori‚ sur la carte apparait alors !"
PSET (120, 150): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p1p1p10"
x = 120: y = 150
PSET (x, y): DRAW "c6r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
PSET (x, y): DRAW "c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p10"
PSET (x, y): DRAW "c6r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
PSET (x + 5, y): DRAW "s3c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p10"
PSET (x + 5, y): DRAW "c6r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
PSET (x + 12, y): DRAW "s2c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p10"
PSET (x + 12, y): DRAW "c6r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2"
PSET (x + 20, y): DRAW "s1c15r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rc9rdbl5ur2"
PLAY "p10"
PSET (x + 20, y): DRAW "c6r10ur5ur5dr5dr10l7ul3ul5ul5dl5dl3dl7br18bu3u3d2rrdbl5ur2s4"
304
CLS
CIRCLE (300, 10), 20, 7: PAINT (300, 10), 7: CIRCLE (287, 5), 3, 8, , 5: CIRCLE (305, 18), 5, 8, , 4
PSET (0, 170): DRAW "c6r320l100uc8l200u100r5d5r5ur10u20r10d80r10u50r20u50r20d50e10r10d20r10u50r10u50r30d100e10r10e10r10u50e10r10d156l10bep18,8bd10p6,6bl200bu30"
LOCATE 1: PRINT "Une ville se dessine … l'horizon et Kanes'y pose ."
PLAY "p1p1p1p64"
CLS
PRINT "Apr‚s avoir att‚rit sur le spaceport ,  Kane d‚couvre qu'il se trouve sur la base de Loptun … plusieurs ann‚es lumi‚res de la terre !"
PLAY "p1p1p1p1p1p1p64"
CLS
399
x = 150
y = 169
400
CLS
PSET (0, 170): DRAW "c7r320bu70l320bup230,7"
PSET (20, 69): DRAW "c20u70f5r15d65l20bep21,20"
PSET (0, 50): DRAW "c7r30r30e50r30e50d50f10r50f10r20e50bd90bl100p8,7"
PSET (300, 115): DRAW "c7r10u5l10d5"
PSET (10, 115): DRAW "c4d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (50, 110): DRAW "c1d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (x, y): DRAW av1$
401
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 402
IF m > ha THEN 403
IF i$ = "E" THEN RUN "loptun.bas"
IF i$ = "5" THEN 404
IF STRIG(0) THEN 405
LOCATE 23: PRINT a$
LOCATE 23, 9: PRINT "                               "
GOTO 401
402
IF x < 10 THEN x = 300: GOTO 600
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 401
403
IF x > 310 THEN x = 10: GOTO 500
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 15
PSET (x, y): DRAW av1$
GOTO 401
404
IF a$ = "REGARDER" THEN a$ = "ACTION  ": GOTO 401
IF a$ = "ACTION  " THEN a$ = "REGARDER"
GOTO 401
405
IF a$ = "REGARDER" THEN 406
IF a$ = "ACTION  " THEN 407
406
LOCATE 23: PRINT "1 - affiche rouge  2- affiche bleue "
408
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Habillez-vous chez Jolly              "
IF i$ = "2" THEN LOCATE 23: PRINT "Aristo est partout ! Votez Aristo IV !"
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 401
GOTO 408
407
LOCATE 23: PRINT "rien  "
i$ = INKEY$: IF i$ = "" THEN 407
GOTO 401
500
CLS
PSET (0, 170): DRAW "c7r320bu70l10u150l300d150l10rbup8,7br310p8,7"
PSET (70, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (170, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (270, 10): DRAW "c7l20d20r20u20d10l20r10u10d20bep180,7bu10p180,7bl10p180,7bd10p180,7"
PSET (125, 90): DRAW "c40u10r5f5g5f5g5l5u10br12bd10u15e5r5f5d5l5r5d10br2u15e5r5f5g5f5d5"
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc44l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (250, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2r3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc115r4lul4d5ldu5"
PSET (280, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c66r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5"
PSET (125, 170): DRAW "c7u50r50d50l25u50"
PSET (x, y): DRAW av1$
501
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 502
IF m > ha THEN 503
IF i$ = "5" THEN 504
IF STRIG(0) THEN 505
LOCATE 23: PRINT a$
LOCATE 23, 9: PRINT "                               "
GOTO 501
502
IF x < 10 THEN x = 300: GOTO 400
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc44l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (125, 170): DRAW "c7u50r50d50l25u50"
x = x - 5
PSET (x, y): DRAW ar2$
PSET (250, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2r3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc115r4lul4d5ldu5"
PSET (280, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c66r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5"
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc44l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (125, 170): DRAW "c7u50r50d50l25u50"
x = x - 15
PSET (x, y): DRAW ar1$
PSET (250, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2r3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc115r4lul4d5ldu5"
PSET (280, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c66r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5"
GOTO 501
503
IF x > 310 THEN x = 10: GOTO 800
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc44l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (125, 170): DRAW "c7u50r50d50l25u50"
x = x + 5
PSET (x, y): DRAW av2$
PSET (250, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2r3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc115r4lul4d5ldu5"
PSET (280, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c66r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5"
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc15u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc44l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (125, 170): DRAW "c7u50r50d50l25u50"
x = x + 15
PSET (x, y): DRAW av1$
PSET (250, 169): DRAW "c6r5url2l4ubr3udlc4lurc4l2r3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc115r4lul4d5ldu5"
PSET (280, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc44lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c66r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc66r2uc14l4rur4d5rdu5"
GOTO 501
504
IF a$ = "REGARDER" THEN a$ = "ACTION  ": GOTO 501
IF a$ = "ACTION  " THEN a$ = "REGARDER"
GOTO 501
505
IF a$ = "REGARDER" THEN 506
IF a$ = "ACTION  " THEN 507
506
LOCATE 23: PRINT "1 - Videur  2- Les 2 types qui parlent "
508
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Il est arm‚                           "
IF i$ = "2" THEN LOCATE 23: PRINT "Ils me regardent bizarement !         "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 501
GOTO 508
507
LOCATE 23: COLOR 15: PRINT "1-entrer"
i$ = INKEY$:
IF i$ = "1" THEN 510
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 501
GOTO 507
510
IF bar = 1 THEN LOCATE 23: COLOR 15: PRINT "Pas le temps de boire ! ": PLAY "p1p60": LOCATE 23: COLOR 15: PRINT "                                      ": GOTO 501
IF hab = 0 THEN LOCATE 23: COLOR 2: PRINT "Pas de soldats ici ! ": sfxnum% = 6: playsfx sfx$(sfxnum%): PLAY "p1p60": LOCATE 23: COLOR 15: PRINT "                                      ": GOTO 501
520
CLS
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c4l4uc15u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc44l4gd4rbr3ru4h2rl3dlbd10br12c66r3ul3d2r3u2ld3c40rl3bu3r3luluruc4l"
PSET (0, 170): DRAW "c7r320bu100l320bd100r50uc6u15r320d15l320bep112,6bu97c6r320d20l320u20r100bdp112,6"
PSET (125, 110): DRAW "c12u10r5f5g5f5g5l5u10br12bd10u15e5r5f5d5l5r5d10br2u15e5r5f5g5f5d5"
PSET (210, 169): DRAW "c6r5url2l4ubr3udlc0lurc1l2r3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc19rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PSET (260, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc43lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c67r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc67r2uc115l4rur4d5rdu5"
PSET (10, 169): DRAW "c6r5url2l4ubr3udlc0lurc4l2ur3ul3ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc56rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc2r4lul4d5ldu5"
PSET (180, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc40lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c65r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc65r2uc8l4rur4d5rdu5"
PSET (150, 169): DRAW av1$
COLOR 7: LOCATE 1: PRINT "Hey mec ! Que veux-tu ?"
COLOR 15: PRINT "Je cherche un cargo pour la terre !"
COLOR 7: PRINT "Tu as du fric ?"
COLOR 15: PRINT "Non ! Je suis fauch‚ !"
COLOR 7: PRINT "Je te propose un march‚ : tu me bat au  tir au laser et je te prend !"
COLOR 15: PRINT "1- ok"
PRINT "2- non !"
530 : i$ = INKEY$
IF i$ = "1" THEN 550
IF i$ = "2" THEN x = 150: GOTO 500
GOTO 530
550
CLS
CIRCLE (150, 100), 5, 4
CIRCLE (150, 100), 15, 4
CIRCLE (150, 100), 35, 4
CIRCLE (150, 100), 55, 4
CIRCLE (150, 100), 75, 4
CIRCLE (150, 100), 95, 4
LOCATE 1: COLOR 7: PRINT "Je commence !": PLAY "p3p60"
sfxnum% = 4: playsfx sfx$(sfxnum%)
PLAY "p10p10"
CIRCLE (152, 105), 2, 44
PRINT "… toi !"
LOCATE 1, 18: COLOR 15: PRINT "bouton 1 puis bouton 2"
x = 70: y = 200
551
PSET (x, 10): DRAW "c53r5"
x = x + 5: IF x > 280 THEN 552
PLAY "p60"
i$ = INKEY$
IF STRIG(1) OR i$ = "5" THEN 552
GOTO 551
552
PSET (250, y): DRAW "c53u5"
y = y - 5: IF y < 20 THEN 553
PLAY "p60"
i$ = INKEY$
IF STRIG(3) OR i$ = "5" THEN 553
GOTO 552
553
sfxnum% = 4: playsfx sfx$(sfxnum%)
CIRCLE (x, y), 2, 42: PLAY "p3p60"
IF x > 140 AND x < 160 AND y < 110 AND y > 90 THEN 554
CLS
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c4l4uc15u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc44l4gd4rbr3ru4h2rl3dlbd10br12c66r3ul3d2r3u2ld3c40rl3bu3r3luluruc4l"
PSET (0, 170): DRAW "c7r320bu100l320bd100r50uc6u15r320d15l320bep112,6bu97c6r320d20l320u20r100bdp112,6"
PSET (125, 110): DRAW "c12u10r5f5g5f5g5l5u10br12bd10u15e5r5f5d5l5r5d10br2u15e5r5f5g5f5d5"
PSET (210, 169): DRAW "c6r5url2l4ubr3udlc0lurc1l2r3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc19rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PSET (260, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc43lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c67r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc67r2uc115l4rur4d5rdu5"
PSET (10, 169): DRAW "c6r5url2l4ubr3udlc0lurc4l2ur3ul3ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc56rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc2r4lul4d5ldu5"
PSET (180, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc40lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c65r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc65r2uc8l4rur4d5rdu5"
PSET (150, 169): DRAW av1$
COLOR 7: PRINT "Tu as perdu , veux-tu rejouer ?"
COLOR 15
PRINT "1- oui"
PRINT "2- non"
555
i$ = INKEY$: IF i$ = "2" THEN x = 150: GOTO 500
IF i$ = "1" THEN 550
GOTO 555
554
CLS
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c4l4uc15u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc44l4gd4rbr3ru4h2rl3dlbd10br12c66r3ul3d2r3u2ld3c40rl3bu3r3luluruc4l"
PSET (0, 170): DRAW "c7r320bu100l320bd100r50uc6u15r320d15l320bep112,6bu97c6r320d20l320u20r100bdp112,6"
PSET (125, 110): DRAW "c12u10r5f5g5f5g5l5u10br12bd10u15e5r5f5d5l5r5d10br2u15e5r5f5g5f5d5"
PSET (210, 169): DRAW "c6r5url2l4ubr3udlc0lurc1l2r3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc19rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
PSET (260, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc43lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c67r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc67r2uc115l4rur4d5rdu5"
PSET (10, 169): DRAW "c6r5url2l4ubr3udlc0lurc4l2ur3ul3ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc56rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc2r4lul4d5ldu5"
PSET (180, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc40lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c65r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc65r2uc8l4rur4d5rdu5"
PSET (150, 169): DRAW av1$
COLOR 7: PRINT "Tu as gagn‚ , rejoins-moi au spaceport dans 1 heure !"
PLAY "p1p1p1p10": x = 150: y = 169: bar = 1: GOTO 500
600
CLS
PSET (0, 170): DRAW "c7r320bu70l320bup230,7"
PSET (0, 10): DRAW "c7r50f50r50e50r50f50r50bl100bdp8,7"
CIRCLE (290, 20), 20, 43: PAINT (290, 20), 44, 43
PSET (10, 115): DRAW "c7r10u5l10d5"
PSET (20, 120): DRAW "c7r10u5l10d5"
PSET (150, 115): DRAW "c44d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (x, y): DRAW av1$
601
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 602
IF m > ha THEN 603
IF i$ = "5" THEN 604
IF STRIG(0) THEN 605
LOCATE 23: PRINT a$
LOCATE 23, 9: PRINT "                               "
GOTO 601
602
IF x < 10 THEN x = 300: GOTO 700
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
IF x > 310 THEN x = 10: GOTO 400
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
IF a$ = "REGARDER" THEN a$ = "ACTION  ": GOTO 601
IF a$ = "ACTION  " THEN a$ = "REGARDER"
GOTO 601
605
IF a$ = "REGARDER" THEN 606
IF a$ = "ACTION  " THEN 607
606
LOCATE 23: PRINT "1 - affiche "
608
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Visitez la bar : Chez jomo !    "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 601
GOTO 608
607
LOCATE 23: PRINT "rien  "
i$ = INKEY$: IF i$ = "" THEN 607
GOTO 601
700
CLS
PSET (0, 170): DRAW "c7r320bu70l320bup230,7"
PSET (10, 169): DRAW "c15r5url2l4ubr3udlc0lurc4l2ur3ul3ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc4uc6r0uc56rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd7c66l3ulr5ul5rur3bu5bl2lurur3url4ur3c15ulc66l2uc5r4hghghd5hehe"
PSET (0, 10): DRAW "c7r50e50r50f50r50f50r50e50bd10bl150p8,7"
CIRCLE (10, 0), 10, 2: PAINT (10, 1), 2
PSET (210, 115): DRAW "c7r10u5l10d5"
PSET (310, 120): DRAW "c7r10u5l10d5"
PSET (250, 115): DRAW "c115d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (x, y): DRAW av1$
701
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 702
IF m > ha THEN 703
IF i$ = "5" THEN 704
IF STRIG(0) THEN 705
LOCATE 23: PRINT a$
LOCATE 23, 9: PRINT "                               "
GOTO 701
702
IF x < 60 THEN 710
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 701
703
IF x > 310 THEN x = 10: GOTO 600
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 15
PSET (x, y): DRAW av1$
GOTO 701
704
IF a$ = "REGARDER" THEN a$ = "ACTION  ": GOTO 701
IF a$ = "ACTION  " THEN a$ = "REGARDER"
GOTO 701
705
IF a$ = "REGARDER" THEN 706
IF a$ = "ACTION  " THEN 707
706
LOCATE 23: PRINT "1 - affiche "
708
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Achetez Toxic in the truk !    "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 701
GOTO 708
707
LOCATE 23: PRINT "1- parler au type  "
i$ = INKEY$
IF i$ = "5" THEN 701
IF i$ = "1" THEN 710
GOTO 707
710
CLS
IF hab = 1 THEN 711
IF fric < 100 THEN COLOR 9: PRINT "T'as pas assez de fric , tire toi !": sfxnum% = 17: playsfx sfx$(sfxnum%): PLAY "p1p1p60": COLOR 15: x = 100: GOTO 700
COLOR 9
PRINT "Je te vend des habits pour aller au bar ? 100 $ ?"
COLOR 15: PRINT "O.K.!": sfxnum% = 16: playsfx sfx$(sfxnum%): hab = 1: fric = fric - 100
PLAY "p1p1p1p10"
av1$ = "c6r5url2l4ubr3udlc1lurc1l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar1$ = "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc15lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
av2$ = "c6r5url2l4ubr3udlc1lurc1e7lg7le7r3c1f7rh7rf8c6ud2l3udr4rldl4bu11bl9c6r4dc1uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc6r4lul4d5ldu5"
ar2$ = "c6l5ulr2r4ubl3udrc1rulc1h7rf7rh7l3c1g7le7lg8c6ud2r3udl4lrdr4bu11br9c6l4dc1uc6l0uc15lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd5c66r3url5ur5lul3bu3br2rulul3ulr4ul3c15urc66r2uc6l4rur4d5rdu5"
pa$ = "c6r5url2l4ubr3udlc2lurc1l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc1uc6r0uc15rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc6l4gd4rbr3ru4h2rl3dl"
x = 150: GOTO 700
711
IF sac = 2 THEN 712
COLOR 9
PRINT "Bonne journ‚e !"
PLAY "p1p10"
x = 150: GOTO 700
712
sac = 1
COLOR 9
PRINT "Ah t'as mon sac de fric ! Merci , porte ceci … Roy !"
PLAY "p1p1p10"
x = 150: GOTO 700
800
CLS
PSET (0, 170): DRAW "c7r320bu70l320bup230,7"
CIRCLE (290, 20), 20, 43: PAINT (290, 20), 44, 43
PSET (310, 99): DRAW "c20u70h20l20d90r40bhp21,20"
PSET (0, -10): DRAW "c7r50d50r100u50r100d50f50r50l50bl100p8,7"
PSET (210, 115): DRAW "c7r10u5l10d5"
PSET (200, 120): DRAW "c7r10u5l10d5"
PSET (150, 115): DRAW "c40d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
IF fric = 0 THEN PSET (100, 169): DRAW "c6r5url7rur5"
PSET (x, y): DRAW av1$
801
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 802
IF m > ha THEN 803
IF i$ = "5" THEN 804
IF STRIG(0) THEN 805
LOCATE 23: PRINT a$
LOCATE 23, 9: PRINT "                               "
GOTO 801
802
IF x < 10 THEN x = 300: GOTO 500
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
IF fric = 0 THEN PSET (100, 169): DRAW "c6r5url7rur5"
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
IF fric = 0 THEN PSET (100, 169): DRAW "c6r5url7rur5"
GOTO 801
803
IF x > 300 THEN 820
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
IF fric = 0 THEN PSET (100, 169): DRAW "c6r5url7rur5"
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 15
PSET (x, y): DRAW av1$
IF fric = 0 THEN PSET (100, 169): DRAW "c6r5url7rur5"
GOTO 801
804
IF a$ = "REGARDER" THEN a$ = "ACTION  ": GOTO 801
IF a$ = "ACTION  " THEN a$ = "REGARDER"
GOTO 801
805
IF a$ = "REGARDER" THEN 806
IF a$ = "ACTION  " THEN 807
806
LOCATE 23: PRINT "1 - la rue  "
808
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Il y a un porte- feuille !    ": pf = 1
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 801
GOTO 808
807
IF pf = 0 OR fric > 0 THEN LOCATE 23: PRINT "Rien ...                 "
IF pf = 1 AND fric = 0 THEN LOCATE 23: PRINT "1- prendre porte-feuille "
810
i$ = INKEY$
IF i$ = "1" AND pf = 1 AND fric < 100 THEN LOCATE 23: PRINT "Je prend que le fric !    ": fric = 200: sfxnum% = 16: playsfx sfx$(sfxnum%): PSET (100, 169): DRAW "c0r5url7rur5"
IF i$ = "5" THEN 801
GOTO 810
820
IF bar = 0 THEN LOCATE 23: PRINT "Je ne sais pas o— aller !": GOTO 801
900
CLS
c1 = 4: c2 = 15: c3 = 15
PSET (60, 180): DRAW "c2r200u150l200d150r100u50d20l90u20r20br20bu20u50d10r60u20r50u19"
901
COLOR c1: LOCATE 21, 16: PRINT "Bar"
COLOR c2: LOCATE 6, 10: PRINT "Spaceport"
COLOR c3: LOCATE 14, 20: PRINT "Centre-ville"
i$ = INKEY$
IF i$ = "3" THEN c1 = 4: c2 = 15: c3 = 15
IF i$ = "2" THEN c3 = 4: c2 = 15: c1 = 15
IF i$ = "1" THEN c2 = 4: c1 = 15: c3 = 15
IF i$ = "5" THEN 902
GOTO 901
902
IF c1 = 4 THEN x = 300: GOTO 800
IF c2 = 4 THEN x = 300: GOTO 1000
IF c3 = 4 THEN x = 10: GOTO 1200
1000
CLS
PSET (0, 170): DRAW "c7r320bu50l200u20r200l100bdp8,7bd19bl20c7d50l10u50bfp230,7"
PSET (200, 100): DRAW "c7u30r50d30u31c7u10l50d10r50bhp9,7bd5p8,7bu15c7ru10l50d10r50bhp8,7bd3bl12c15f5rf2bl125bd35c7l200r100bup230,7"
PSET (50, 169): DRAW av1$
PSET (250, 169): DRAW "c6r5url2l4ubr3udlc2lurc2l2ur3ul3ur3ul2ur2ul3ur3ul3uc6r4dc2uc6r0uc2rl6ulr7ul7ur7ul7ur7ul7ur7lul5br6bd5c66l3ulr5ul5rur3bu3bl2lurur3url4ur3c15ulc66l2uc44r4lul4d5ldu5"
PSET (280, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc40lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c65r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc65r2uc8l4rur4d5rdu5"
PSET (290, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc115l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
PSET (220, 169): DRAW "c6l4r8lul6ruc2u10rd10ru10rd10ru11c6l4uc10u7rd7ru7rd7ru7rc2d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc44udlc66lc44udlc66u2r2dur2duc115l4gd4rbr3ru4h2rl3dlbd15br5c66d4uru3bl7d4u4ld3"
CIRCLE (20, 20), 20, 43: PAINT (20, 20), 44, 43
PSET (150, 30), 210: DRAW "c15r3ulr5luc9l2c15l2dl"
PSET (290, 60), 210: DRAW "c4r3ulr5luc9l2c4l2dl"
IF blast = 1 THEN 1100
vis = 1
LOCATE 22, 20: COLOR 15: PRINT "Mince , mon chef s'est fait choper !"
sfxnum% = 5: playsfx sfx$(sfxnum%)
1001
i$ = INKEY$: IF i$ = "" THEN 1001
LOCATE 22, 20: COLOR 15: PRINT "Je n'ai pas d'arme pour l'aider !   "
1002
i$ = INKEY$: IF i$ = "" THEN 1002
LOCATE 22, 20: COLOR 15: PRINT "Il faut fuir !                      "
1003
i$ = INKEY$: IF i$ = "" THEN 1003
GOTO 900
1100
LOCATE 23, 1: COLOR 15: PRINT "Aidons-le !"
1101
i$ = INKEY$: IF i$ = "" THEN 1101
LOCATE 23, 1: COLOR 15: PRINT "           "
PSET (50, y): DRAW av1$ + "bd6br10c66r3ldl2u3drc7r5ur7l15"
: PLAY "p3p64"
PSET (50, y): DRAW av1$ + "bd6br10c0r3ldl2u3drr5ur7l15"
PSET (50, y): DRAW av1$ + "bd7br12c66r3ldl2u3drc7r5ur7l15r15c12r175"
sfxnum% = 13: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (250, 145), 10, 43: PAINT (250, 145), 44, 43
sfxnum% = 4: playsfx sfx$(sfxnum%): PLAY "p10p60"
PSET (50, y): DRAW av1$ + "bd7br12c66r3ldl2u3drc7r5ur7l15r15c0r175"
CIRCLE (250, 145), 10, 0: PAINT (250, 145), 0: PLAY "p10p60"
PSET (50, y): DRAW av1$ + "bd7br12c66r3ldl2u3drc7r5ur7l15r15c12r145"
sfxnum% = 13: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (220, 145), 10, 43: PAINT (220, 145), 44, 43
sfxnum% = 4: playsfx sfx$(sfxnum%): PLAY "p10p60"
PSET (50, y): DRAW av1$ + "bd7br12c66r3ldl2u3drc7r5ur7l15r15c0r145"
CIRCLE (220, 145), 10, 0: PAINT (220, 145), 0: PLAY "p10p60"
PSET (50, y): DRAW av1$ + "bd7br12c66r3ldl2u3drc7r5ur7l15r15c12r215"
sfxnum% = 13: playsfx sfx$(sfxnum%): PLAY "p10p60"
CIRCLE (290, 145), 10, 43: PAINT (290, 145), 44, 43
sfxnum% = 4: playsfx sfx$(sfxnum%): PLAY "p10p60"
PSET (50, y): DRAW av1$ + "bd7br12c66r3ldl2u3drc7r5ur7l15r15c0r215"
CIRCLE (290, 145), 10, 0: PAINT (290, 145), 0
PSET (280, 169): DRAW "c6l5ulr2r4ubl3udrc1rulc1r2ul3ur3ul3ur2ul2ur3ul3ur3uc6l4dc1uc6l0uc40lr6url7ur7ul7ur7ul7ur7ul7rur5bl6bd10c65r3url5ur5lul3bu8br2rulul3ulr4ul3c15urc65r2uc8l4rur4d5rdu5"
PSET (50, y): DRAW av1$ + "bd7br12c0r3ldl2u3drr5ur7l15r15"
LOCATE 23, 1: COLOR 7: PRINT "Merci ! Vite quittons la base !"
1102
i$ = INKEY$: IF i$ = "" THEN 1102
CLS
x = 160
PSET (10, 10): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (130, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (290, 120): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (300, 70): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
PSET (20, 80): DRAW "C7uc3u0bfu0bgu0bhu0bebuc9u0bf2u0bg2u0bh2u0be2buc1u0bf3u0bg3u0bh3u0"
CIRCLE (100, 100), 50, 115: PAINT (100, 100), 6, 115
COLOR 15
LOCATE 1: PRINT "Et c'est … tout allure que la cargo     spatial quitta la base de Loptun !"
1103
PSET (x, 100): DRAW "c0r2ur2dr2url8rur9"
x = x + 1
PSET (x, 100): DRAW "c8r2ur2dr2url8rur9"
PLAY "p60"
IF x < 320 THEN 1103
CLS
LOCATE 1: PRINT "Le chemin vers la terre se fit alors !"
PLAY "p1p1p1p10"
CLS
COLOR 15
LOCATE 1
PRINT "                ACTE VI"
PRINT "        Le chemin de la victoire"
PLAY "p1p60"
RUN "ac4.bas"
1200
CLS
PSET (0, 170): DRAW "c7r320bu70l320bup230,7"
CIRCLE (110, 60), 20, 43: PAINT (110, 60), 44, 43
PSET (80, 69): DRAW "c20u70f5r15d65l20bep21,20"
PSET (120, 65): DRAW "c20u70f5r15d65l20bep21,20"
PSET (0, 0): DRAW "c7r30f30r30f30r100e30r30e30bd50p8,7"
PSET (180, 115): DRAW "c7r10u5l10d5"
PSET (10, 115): DRAW "c53d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc7u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc153l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (x, y): DRAW av1$
1201
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 1202
IF m > ha THEN 1203
IF i$ = "5" THEN 1204
IF STRIG(0) THEN 1205
LOCATE 23: PRINT a$
LOCATE 23, 9: PRINT "                               "
GOTO 1201
1202
IF x < 10 THEN x = 300: GOTO 900
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 5
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc7u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc153l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x - 15
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc7u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc153l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (x, y): DRAW ar1$
GOTO 1201
1203
IF x > 310 THEN x = 10: GOTO 1300
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 5
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc7u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc153l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 25, y - 30)-(x + 25, y), 0, BF
x = x + 15
PSET (190, 169): DRAW "c4l4r8lul6ruc9u10rd10ru10rd10ru11c6l4uc7u7rd7ru7rd7ru7rc9d7ru7drd6ru6bl12d6ru6rud7ru7c66br4bulurur2l4ur4ulc15udlc66lc15udlc66u2r2dur2duc153l4gd4rbr3ru4h2rl3dlbd10br9c66r3ul3d2r3u2lc15ebl20c66bd5d2ru2rdc8d5"
PSET (x, y): DRAW av1$
GOTO 1201
1204
IF a$ = "REGARDER" THEN a$ = "ACTION  ": GOTO 1201
IF a$ = "ACTION  " THEN a$ = "REGARDER"
GOTO 1201
1205
IF a$ = "REGARDER" THEN 1206
IF a$ = "ACTION  " THEN 1207
1206
LOCATE 23: PRINT "1 - affiche   2- la rue "
1208
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Recherche captain G'Dall : 1630$      "
IF i$ = "2" THEN LOCATE 23: PRINT "Il y a un dr“le de type !             "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 1201
GOTO 1208
1207
LOCATE 23: PRINT "1- parler au type  "
i$ = INKEY$
IF i$ = "5" THEN 1201
IF i$ = "1" THEN 1210
GOTO 1207
1210
CLS
COLOR 44: PRINT "Tu veux quoi petit ?"
COLOR 15: IF vis = 1 THEN PRINT "1- j'ach‚te ton arme"
PRINT "2- rien"
1211
i$ = INKEY$
IF vis = 1 AND i$ = "1" THEN x = 150: GOTO 1212
IF i$ = "2" THEN x = 150: GOTO 1200
GOTO 1211
1212
COLOR 44
IF sac = 1 THEN 1220
PRINT "Je fais un march‚ : Vas porter se paquet… mon pote Harry : Il se trouve pr‚s du bar ..."
1213
i$ = INKEY$: IF i$ = "" THEN 1213
sac = 2
x = 150: GOTO 1200
1220
PRINT "Te revoil… ! Merci , tiens je te vend cette arme 300 $"
COLOR 15
IF fric >= 300 AND blast = 0 THEN PRINT "1-ok"
PRINT "2-non"
1221
i$ = INKEY$: IF i$ = "1" AND blast = 0 AND fric >= 300 THEN blast = 1: GOTO 1200
IF i$ = "2" THEN x = 150: GOTO 1200
GOTO 1221
1300
CLS
PSET (0, 170): DRAW "c7r320bu70l320bup230,7"
CIRCLE (210, 0), 10, 40: PAINT (210, 0), 39, 40
PSET (180, 69): DRAW "c20u70f5r15d65l20bep21,20"
PSET (220, 65): DRAW "c20u70f5r15d65l20bep21,20"
PSET (0, 0): DRAW "c7r50f10r50f10r50e10r50f10r50f50bl100p8,7"
PSET (100, 115): DRAW "c7r10u5l10d5"
PSET (150, 120): DRAW "c7r10u5l10d5"
PSET (210, 110): DRAW "c12d10ru11d13uru9rud10ru12rd14ru14rd14br2bu10c6bl4l2dc66r2dl2dc2rl2r4dl4dr4dl4c0bubru0rbr2u0"
PSET (290, 169): DRAW "c4r20u40l10d20l10d20bep40,4bu20c44r2br5bbuc9u12"
PSET (x, y): DRAW av1$
1301
m = STICK(0)
n = STICK(1)
i$ = INKEY$
IF m < hr THEN 1302
IF m > ha THEN 1303
IF i$ = "5" THEN 1304
IF STRIG(0) THEN 1305
LOCATE 23: PRINT a$
LOCATE 23, 9: PRINT "                               "
GOTO 1301
1302
IF x < 10 THEN x = 300: GOTO 1200
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
x = x - 5
PSET (x, y): DRAW ar2$
m = STICK(0)
n = STICK(1)
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
x = x - 15
PSET (x, y): DRAW ar1$
GOTO 1301
1303
IF x > 240 THEN 1301
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
x = x + 5
PSET (x, y): DRAW av2$
m = STICK(0)
n = STICK(1)
LINE (x - 20, y - 30)-(x + 20, y), 0, BF
x = x + 15
PSET (x, y): DRAW av1$
GOTO 1301
1304
IF a$ = "REGARDER" THEN a$ = "ACTION  ": GOTO 1301
IF a$ = "ACTION  " THEN a$ = "REGARDER"
GOTO 1301
1305
IF a$ = "REGARDER" THEN 1306
IF a$ = "ACTION  " THEN 1307
1306
LOCATE 23: PRINT "1 - machine   "
1308
i$ = INKEY$
IF i$ = "1" THEN LOCATE 23: PRINT "Un distributeur de billets !     "
IF i$ = "5" THEN LOCATE 23: PRINT "                                      ": GOTO 1301
GOTO 1308
1307
LOCATE 23: PRINT "1- Utiliser machine  "
i$ = INKEY$
IF i$ = "5" THEN 1301
IF i$ = "1" THEN 1310
GOTO 1307
1310
CLS
COLOR 2
PRINT "      entrer le code :"
INPUT "1ø chiffre (1-9) :"; n1
INPUT "2ø chiffre (1-9) :"; n2
INPUT "3ø chiffre (1-9) :"; n3
IF n1 <> 3 THEN n1 = 0
IF n2 <> 6 THEN n2 = 0
IF n3 <> 1 THEN n3 = 0
PRINT " chiffre valide :"
sfxnum% = 14: playsfx sfx$(sfxnum%)
IF n1 = 3 THEN PRINT "1ø valide : 3"
IF n1 = 0 THEN PRINT "1ø faux "
IF n2 = 6 THEN PRINT "2ø valide : 6"
IF n2 = 0 THEN PRINT "2ø faux"
IF n3 = 1 THEN PRINT "3ø valide : 1"
IF n3 = 0 THEN PRINT "3ø faux"
PRINT " appuyez sur une touche"
1340
i$ = INKEY$: IF i$ = "" THEN 1340
IF n1 + n2 + n3 <> 10 THEN COLOR 4: sfxnum% = 6: playsfx sfx$(sfxnum%): PRINT "Pas d'acc‚s !": PLAY "l60p3p60": x = 150: GOTO 1300
COLOR 44: PRINT " Bon code "
sfxnum% = 11: playsfx sfx$(sfxnum%)
PRINT " Retirez de l'argent : 1000 $": fric = 1000
1341
i$ = INKEY$: IF i$ = "" THEN 1341
x = 150: GOTO 1300

SUB playsfx (sfx$)

chan% = VAL(MID$(sfx$, 61, 4))
FOR in = 1 TO 60 STEP 4
  reg$ = MID$(c$(chan%), in, 4): reg% = VAL(reg$)
  dat$ = MID$(sfx$, in, 4): dat% = VAL(dat$)
  OUT &H388, reg%: FOR d% = 1 TO 6: B% = INP(&H388): NEXT
  OUT &H389, dat%: FOR d% = 1 TO 35: B% = INP(&H388): NEXT
NEXT

END SUB

