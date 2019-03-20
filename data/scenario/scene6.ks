;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="showroom_outdoor.jpg" time="100"]

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

;lin
[chara_new  name="lin" storage="chara/lin/normal.png" jname="林也真"  ]

;NPC
[chara_new  name="NPC" storage="chara/lin/normal.png" jname="守衛"  ]
[chara_face name="NPC" face="black" storage="chara/NPC/black.png"]

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

@playbgm time="3000" storage=bar.ogg loop=true

[chara_show  name=zang face=hmm]
#樂正冉
ㄜ⋯⋯看來這裡現在也是不可行呢。[p]

[chara_hide_all time=0]

[chara_show  name=lin ]
#???
哎呀呀，你們是客人嗎？我好像沒看過你們耶。[p]

[chara_show  name=flower ]
#樂正冉
你當然沒看過我們啊，我們是外傭耶！[p]

#???
原來如此，你們是哪一位的外傭啊？[p]

[chara_hide_all time=0]

[chara_show  name=zoo face=ops]
#濡娘
喔屋，那個⋯⋯帶著單邊眼鏡的那位叫⋯⋯。[p]

[chara_show  name=cat face=angry]
#黑美人
六分以敏夫喵！[p]

[chara_show  name=zoo face=happy]
#濡娘
嗯對！我們是六分以敏夫先生的外傭。[p]

[chara_hide_all time=0]

[chara_show  name=lin]
#???
啊~這樣啊，就算是外傭，也希望你們能夠好好享受這場盛會。[p]
#林也真
我是林也真，台灣珠寶協會的會長，祝你們玩得愉快。[p]

[chara_show  name=flower face=happy]
#墨花
⋯⋯握手嗎？嗯好的！謝謝會長。[p]
[chara_mod name=flower face=angry time=0]
( 感覺好不舒服⋯⋯像一陣電流一樣穿過全身，而且有一種被窺視的感覺? )[p]

[chara_hide  name=flower wait=false time=0]

[chara_show  name=zoo face=happy]
#濡娘
歐嗚不好意思，我不想跟白人以外的人握手。[p]

#林也真
欸！？⋯⋯好、好吧。[p]

[chara_hide_all time=0]
[glink  color="black"  storage="scene6.ks"  size="20"  x="260"  width="400"  y="150"  text="握手"  target="*j7"  ]
[glink  color="black"  storage="scene6.ks"  size="20"  x="260"  width="400"  y="220"  text="不握手"  target="*j8"  ]
[s  ]

*j7
[cm]
[chara_show  name=ball ]
#秦毬
請多指教。[p]

[chara_show  name=lin ]
#林也真
請多指教。[p]

#秦毬
( ⋯⋯似乎可以理解方才墨花握手完後一臉猙獰的表情了。 )[p]

@jump target=*common_7

*j8
[chara_show  name=ball face=angry]
#秦毬
⋯⋯。[p]

[chara_show  name=lin ]
#林也真
欸 ｡ﾟヽ(ﾟ´Д`)ﾉﾟ｡[p]

@jump target=*common_7

*common_7

[chara_hide_all time=0]
[chara_show  name=lin ]
#林也真
呀有貓貓啊，真可愛！來，讓我摸摸～[p]

[chara_show  name=cat ]
#黑美人
ㄍㄋㄋ。[p]

[chara_hide  name=cat ]
#林也真
痾痾痾痾————我⋯⋯好，你們慢慢玩，我先走了⋯⋯。[p]

[chara_show  name=zang face=ops]
#樂正冉
會、會長！別走啊！[p]

#林也真
啊，我還沒跟你握到手對吧？來——。[p]

[chara_mod name=zang face=hmm time=0]
#樂正冉
哀不是啦才不是為了這個叫住你！[p]
[chara_mod name=zang face=angry time=0]
⋯⋯你能把那些守衛趕走嗎，看起來好討厭啊。[p]

#林也真
這⋯⋯這怎麼行？展場上一定要有守衛才能護得財寶的安全啊。[p]

[chara_mod name=zang face=happy time=0]
#樂正冉
那我們來當展場的守衛呢？我們很厲害的喔！[p]

#會長
啊⋯⋯別這樣啊，我這樣很困擾的啊。[p]

[chara_hide_all time=0]
[chara_show  name=NPC face=black time=3000]
#黑衣男子
————。[p]

[chara_hide_all time=0]
[chara_show  name=zang face=ops]
#樂正冉
ㄜ好好好！您慢走，不吵你了。[p]

[chara_hide_all time=0]
[chara_show  name=lin ]
#林也真
祝你們玩得愉快。[p]

@layopt layer=message0 visible=false
[chara_hide_all]
[bg storage="2F_deck.jpg" time="3000"]
@jump storage="scene7.ks"




