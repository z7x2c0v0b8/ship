;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="bar.jpg" time="100"]

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

;bar
[chara_new  name="bar" storage="chara/bar/normal.jpg" jname="酒保"  ]

;隱藏菜單按鈕
@hidemenubutton

;客製化對話框
[font color="0x454D51"]
[deffont color="0x454D51"]

;CG圖緩衝
[position layer="2" page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[position layer="2" left=20 top=40 width=920 height=560 page=fore visible=true]
@layopt layer="2" visible=false

;訊息框
[position layer="message1" page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[position layer="message1" left=20 top=40 width=920 height=560 page=fore visible=true]
@layopt layer="message1" visible=false

;對話框
[position layer=message0 width=960 height=210 top=430 left=0]
[position layer=message0 page=fore frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60" opacity=230 ]
[chara_config ptext="chara_name_area"]
[ptext name="chara_name_area" layer="message0"  color="0xFAFAFA"  size=24 x=40 y=435]
@layopt layer=message0 visible=true


;添加角色按鈕;;;;;;;;;;;;;;;;
	
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x=35 y=610]

;	オート
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x=110 y=610]

;	セーブ
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x=185 y=610]

;ロード
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x=260 y=610]

;クイックセーブ
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x=335 y=610]

;クイックロード
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x=410 y=610]

;バックログ
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x=485 y=610]

;メッセージウィンドウ非表示
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x=560 y=610]

;フルスクリーン切替
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x=635 y=610]

;メニュー呼び出し（※ロールボタンを使うなら不要）
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x=710 y=610]

;コンフィグ（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" x=785 y=610 storage="config.ks"]

;タイトルに戻る
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x=860 y=610]

;;ロールボタン追加終わり






@playbgm time="3000" storage=scene1.ogg loop=true


[chara_show  name=bar]
#酒保
各位要喝什麼呢？[p]

[chara_hide_all time=0]

[chara_show  name=flower]
#墨花
香檳～～[p]

[chara_show  name=zoo]
#濡娘
伏特加麻煩。[p]

[chara_hide_all time=0]

[glink  color="blue"  storage="scene3.ks"  size="20"  x="260"  width="400"  y="150"  text="紅酒"  target="*j3"  ]
[glink  color="blue"  storage="scene3.ks"  size="20"  x="260"  width="400"  y="220"  text="養樂多"  target="*j4"  ]
[s  ]

*j3
[cm]
[chara_show  name=zang face=ops]
#樂正冉
誒誒誒，你怎能喝酒呢？那杯就給我吧。[p]
[chara_mod name=zang face=happy time=0]
我幫你點個....柳橙汁？[p]
[chara_show  name=ball face=ops]
#秦毬
啥？[p]
@jump target=*common_3

*j4
[cm]
[chara_show  name=zang face=happy]
#樂正冉
那我要喝柳橙汁！另外再加一杯牛奶，我們家的貓要喝的。[p]
[chara_show  name=cat face=happy]
#黑美人
喵～[p]

@jump target=*common_3

*common_3

[chara_hide_all time=0]
[chara_show  name=bar]
#酒保
好、好的，請稍後[p]
[chara_hide  name=bar wait=false time=0]

[chara_show  name=flower face=angry]
#墨花
酒保，你們這邊有DJ嗎？[p]

#酒保
什麼？[p]

[chara_show  name=zang face=angry]
#樂正冉
這裡的氣氛有點冷啊~放點音樂來熱熱場子唄？[p]

[chara_hide_all time=0]
[chara_show  name=bar]
#酒保
這⋯⋯這是我們的疏忽，我現在就找個音樂來。[p]
[chara_hide  name=bar wait=false time=0]

@fadeoutbgm time="3000"
@fadeinbgm time="3000" storage=bar.ogg loop=true

[chara_show  name=zang face=angry]
#樂正冉
⋯⋯原來是這種酒店啊？[p]

#酒保
這裡是酒吧！[p]

[chara_show  name=zoo face=ops]
#濡娘
嗯？⋯⋯我們好像應該問他些什麼。[p]

[chara_hide_all time=0]

[chara_show  name=cat]
#黑美人
問鑽石的事喵！[p]

[chara_show  name=zang face=hmm]
#樂正冉
喔對耶！[p]

[chara_hide  name=cat wait=false]
[chara_show  name=zang time=0]
#樂正冉
酒保先生，你知道這次的會場上有展示一個聽說是世界級珍貴的的黑鑽石嗎？[p]

[chara_show  name=bar]
#酒保
嗯鑽石我是不清楚啦，不過這次主辦的珠寶協會的會長不好的緋聞很多，我不是那麼喜歡他就是了。[p]

[chara_hide  name=zang wait=false]
[chara_show  name=zoo time=0]
#濡娘
嗯？怎麼說[p]

#酒保
哎呀這個...不好說。[p]

[chara_hide_all time=0]
[chara_show  name=flower face=happy]
#墨花
唉呦帥哥帥哥~講給我們嘛，人家想聽八卦～[p]

[chara_hide_all time=0]
[chara_show  name=bar]
#酒保
哎⋯⋯真拿小姐沒辦法。[p]
上次那個會長來我們酒吧的時候，他竟然說要找一個在夜晚出現帶著沼澤氣味的河童？[p]
那人看起來一本正經卻滿口都是這種怪力亂神的事情，真是叫人噁心⋯⋯[p]

[chara_hide_all time=0]
[chara_show  name=ball]
#秦毬
河童⋯⋯那你知道他人現在在哪嘛？[p]

#酒保
他人現在應該在會場附近巡視吧。？[p]

[chara_show  name=zang face=happy]
#樂正冉
那你知道他喜歡些甚麼嘛？[p]

[chara_hide_all time=0]
[chara_show  name=bar]
#酒保
欸？嗯⋯⋯既然他都這麼認真在講了那大概就是喜歡些怪力亂神的東西吧？[p]

[chara_show  name=zoo]
#濡娘
那他一定會喜歡我們的貓，他會說ㄍㄋㄋ[p]

#酒保
？？？？？？[p]
啊...這貓我是沒太大的興趣，不過你們認識那把槍嗎？掛在牆上的那把。[p]

[chara_hide_all time=0]
[chara_show  name=zang face=angry]
#樂正冉
怎麼會是你問我們啊？不是我們該問你這問題嘛？[p]

[chara_show  name=bar]
#酒保
啊行行，不知道吧！[p]
那把槍啊就跟大船上除魔的東西一樣，是不知道還能不能使用的舊東西了。[p]
不過聽說等一個成熟的時機到了，槍身就會發出光芒⋯⋯[p]
擊破真實之後便能驅魔惡魔，是把很厲害的槍呢！[p]

[chara_hide_all time=0]
[chara_show  name=flower]
#墨花
哇～是把很中二的槍呢！[p]
[chara_show  name=zang face=happy]
#樂正冉
哇這肯定能賣錢的，可以給我們嗎哈哈？[p]

[chara_hide_all time=0]
@fadeoutbgm time="3000"
@fadeinbgm time="3000" storage=gun.ogg loop=true
#
鏗————！[p]

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
就⋯⋯就是J個！！[p]
#酒保
這⋯⋯這怎麼可⋯⋯可能[p]

[bg storage="bar.jpg" method="crossfade" time="1000"]

[chara_show  name=flower face=angry]
#墨花
嗯奇怪....怎麼拿不下來？！[p]

[chara_show  name=zang face=happy]
#樂正冉
嗯~好可惜啊，如果要賣這把槍的話，就要連墨花都要一起賣出去了呢。賣槍贈美人！[p]

[chara_mod name=flower face=ops time=0]
#墨花
嗚嗚嗚嗚怎麼不是黏在黑美人身上！[p]

[chara_hide_all time=0]

[chara_show  name=cat face=ops]
#黑美人
喵嗚~~~~~~喵！[p]

[chara_hide_all time=0]

[chara_show  name=flower face=angry]
#墨花
好吧.....那我先把我的手藏在袖子裡吧！[p]

[chara_hide_all]
@layopt layer=message0 visible=false
[bg storage="guest_room.jpg" time="3000"]
@jump storage="scene4.ks"
