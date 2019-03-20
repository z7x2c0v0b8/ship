;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="ship_outdoor.jpg" time="100"]

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


@playbgm time="3000" storage=scene1.ogg loop=true

[chara_show  name=cat face=happy]
#黑美人
喵喵喵喵！[p]
[chara_show  name=zoo face=happy]
#濡娘
啊，是個皮製的錢包。[p]

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
#黑美人
喵我發現的！[p]

#
————。[p]

[bg storage="ship_outdoor.jpg" method="crossfade" time="1000"]
[chara_show  name=zoo ]
#濡娘
說話的貓？嗯這我看多了，我們俄羅斯的貓都差不多這個樣子很會說話，大家不用緊張。[p]
[chara_mod name="zoo" face=happy time=0]
這錢包裡的銀幣剛好就是我國家的硬幣哪，我就先收著囉，看來今天真有好兆頭啊。[p]

[chara_show  name=zang ]
#樂正冉
哪，黑美人，可以幫忙引開那個站在入口處的守衛的注意嗎？ㄜ….裝可愛之類的？[p]

[chara_hide_all time=0]
[chara_show  name=cat face=happy]
#黑美人
喵～～～～[p]

[chara_show  name=NPC ]
#守衛
呀，是貓咪啊，真可愛。[p]

[chara_hide_all time=0]

[chara_show  name=flower face=happy]
#墨花
趁現在GoGoGo！！[p]

[chara_hide_all time=0]

[chara_show  name=minf]
#???
ㄟㄟㄟ，你們是想搭上那艘船是吧？讓我幫幫你們吧，跟著我來。[p]

[chara_show name="zoo" face="ops"]
[chara_move name=zoo left=10 anim=true]
#濡娘
嘿……[p]

#???
ㄟ...ㄟ~你們這是不想過是嗎？都離我離的這麼遠遠的.....啊啊不管就你跟我來吧。[p]

[chara_hide_all time=0]

[chara_show  name=NPC]
#守衛
好的，這位先生請入場.....小姐，你的票呢？[p]

[chara_show name="zoo" face="happy"]
#濡娘
啊那個，我是這個老先生帶來的....外傭，今天是陪著他當看護的。[p]

#???
咳咳——對，這個人是來照顧我的，咳咳。[p]

[chara_hide_all time=0]

[chara_show name="zang" face="ops"]
#樂正冉
糟了！他們入場了！我們快跟上！[p]

#守衛
欸欸欸，你們的票呢？[p]

[chara_show name="flower" face="ops"]
#墨花
對，那個外傭是外國人所以需要有人幫她翻譯才行。[p]
[chara_hide  name=zang wait=false ]
哥哥.....求求你嘛，他沒有我不行的....[p]

#守衛
啊.....好行行行，你快跟過去吧，別跟丟了啊。[p]

[chara_mod name=flower face=happy time=0]
#墨花
謝謝守衛哥哥<3[p]

[chara_hide_all time=0]

[chara_show  name=ball]
#秦毬
(要怎麼做呢....)[p]

[glink  color="black"  storage="scene2.ks"  size="20"  x="260"  width="400"  y="150"  text="交出事前造假的身分證和文件抵押獲得信任"  target="*j1"  ]
[glink  color="black"  storage="scene2.ks"  size="20"  x="260"  width="400"  y="220"  text="我的貓跑進去了，不進去找不行"  target="*j2"  ]
[s  ]

*j1
[cm]
#秦毬
守衛先生，這邊有我的身分證和外勞工作證，就先放在您身上壓著。[p]
這樣我本人跑不掉，你也方便調調查我，如何？[p]
#守衛
嗯，就交給我吧，真是個很有禮貌的外傭呢，你的主人一定會替你感到高興的，快去吧！[p]
@jump target=*common_2

*j2
[cm]
[chara_mod name=ball face=angry time=0]
#秦毬
不曉得守衛先生方才有沒有看到一隻黑貓？……那是我養的貓。[p]
我只是剛好經過此地沒想到他一看到這艘船就一溜菸的往你們這邊這邊跑……。[p]
#守衛
啊，原來那是你的貓啊？[p]
#秦毬
是的，他叫黑美人，一身烏黑亮麗著實可愛，不知能否給個方便讓我進去找找？他對我來說很重要……[p]
#守衛
嗯……這樣啊，我知道了，你趕快進去吧！快去快回！[p]
@jump target=*common_2

*common_2

[chara_hide_all time=0]

[chara_show  name=zang face=ops]
#樂正冉
欸……欸欸欸！！？你們怎就這樣走了？！[p]
[chara_show  name=NPC]
[chara_mod name=zang face=happy time=0]
嗯……哥哥行行好讓我過嘛，我給你我的電話。[p]
[chara_mod name=zang face=wink time=0]
全套，隨call隨到，再給你個優惠折扣打八折！如何？[p]
#守衛
————！[p]

@layopt layer=message0 visible=false
[chara_hide_all time=0]
[bg storage="ship_indoor.jpg" method="crossfade" time="3000"]
@layopt layer=message0 visible=true

[chara_show  name=flower]
#墨花
哼恩~原來那個守衛男女通吃呢！[p]
[chara_show  name=zoo]
#濡娘
恩真是多元成家的範例。[p]
[chara_mod name=flower face=happy time=0]
#墨花
不知道剛剛那個老人是不是也男女通吃！[p]
[chara_mod name=zoo face=ops time=0]
#濡娘
對老人呢？怎一個眨眼就不見了？[p]

[chara_hide_all time=0]

[chara_show  name=zang face=hmm]
#樂正冉
啊，那邊有會場的文宣，應該會有地圖甚麼的。[p]
@playse storage=drop.ogg loop=false

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="map_ship.jpg" method="crossfade" time="1000"]
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
是酒吧耶！[p]

#樂正冉
好！去酒吧看看吧！[p]

[bg storage="ship_indoor.jpg" method="crossfade" time="1000"]

[chara_show  name=ball face=angry]
#秦毬
等等，我們什麼都還沒做就開始慶功嗎？[p]
[chara_show  name=flower]
#墨花
先慶功一下啊！我們都登上船了耶！[p]

[chara_hide_all]
[bg storage="bar.jpg" time="3000"]
@jump storage="scene3.ks"
