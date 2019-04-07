;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="end_3_room.jpg" time="100"]

;聲明出現在此遊戲中的角色
;flower
[chara_new  name="flower" storage="chara/flower/normal.png" jname="墨花"  ]
[chara_face name="flower" face="angry" storage="chara/flower/angry.png"]
[chara_face name="flower" face="ops" storage="chara/flower/ops.png"]
[chara_face name="flower" face="happy" storage="chara/flower/happy.png"]

;zang
[chara_new  name="zang" storage="chara/zang/normal.png" jname="樂正冉"  ]
[chara_face name="zang" face="angry" storage="chara/zang/angry.png"]
[chara_face name="zang" face="ops" storage="chara/zang/ops.png"]
[chara_face name="zang" face="happy" storage="chara/zang/happy.png"]
[chara_face name="zang" face="wink" storage="chara/zang/wink.png"]
[chara_face name="zang" face="hmm" storage="chara/zang/hmm.png"]

;zoo
[chara_new  name="zoo" storage="chara/zoo/normal.png" jname="濡娘"  ]
[chara_face name="zoo" face="angry" storage="chara/zoo/angry.png"]
[chara_face name="zoo" face="ops" storage="chara/zoo/ops.png"]
[chara_face name="zoo" face="happy" storage="chara/zoo/happy.png"]
[chara_face name="zoo" face="black" storage="chara/zoo/black.png"]
[chara_face name="zoo" face="monster" storage="chara/zoo/monster.png"]

;ball
[chara_new  name="ball" storage="chara/ball/normal.png" jname="秦毬"  ]
[chara_face name="ball" face="angry" storage="chara/ball/angry.png"]
[chara_face name="ball" face="ops" storage="chara/ball/ops.png"]
[chara_face name="ball" face="happy" storage="chara/ball/happy.png"]

;cat
[chara_new  name="cat" storage="chara/cat/normal.png" jname="黑美人"  ]
[chara_face name="cat" face="angry" storage="chara/cat/angry.png"]
[chara_face name="cat" face="ops" storage="chara/cat/ops.png"]
[chara_face name="cat" face="happy" storage="chara/cat/happy.png"]

;lin
[chara_new  name="lin" storage="chara/lin/normal.png" jname="林也真"  ]

;minf
[chara_new  name="minf" storage="chara/minf/normal.png" jname="六分以敏夫"  ]

;foreigner
[chara_new  name="foreigner" storage="chara/foreigner/normal.png" jname="???"  ]


;隱藏菜單按鈕
[showmenubutton]

;客製化對話框
[font color="0x454D51" size=20]
[deffont color="0x454D51"]

[position layer="2" page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[position layer="2" left=20 top=40 width=920 height=560 page=fore visible=true]
@layopt layer="2" visible=false

[position layer="message1" page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[position layer="message1" left=20 top=40 width=920 height=560 page=fore visible=true]
@layopt layer="message1" visible=false

;對話框
[position layer=message0 width=960 height=240 top=400 left=0]
[position layer=message0 page=fore frame="frame_1.png" margint="65" marginl="68" marginr="70" marginb="60" opacity=230 ]
[chara_config ptext="chara_name_area"]
[ptext name="chara_name_area" layer="message0"  color="0xFAFAFA"  size=20 x=80 y=430]
@layopt layer=message0 visible=true

[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x=861 y=452]


@playbgm time="3000" storage=battle.ogg loop=true


[chara_show  name=zoo face=black]
#濡娘
居然被你們識破了……不過重要的東西我已經拿到了！[p]

[chara_mod name=zoo face=monster ]
#河童
我不會讓你們阻撓的！我要讓我神賽伊格亞復活！[p]

[chara_show  name=lin ]
#林也真
快！我可以用我的魔法鎮幫你們撐十秒！[p]

[chara_hide_all time=0]

[chara_show  name=foreigner ]
#???
巫啟！租八嚕！[p]

[chara_hide_all time=0]

[chara_show  name=zang ]
#樂正冉
啊，外國人抱過來的是武器箱嗎？看來是要我們從裡面挑武器的樣子！[p]

[glink  color="black"  storage="end_3.ks"  size="20"  x="260"  width="400"  y="150"  text="王者之劍"  target="*j1"  ]
[glink  color="black"  storage="end_3.ks"  size="20"  x="260"  width="400"  y="220"  text="Excalibur"  target="*j1"  ]
[glink  color="black"  storage="end_3.ks"  size="20"  x="260"  width="400"  y="290"  text="咖哩棒"  target="*j1"  ]
[s  ]

*j1

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="ball_final_hit.jpg" method="crossfade" time="1000"]
@layopt layer="2" visible=true
[font color="0xFFFFFF"]
[current layer="2"]
#
test[r][l]
[cm]
@layopt layer=2 visible=false

@layopt layer=message0 visible=true
[current layer="message0"]
[font color="0x454D51"]

#秦毬
聚以天上繁星之吐息，辉煌生命之奔流，接下吧！誓约勝利之劍！[p]

[bg storage="white.jpg" method="crossfade" time="300"]
@fadeoutbgm time="3000"
[bg storage="2F_deck.jpg" method="crossfade" time="1500"]
@fadeinbgm time="3000" storage=scene1.ogg loop=true


[chara_show  name=zoo face=ops]
#濡娘
嗯……嗯？怪了，本美人怎麼在……一艘船上？[p]
這個時候我不是應該要在基地裡敷臉嗎？[p]

[chara_show  name=zang face=ops]
#樂正冉
等等，你都不記得了？偷鑽石的事？你喵喵叫的事？妖怪手錶？[p]

[chara_mod name=zoo face=happy time=0]
#濡娘
嗯？原來我今天做了這麼多事啊，我真棒！[p]

@stopbgm time="3000"
@fadeinbgm time="3000" storage=watch.ogg loop=true

那就如你所願跳一首妖怪手錶來表揚一下我好了！[p]

[chara_hide_all time=0]

[chara_show  name=lin ]
#林也真
啊啊，你們沒事吧，真是辛苦你們了。[p]

[chara_show  name=ball face=happy]
#秦毬
不會，謝謝你的十秒。[p]
#林也真
詳細的情況……是這樣的，這要從—————[p]

[chara_hide_all time=0]

[chara_show  name=flower face=happy]
#墨花
慶功慶功慶功慶功慶功慶功慶功[p]

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="end_3_word.jpg" method="crossfade" time="3000"]
@layopt layer="2" visible=true
[font color="0xFFFFFF"]
[current layer="2"]
#
test[r][l]
[cm]
@layopt layer=2 visible=false

[bg storage="black.jpg" method="crossfade" time="1000"]
@stopbgm time="3000"
@jump storage="title.ks"
