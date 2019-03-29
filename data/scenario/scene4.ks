;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="guest_room.jpg" time="100"]

;聲明出現在此遊戲中的角色

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
[chara_face name="zang" face="happyold" storage="chara/zang/happyold.png"]

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
[chara_new  name="minf" storage="chara/minf/normal.png" jname="???"  ]

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

@playbgm time="3000" storage=guest_room.ogg loop=true

[bg storage="wth.jpg" method="crossfade" time="1000"]
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
黃金槍好麻煩喔⋯⋯乾脆把它夾在乳溝裡好了。[p]

#秦毬
這把槍現在黏在你的手上你是要怎麼夾進去⋯⋯[p]

#樂正冉
就整隻手都夾進去？[p]

#墨花
哎呀，這樣有一種隨時都在翻事業線的感覺呢！[p]

[bg storage="guest_room.jpg" method="crossfade" time="1000"]

[chara_show  name=minf]
#???
呀~你們都很順利地上了客船了呢[p]

[chara_hide_all time=0]

[chara_show  name=flower face=ops]
#墨花
喔！你不是那個色老頭嗎？[p]

[chara_show  name=zoo face=happy]
#濡娘
老人，換尿布的時間到了。[p]

[chara_hide_all time=0]

[chara_show  name=minf]
#???
才沒有尿布我還健康的很！[p]
話說你們去玩過這裡遊樂區的抓娃娃機了嗎？[p]
沒有的話趕快去玩一玩啊，我沒有其他要跟你們說的了。[p]

@playse storage=step.ogg loop=false
[chara_hide_all]

[chara_show  name=zang face=hmm]
#樂正冉
欸⋯⋯娃娃機⋯⋯欸？！走掉了⋯⋯真是個奇怪的老人。[p]

[chara_mod  name=zang face=happy]
#樂正冉
嗯⋯⋯既然都來了，我們要不要隨機闖入一個房間偷點東西再走？[p]

[chara_show  name=flower face=happy]
#墨花
好呀好呀～[p]

[chara_show  name=zang ]
#樂正冉
好咧！開鎖什麼的交給我吧，我可是工具人呢這點技巧不算甚麼！[p]

[chara_hide_all time=0]

[chara_show  name=zoo face=happy]
#濡娘
那就開這間吧，離我們最近。[p]

[chara_show  name=flower ]
#墨花
我來聽聽門後有沒有人～[p]

[chara_hide_all time=0]


[chara_show  name=akane face=happy]
#警衛
喂！你們在這邊幹麻？[p]

[chara_show  name=zang face=happy]
#樂正冉
ㄜ⋯⋯這個是我們的房間，我們忘記帶鑰匙了進不去，哈哈真是糊塗了我！[p]

#警衛
那把船票拿出來我看看。[p]

[chara_hide_all time=0]

[chara_show  name=zoo face=ops]
#濡娘
喔嗚⋯⋯那個，我們是一個老人家的幫傭，船票都在他那呢我們沒有。[p]

#警衛
那你們的主人在哪？說！[p]

[glink  color="black"  storage="scene4.ks"  size="20"  x="260"  width="400"  y="150"  text="他去上廁所了等等就會回來。"  target="*j5"  ]
[glink  color="black"  storage="scene4.ks"  size="20"  x="260"  width="400"  y="220"  text="你數到三，他就會出現在你的面前。"  target="*j6"  ]
[s  ]

*j5
[chara_hide_all time=0]
[chara_show  name=ball face=happy]
#秦毬
他去上廁所了很快就會回來⋯⋯你看，他正跑著過來呢。[p]

[chara_show  name=minf]
#???
哎、哎呀～沒事沒事，他們都是我的隨從沒錯！[p]
@jump target=*common_5

*j6
[chara_hide_all time=0]
[chara_show  name=ball]
#秦毬
你數到三，他就會出現在你的面前。[p]

#警衛
你少唬我！⋯⋯一、二、三！[p]

[chara_show  name=minf]
#???
哎、哎呀～沒事沒事，他們都是我的隨從沒錯！[p]

#警衛
哇⋯⋯真厲害。[p]
@jump target=*common_5

*common_5

[chara_hide_all time=0]
[chara_show  name=akane]
#警衛
嗯⋯⋯好吧，知道了，那就不再打擾你們了，我先離開了。[p]

[chara_hide_all ]

[chara_show  name=minf]
#???
嗨壓你們在這邊打什麼壞主義啊！不是叫你們去玩抓娃娃機了嗎？！[p]

[chara_show  name=zang face=ops]
#樂正冉
可是我們不是小孩，我們想偷東西啊！[p]

#???
總之那裏有好東西啦快去看快去看[p]

[chara_hide name=minf ]
@playse storage=step.ogg loop=false

[chara_mod  name=zang face=angry]
#樂正冉
啥⋯⋯又走了。我們別管他繼續偷唄。[p]

[chara_show  name=zoo ]
#濡娘
嘛老人都這麼說了就過去看看吧，反正一個夾娃娃機也玩不了多久。[p]
我們將來可是要賺大錢的人！不能拘泥於眼前的小謀利！[p]

[chara_mod  name=zang face=happy]
#樂正冉
嗯嗚⋯⋯你說的是，那好！去操縱室看看唄[p]


@layopt layer=message0 visible=false
[chara_hide_all time=0]
[bg storage="special.jpg" method="crossfade" time="3000"]
@layopt layer=message0 visible=true

@stopbgm time="3000"


@fadeinbgm time="3000" storage=special.ogg loop=true

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="special.jpg" method="crossfade" time="1000"]
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
嗚哇，這邊也有警衛！[p]
他們看起來特別帥......我們一定打不過的快撤吧！[p]

#秦毬
不，比起這個，他們之間產生的氛圍好像不適合我們介入......。[p]

#墨花
這是多元成家的味道！[p]

#濡娘
要不是有要事在身還真想站在這多看一會兒呢～[p]

@layopt layer=message0 visible=false
[chara_hide_all]
[bg storage="game.jpg" time="3000"]
@jump storage="scene5.ks"
