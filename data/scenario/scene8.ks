;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="showroom.jpg" time="100"]

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

;NPC
[chara_new  name="NPC" storage="chara/NPC/normal.png" jname="守衛"  ]
[chara_face name="NPC" face="gay_1" storage="chara/NPC/gay_1.png"]
[chara_face name="NPC" face="gay_2" storage="chara/NPC/gay_2.jpg"]
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

;input js
[call storage="chara_shake/chara_shake.ks"]
@playbgm time="3000" storage=minf_room.ogg loop=true

[chara_show  name=zang face=ops]
#樂正冉
哇⋯⋯這人意外的多啊，而且確實就跟老人給的情報一樣還有兩個警衛守在小的展示廳門口。[p]

[chara_show  name=flower face=ops]
#墨花
那這樣如何？我跟濡娘負責引開人群的注意，黑美人就趁機下去偷！[p]
[chara_mod name=zang face=happy time=0]
#樂正冉
那警衛就交給我處理吧！秦毬呢？你打算怎麼做？[p]

[chara_hide_all time=0]
[glink  color="black"  storage="scene8.ks"  size="20"  x="260"  width="400"  y="150"  text="你要怎麼處理那些警衛？"  target="*j9"  ]
[glink  color="black"  storage="scene8.ks"  size="20"  x="260"  width="400"  y="220"  text="我跟你一起處理那些警衛吧。"  target="*j10"  ]
[s  ]

*j9
[cm]
[chara_show  name=zang ]
#樂正冉
這個嘛⋯⋯就用老招式！緊要關頭嘛，也暫時想不到其他辦法，將就一下囉！[p]
[chara_show  name=ball face=ops]
#秦毬
你——！[p]
[chara_mod name=zang face=happy time=0]
#樂正冉
毬就在墨花那待命吧！我這裡不用擔心。[p]
#秦毬
⋯⋯。[p]
@jump target=*common_9

*j10
[cm]
[chara_show  name=zang face=ops]
#樂正冉
這、這可不行！我打算用老方式處理那些傢伙。[p]
[chara_show  name=zang time=0]
你就在墨花那支援著吧！我這裡自有辦法。[p]

[chara_show  name=ball face=ops]
#秦毬
⋯⋯。[p]
@jump target=*common_9

*common_9

[chara_hide_all time=0]

[chara_show  name=cat face=happy]
#黑美人
喵嗚～～[p]

@stopbgm time="3000"
@fadeinbgm time="3000" storage=watch.ogg loop=true

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
#墨花
嗨嗨！大家晚安，今天要在會場帶給大家一首很有活力的曲子！[p]
妖怪手錶～大家來暖暖身子跟我一起唱！[p]
#濡娘
本美人心情好今天也帶著你們一起跳！跟我來！[p]

[bg storage="showroom.jpg" method="crossfade" time="1000"]


[chara_show  name=cat face=happy]
#黑美人
喵⋯⋯先潛行到小展示嗎？這難不倒我喵⋯⋯[p]
[chara_mod  name=cat face=ops]
喵嗚？ 喵——！！[p]

[chara_hide_all time=0]

[chara_show  name=NPC face=gay_1]
#守衛
哎呀，這裡怎麼會有小貓咪呢？[p]
好可愛，但是還是不能待在這喔，這邊都是些貴重物品[p]

[chara_show  name=zang face=ops]
#樂正冉
啊哈哈，抱歉各位警衛先生，剛剛跑進去的是我養的貓[p]
[chara_mod name=zang face=happy time=0]
他特別活潑總是到處亂跑，總算是被你撿到了，真的得謝謝你們呀！[p]

[chara_show  name=zang ]
#樂正冉
嗯？⋯⋯你們喜歡貓嗎？剛剛好像有看到你們玩在一塊兒呢！[p]

#警衛A
嗯，可愛的小動物誰不喜歡呢？[p]

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="cat_or_me.jpg" method="crossfade" time="1000"]
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

#樂正冉
哈哈，那你覺得如何？[p]
是這貓可愛呢？⋯⋯還是我可愛呀？[p]

#警衛A
嗯唔———我是覺得你長得蠻不錯的啊。[p]

#樂正冉
真巧！我也覺得小哥哥長的特別對我的胃口⋯⋯要不這樣如何？[p]
這艘船上總少不了一些空的艙房唄？我們找間空的交流一下？[p]

[bg storage="showroom.jpg" method="crossfade" time="1000"]

[chara_show  name=NPC face=gay_1]
#警衛A
這⋯⋯這不太好吧，我還有工作在身呢。[p]

[chara_show  name=zang face=hmm]
#樂正冉
哎呀，就一下子的事情不會拖太久的。[p]
要不旁邊逃生路口的小道路倒也行，非必要時刻總不會有人過去吧？[p]

[chara_mod name=zang face=angry time=0]
#樂正冉
嗯～要不也帶上你的哥兒們？在船上工作工時很長吧，你們一定沒有時間好好抒發一番。[p]
[chara_mod name=zang face=wink time=0]
這會憋壞身子的，別之後就因為這個原因傷了身，我可心疼了。[p]

#警衛A
這⋯⋯[p]

[chara_mod name=zang face=happy time=0]
#樂正冉
好嘛，別這般愁眉苦臉的，我也是為了你們好呀！[p]
給我十五分鐘就行，嗯？好嘛哥哥～[p]
[chara_hide  name=zang wait=false time=300]

#警衛A
啊～好好好，都聽你的了⋯⋯欸，還玩貓啊？[p]
[chara_show  name=NPC face=gay_2]
你有聽到我們剛剛的對話吧？一起來？[p]
#警衛B
嗯⋯⋯倒也不是不行，那走吧，速戰速決。[p]

[chara_hide_all time=0]
[chara_show  name=ball face=angry]
#秦毬
————。[p]

[glink  color="black"  storage="scene8.ks"  size="20"  x="260"  width="400"  y="150"  text="睜一隻眼閉一隻眼"  target="*common_11"  ]
[glink  color="black"  storage="scene8.ks"  size="20"  x="260"  width="400"  y="220"  text="向前舉報警衛"  target="*j11"  ]
[s  ]

*j11
[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="ball_gay.jpg" method="crossfade" time="1000"]
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
你們這些警衛不好好看守就算了，到底想和這位平民老百姓做什麼！[p]

#樂正冉
秦毬？！[p]

#警衛A
啥？你哪來的啊，去去去，不甘你的事，我興致正在上頭哪少給我們潑冷水。[p]

#樂正冉
我沒事的秦毬，等我回來。[p]

#秦毬
你——！[p]
[bg storage="showroom.jpg" method="crossfade" time="3000"]
@jump target=*common_11

*common_11

@fadeoutbgm time="3000"
[chara_show  name=cat face=happy]
#黑美人
喵～大家都吵成一團了呢，沒人阻攔的感覺真好喵！[p]

@playse storage=get.ogg loop=false

[chara_shake name=cat count=5 swing=10 time=500]


[chara_hide_all time=500]
@layopt layer=message0 visible=false


[bg storage="white.jpg" method="crossfade" time="1000"]

[bg storage="black.jpg" method="crossfade" time="1000"]

[bg storage="showroom_alter.jpg" method="crossfade" time="5000"]



[chara_hide_all time=0]
@layopt layer=message0 visible=false


[movie storage="zoo_cat.webm" skip=false ]

@layopt layer=message0 visible=true
[current layer="message0"]
[font color="0x454D51"]

[bg storage="showroom_alter.jpg" method="crossfade" time="1000"]

@playbgm time="3000" storage=shadow.ogg loop=true

#濡娘
喵喵喵喵！喵喵～[p]

[chara_show  name=zang face=ops]
#樂正冉
嗯呸呸呸，果真是很久沒清唄，這腥味實在有夠嗆的⋯⋯嗯？濡娘你這是？[p]
#秦毬
⋯⋯濡娘看來是被這副場景給嚇壞了，現在只會學黑美人喵叫。[p]

#樂正冉
欸？！欸拜託我才是最該被嚇壞的人吧！？[p]
我就只是隨口說說罷了還真沒想到他們很久沒處理這件事了，那動作實在———。[p]
[chara_show  name=ball face=angry]
#秦毬
樂正冉你閉嘴。[p]
[chara_mod name=zang face=hmm time=0]
#樂正冉
啊，喔⋯⋯喔屋⋯⋯。[p]

[chara_hide  name=ball wait=false time=0]

[chara_mod name=zang face=ops time=0]
#樂正冉
不過這地上的人影⋯⋯摸上去感覺也像是甚麼沒摸著一樣，黑洞嗎？[p]

[chara_show  name=flower face=happy]
#墨花
嗯⋯⋯這些貼在地上的人影都是大家剛剛跳著妖怪手錶時的舞姿呢！[p]

[chara_hide_all time=0]

[chara_show  name=cat face=ops]
#黑美人
喵喵喵喵！鑽石不見了喵！剛剛還叼在我嘴裡的，千真萬確啊喵！[p]

@fadeoutbgm time="3000"
@playse storage=step_quick.ogg loop=false
#
達達———

@fadeinbgm time="3000" storage=hurry_up.ogg loop=true
[chara_hide_all time=0]

[chara_show  name=flower face=ops]
#墨花
那個身影？！一定是就是會長不會認錯的！[p]

[chara_show  name=cat face=ops]
#黑美人
喵！會長往甲板上跑了喵！[p]

[chara_hide_all time=0]

[chara_show  name=zang ]
#樂正冉
追上去吧！[p]

@layopt layer=message0 visible=false
[chara_hide_all time=0]
[bg storage="ship_corridor.jpg" method="crossfade" time="3000"]
@layopt layer=message0 visible=true

@playse storage=boom.ogg loop=false

[chara_show  name=zoo face=ops]
#濡娘
喵嗚！！！！！！！[p]

[chara_hide_all time=0]

[chara_show  name=zang face=ops]
#樂正冉
槍聲？地下室？！有沒有突然這麼忙碌是想逼死誰啦！[p]

[chara_show  name=flower face=ops]
#墨花
該不會是那老人家出人命了？我們錢還沒拿到手阿！！[p]

#樂正冉
走！地下室！[p]

[chara_hide_all time=0]

[chara_show  name=cat face=ops]
#黑美人
喵嗚！？喵～[p]


@layopt layer=message0 visible=false
[chara_hide_all]
[bg storage="B1.jpg" time="3000"]
@jump storage="scene9.ks"
