;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="kaitou_room.jpg" time="100"]

;聲明出現在此遊戲中的角色
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;註冊你的面部表情
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]

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

;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

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

@playbgm time="3000" storage=scene1.ogg loop=true
#
這裡是怪盜們的基地，某棟大樓的一角。[p]
已經好一陣子沒有收入，連房租都付不起的怪盜團團員們陷入大危機！[p]
大家因此聚在一起商量該如何是好……。[p]

[chara_show  name="flower" face="happy"  ]
[font size="30"   ]
#墨花
我們沒有錢——！[p]
[resetfont  ]

[chara_hide name="flower" time="0"]
[chara_show  name="zang" face="angry"  ]
#樂正冉
我們不會就這樣餓死了吧，連基本的飯都煮不起。[p]

[chara_show  name="zoo" face="happy"  ]
#濡娘
已經被停伙停了三天，停電也停了五天。[p]

[chara_hide_all time=0]

[chara_show  name="flower" face="happy"]
[font size="30"   ]
#墨花
那我們去夜店吃飯吧——！[p]
[resetfont  ]

[chara_show  name="ball" face="angry"]
#秦毬
……我們近期連個像樣的收入都沒有，根本扛不起大家的高消費額度。[p]
[chara_hide_all time=0]

[chara_show  name="zang" wait="false" layer="0"]
#樂正冉
唉……我去看看冰箱還有些什麼好了。[p]

;玩家選擇選項
[glink  color="black"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="150"  text="都停電三天了冰箱有食物也壞了"  target="*selection_1"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="220"  text="不可能會有的，你這麼會吃"  target="*selection_2"  ]
[s  ]

*selection_1
[cm]

[chara_mod  name="zang" face="hmm" time=0 ]
#樂正冉
嗯，沒有……是不是應該慶幸這樣我們就可以省下冰箱的清潔費?[p]
@jump target=*common

*selection_2
[cm]

[chara_mod  name="zang" face="ops" time=0 ]
唉我還真想反駁你……但就如你所說，果然什麼都沒有呢。[p]
@jump target=*common

*common
[chara_hide_all time=0]

[chara_show  name="cat" wait="false"]
#黑美人
喵嗚～[p]

[chara_hide name="cat" wait="false" time="0"]
@playse storage=drop.ogg loop=false
#
[font size="30"]
咚——[p]
[cm]

[chara_show  name="zoo" wait="false" face="ops" ]
#濡娘
額，報紙？[p]

[chara_mod name="zoo" face="angry" time=0]
我們哪來的錢訂報紙，誰偷拿繳電費的錢訂報紙啦。[p]

[chara_hide name="zoo" wait="false" time="0"]

[bg storage="newspaper.jpg" method="crossfade" time="1000"]
@layopt layer=message0 visible=false
@layopt layer="2" visible=true
[font color="0xFFFFFF"]
[current layer="2"]
#
test[r][l]
[cm]
@layopt layer=2 visible=false


@layopt layer="message1" visible=true
[font color="0xFFFFFF"]
[current layer="message1"]

#
第二十八回國際珠寶飾品展示會，世界最大的黑鑽石登台！！[r][l]
台灣珠寶協會今天發表了台灣第二十八回國際珠寶飾品展示會開幕事項，[r][l]
在這個每年一次台灣最大的展示盛會中，[r]
參展公司和參觀者將可以進行商業交易，[r][l]
跟據統計，其歷屆交易金額最高達到三十億元！[r][l]
台灣珠寶協會會長林也真表示，[r]
這次的展出公司將會帶來史無前例要價將近數十億之寶石，[r][l]
堪稱奪得世界紀錄！預計將聚集更多的參觀者前來。[r][l]
為前日本珠寶協會會長林也剛的兒子，林也真先生可以說是帶著父親光環，[r]
但有傳聞曾涉嫌各種醜聞和賄賂交易，[r]
因此協會內部有各種對他質疑的聲浪。[r][l]
[cm]
@layopt layer=message1 visible=false
@layopt layer=message0 visible=true
[bg storage="kaitou_room.jpg" method="crossfade" time="1000"]
[current layer="message0"]
[font color="0x454D51"]

[chara_show name="zoo" wait="false" face="ops" time="0"]
#濡娘
喔嗚……我的中文ㄅ4hen 豪，看哺懂。[p]
[chara_hide_all time=0]

[chara_show name="cat" wait="false" face="angry" ]
#黑美人
喵喵～喵喵喲！[p]

[chara_show name="flower" wait="false" face="ops"]
#墨花
喔！！黑美人說他知道了！[p]
[chara_hide_all time=0]
[chara_show name="zang" wait="false" face="ops" ]
#樂正冉
不不不還是我看看唄。[p]
......擁有黑鑽石的人一定會死亡？[p]
[chara_mod name="zang" face="hmm" time=0]
這個珠寶展示會剛好就辦在今天，地點在豪華客船上？[p]

[chara_show name="ball" wait="false"]
#秦毬
這客船就是我們基地附近港口上的那艘吧？粗估不用五分鐘就可以到了。[p]

[chara_mod name="zang" face="ops" time=0]
#樂正冉
嗯這船兩點開船……現在不已經一點半了嗎？！[p]
[chara_mod name="zang" face="happy" time=0]
沒有甚麼好顧慮的！走吧！[p]
[chara_hide_all time=0]

[chara_show name="flower" wait="false" ]
#墨花
Let’s partyyyyyyyyy[p]
[chara_hide_all time=0]
[chara_show name="zang" wait="false" ]
#樂正冉
不過果然還是先看看天氣如何唄，討個好兆頭！今天的天氣是……。[p]

[glink  color="black"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="150"  text="晴天"  target="*selection_3"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="220"  text="雨天"  target="*selection_4"  ]
[s  ]

*selection_3
[cm]

[chara_mod name="zang" face="happy" time=0]
晴天，晚上有新月！[p]
感覺挺好的啊到晚上還可以抬頭看看星空，咱們速速前去吧！[p]
@jump target=*common_2

*selection_4
[cm]

[chara_show name="ball" face="angry" wait="false"]
#秦毬
你看成明天了……今天是晴天晚上還會有新月。[p]
[chara_mod name="zang" face="happy" time=0]
#樂正冉
啊、啊哈哈哈，這正餓著呢好幾天都沒吃飽，很容易走神看錯是吧？[p]
#秦毬
........[p]
@jump target=*common_2

*common_2
[chara_hide_all]
@layopt layer="message0" visible=false
[bg storage="ship_outdoor.jpg" time="3000"]
@jump storage="scene2.ks"