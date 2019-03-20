;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="B1.jpg" time="100"]

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
[chara_face name="zoo" face="wink" storage="chara/zoo/black.png"]

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

@playbgm time="3000" storage=hurry_up_2.ogg loop=true

[bg storage="B1_minf.jpg" method="crossfade" time="1000"]
@layopt layer=message0 visible=false
[position layer="2" page=fore margint="45" marginl="50" marginr="70" marginb="60"]
@layopt layer="2" visible=true
[position layer="2" left=20 top=40 width=920 height=560 page=fore visible=true]
[font color="0xFFFFFF"]
[current layer="2"]
#
test[r][l]
[cm]
@layopt layer=2 visible=false

@layopt layer=message0 visible=true
[current layer="message0"]
[font color="0x454D51"]

#樂正冉
老人家！！老人家你撐住阿！[p]


#六分以敏夫
咳⋯⋯咳咳，快⋯⋯快去阻止⋯⋯會長。[p]
他在甲板上做了對付你們用的法鎮⋯⋯快、快去⋯⋯不要管我。[p]

#樂正冉
不會的老人！我們就只陪著您，您不能死阿撐住阿！[p]

#六分以敏夫
快去.....快———[p]

#樂正冉
老人家！！！[p]

#墨花
的錢！！！！！！！[p]

[bg storage="B1.jpg" method="crossfade" time="1000"]

[chara_show  name=zang face=ops]
#樂正冉
鎮定⋯⋯我們要鎮定，我們一定會在他的身上找到支票的線索！不能放棄！[p]
[chara_mod  name=zang face=hmm time=0]
我找找看⋯⋯嗯？是紙條！[p]
[chara_mod  name=zang face=angry time=0]
是寫給他妻子的自白信⋯⋯對現階段的我們來說不是很重要就是了。[p]

[chara_show  name=flower face=ops]
#墨花
阿我來我來！換我找！[p]
[chara_mod  name=flower face=happy time=0]
啊！是這個吧！他放在了大衣的暗袋裡！[p]
[chara_mod  name=zang face=happy time=0]
#樂正冉
喔喔喔喔！是一億元的支票沒錯！做得好啊墨花！[p]

[chara_hide_all time=0]

[chara_show  name=cat face=happy]
[chara_show  name=zoo face=happy]
#黑美人、濡娘
喵～～～～～～[p]

[chara_hide_all time=0]

[chara_show  name=flower face=happy]
#墨花
皇天不負苦心人⋯⋯這是太好了呢！[p]
[chara_show  name=ball]
#秦毬
既然錢都到手了，我們要不直接用一樓文宣上標示的救生艇離開？[p]

#墨花
好耶！慶功慶功！[p]

@layopt layer=message0 visible=false
[chara_hide_all]
[bg storage="ship_corridor.jpg" time="3000"]
@layopt layer=message0 visible=true

[chara_show  name=zoo face=ops]
#濡娘
救生艇不見了喵！[p]

[chara_show  name=zang face=happy]
#樂正冉
嗯？！你可以說話了？？[p]

[chara_mod name=zang face=happy time=0]
#濡娘
大概是拿到了錢太治癒身心補正了我的精神值了喵，大概再過一下就不會再喵了喵[p]

[chara_hide  name=zang wait=false time=0]

[chara_show  name=zoo ]
#濡娘
不過這個降下救生船的裝置上怎麼突然有種黏液和沼澤的氣味喵？[p]
⋯⋯該不會貓的嗅覺都特別敏銳總會聞到這些有的沒的？[p]

[chara_hide_all time=0]

[chara_show  name=cat ]
#黑美人
不要瞎掰好嗎喵。[p]

[chara_hide_all time=0]

[chara_show  name=flower face=ops ]
#墨花
⋯⋯啊！我們不是也有在二樓的甲板上發現救生艇嗎？去看看吧！[p]

@layopt layer=message0 visible=false
[chara_hide_all time=0]
[bg storage="game.jpg" method="crossfade" time="3000"]
@layopt layer=message0 visible=true

[chara_show  name=foreigner ]
#外國人
波拉口喔吸！母咖哩趴斯木木鴞！木木鴞！木木鴞！！！[p]

[chara_show  name=ball face=ops ]
#秦毬
他在喊木木鴞的名子！一定是出了甚麼事！[p]

[chara_hide_all time=0]

[chara_show  name=flower face=ops ]
#墨花
怎麼這個時候還管那顆球！不是說好趕快離開嗎？慶功宴近在眼前啊！[p]

[chara_show  name=zoo face=ops ]
#濡娘
啊⋯⋯啊喂！秦毬！！⋯⋯跑進去了喵。[p]

[chara_hide_all time=0]

[chara_show  name=ball ]
#秦毬
木木鴞，我來救你了。[p]

[chara_hide_all time=0]

@playse storage=drop.ogg loop=false
#
哐啷——[p]

@playse storage=hit.ogg loop=false
#
碰————！[p]

[chara_show  name=ball face=ops]
#秦毬
？！外國人你幹什麼？[p]

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="default.png" method="crossfade" time="1000"]
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
#???
＠＃＄％＾＆＊（）＿＋（＊＆＄＄＃％＾！！！[p]
#黑美人
喵！！！不會讓你得逞的喵！[p]

[bg storage="game.jpg" method="crossfade" time="1000"]

[chara_show  name=foreigner]
#???
啊哈哈哈哈哈哈哈[p]
#???
遮恨簡單辣！[p]

[anim name=haruko left="+=100" time=10000 effect=easeInCirc opacity=0 ]
[chara_hide_all time=1000]
@playse storage=step_quick.ogg loop=false
#
達達達——[p]

[chara_show  name=zang ]
#樂正冉
我剛剛都看了些什麼。[p]

[chara_hide_all time=0]

[chara_show  name=ball face=angry ]
#秦毬
太好了⋯⋯木木梟就先交給我保管吧，免得又被人抓走了。[p]

[chara_show  name=flower face=angry ]
#墨花
啊~真是的！這樣可以了吧！趕快上甲板啦！[p]

@stopbgm time="3000"
@fadeinbgm time="3000" storage=gun.ogg loop=true 
[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="default.png" method="crossfade" time="1000"]
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
等等！[p]
我手上的木木梟⋯⋯把你手上的黃金槍給召喚過來了？[p]
#樂正冉
啊！換變成黏在你手上了![p]
#墨花
嗯屋～真可惜，我都還沒用過呢。[p]
不過那不是重點！我們趕快回甲板上找到救生艇回去吧！[p]
#秦毬
嗯。[p]

@fadeoutbgm time="3000"

@layopt layer=message0 visible=false
[chara_hide_all time=0]
[bg storage="final_corridor.jpg" method="crossfade" time="3000"]
@layopt layer=message0 visible=true

@fadeinbgm time="3000" storage=final_light.ogg loop=true

[chara_show  name=ball ]
#秦毬
這⋯⋯這道光，我的槍在跟我產生共鳴！[p]
這條路的盡頭⋯⋯光牆之後⋯⋯就是我們的最終站了[p]

[chara_show  name=zang ]
#樂正冉
所以是只要拿了這把槍都會得中二病嗎？[p]

[chara_hide_all time=0]

[chara_show  name=zoo ]
#濡娘
總之不管怎麼樣，只要想離開我們都還是得過去的喵，走吧喵。[p]

@layopt layer=message0 visible=false
[chara_hide_all time=0]
[bg storage="default.png" method="crossfade" time="3000"]
@layopt layer=message0 visible=true

#秦毬
⋯⋯這裡是？[p]

#???
選擇吧，握有金色之槍的裁決者啊，擊破真正的凶手，解開真相吧。[p]

@layopt layer=message0 visible=false
[glink  color="black"  storage="scene9.ks"  size="20"  x="260"  width="400"  y="150"  text="秦毬"  target="*end_1"  ]
[glink  color="black"  storage="scene9.ks"  size="20"  x="260"  width="400"  y="220"  text="樂正冉"  target="*end_2"  ]
[glink  color="black"  storage="scene9.ks"  size="20"  x="260"  width="400"  y="290"  text="濡娘"  target="*end_3"  ]
[glink  color="black"  storage="scene9.ks"  size="20"  x="260"  width="400"  y="360"  text="墨花"  target="*end_4"  ]
[glink  color="black"  storage="scene9.ks"  size="20"  x="260"  width="400"  y="430"  text="林也真"  target="*end_5"  ]

[s  ]

*end_1
@fadeoutbgm time="3000"
[bg storage="black.jpg" method="crossfade" time="1000"]
[bg storage="end_1_room.jpg" method="crossfade" time="3000"]
@jump storage="end_1.ks"

*end_2
@fadeoutbgm time="3000"
[bg storage="black.jpg" method="crossfade" time="1000"]
[bg storage="end_2_room.jpg" method="crossfade" time="3000"]
@jump storage="end_2.ks"

*end_3
@fadeoutbgm time="3000"
[bg storage="black.jpg" method="crossfade" time="1000"]
[bg storage="end_3_room.jpg" method="crossfade" time="3000"]
@jump storage="end_3.ks"

*end_4
@fadeoutbgm time="3000"
[bg storage="black.jpg" method="crossfade" time="1000"]
[bg storage="end_4_room.jpg" method="crossfade" time="3000"]
@jump storage="end_4.ks"

*end_5
@fadeoutbgm time="3000"
[bg storage="black.jpg" method="crossfade" time="1000"]
[bg storage="end_5_room.jpg" method="crossfade" time="3000"]
