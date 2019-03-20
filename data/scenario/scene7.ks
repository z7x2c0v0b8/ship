;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="2F_deck.jpg" time="100"]

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

@playbgm time="3000" storage=foreigner.ogg loop=true

[chara_show  name=ball ]
#秦毬
有艘救生艇？看起來很方便把他弄下去……等等應該可以派上用場。[p]

[chara_hide_all time=0]

@playse storage=hit.ogg loop=false
#???
碰————！[p]

[chara_show  name=zang face=ops]
#樂正冉
？！！誰撞我啊？[p]

[chara_show  name=foreigner ]
#???
辜jam，苦拉一估拉！[p]

[chara_hide  name=zang wait=false time=0]
#???
呀，伍拉依努，補嗎修尼哭！[p]
修尼哭，修尼哭修尼哭⋯⋯jaaaaa！is ja博！is ja博！！[p]

[chara_hide_all time=0]

[chara_show  name=zang face=ops]
#樂正冉
濡⋯⋯濡娘你來翻譯一下吧！他幹嘛一直指著我們啊？！[p]

[chara_show  name=zoo ]
#濡娘
嗯～他說『那個抓娃娃機在哪裡？』[p]
『我的錢包掉了⋯⋯惡、惡魔！你們裡面有惡魔！』[p]

[chara_hide_all time=0]

[chara_show  name=foreigner]
#???
餔紮嚕斯他，噗其，餔嗎ㄎ一哩嚕。[p]
林野真依偷咖咖拉嗎齁，波拉口，喔吸母咖哩趴斯！[p]
哩杯拉哈嘎，ㄎ一絲那，摳母餔嗎ㄎ一哩耶！[p]

[chara_hide_all time=0]

[chara_show  name=zoo face=ops]
#濡娘
ㄜ他現在說『他的內褲剛剛掉在甲板上面，但是被風吹走了有點困擾。』[p]
那個內褲這樣飛走怎麼沒有打在墨花臉上？[p]

[chara_show  name=flower face=angry]
#墨花
拜託要飛當然是飛到你臉上好嗎？他跟你的臉超合的好嗎？！[p]

[chara_hide_all time=0]

[chara_show  name=foreigner ]
#???
噗哩搭踢拉斯，代因蒐發思，呂沒他依耶斯里不興[p]
一耶斯低耶博，一耶斯天一啊，估ㄟ金母[p]
勒及喔，哩低嗚某，哩低耶博！低耶博！[p]

[chara_hide_all time=0]

[chara_show  name=zoo ]
#濡娘
總而言之他覺得他的內褲被偷了，想問我們那個小偷在哪裡？[p]

[chara_show  name=ball face=angry]
#秦毬
濡娘你翻得真的是正確的嗎？[p]
[chara_mod name=zoo face=angry time=0]
#濡娘
當然！這是我的母語耶，你們當然要相信我啊。[p]
他還說他很喜歡他的低耶博機車，但是也被騎走了。[p]

[chara_hide_all time=0]

[chara_show  name=foreigner ]
#???
底耶博⋯⋯底耶波⋯⋯。[p]

[chara_hide_all time=3000]
@playse storage=steo.ogg loop=false

[chara_show  name=zang face=hmm]
#冉
啊⋯⋯走掉了，看起來挺沮喪的。[p]

[chara_show  name=flower face=angry]
#墨花
真是莫名其妙，早知道就拿現在黏在我手上的這把槍把他處理掉算了。[p]

@layopt layer=message0 visible=false
[chara_hide_all]
[bg storage="showroom.jpg" time="3000"]
@jump storage="scene8.ks"
