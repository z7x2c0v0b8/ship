;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="end_1_room.jpg" time="100"]

;聲明出現在此遊戲中的角色
;zang
[chara_new  name="zang" storage="chara/zang/normal.png" jname="樂正冉"  ]
[chara_face name="zang" face="angry" storage="chara/zang/angry.png"]
[chara_face name="zang" face="ops" storage="chara/zang/ops.png"]
[chara_face name="zang" face="happy" storage="chara/zang/happy.png"]
[chara_face name="zang" face="wink" storage="chara/zang/wink.png"]
[chara_face name="zang" face="hmm" storage="chara/zang/hmm.png"]
[chara_face name="zang" face="old" storage="chara/zang/old.png"]
[chara_face name="zang" face="angryold" storage="chara/zang/angryold.png"]
[chara_face name="zang" face="opsold" storage="chara/zang/opsold.png"]
[chara_face name="zang" face="happyold" storage="chara/zang/happyold.png"]
[chara_face name="zang" face="hmmold" storage="chara/zang/hmmold.png"]

;ball
[chara_new  name="ball" storage="chara/ball/normal.png" jname="秦毬"  ]
[chara_face name="ball" face="angry" storage="chara/ball/angry.png"]
[chara_face name="ball" face="ops" storage="chara/ball/ops.png"]
[chara_face name="ball" face="happy" storage="chara/ball/happy.png"]
[chara_face name="ball" face="old" storage="chara/ball/old.png"]
[chara_face name="ball" face="angryold" storage="chara/ball/angryold.png"]
[chara_face name="ball" face="opsold" storage="chara/ball/opsold.png"]
[chara_face name="ball" face="happyold" storage="chara/ball/happyold.png"]



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


@playbgm time="3000" storage=end_1.ogg loop=true

#???
……[p]

……？[p]

[chara_show  name=ball face=opsold]
#秦毬
……？！[p]

[chara_hide_all time=0]

[chara_show  name=zang face=opsold ]
#樂正冉
嗯？天啊哥哥你可終於醒啦！[p]
[chara_mod  name=zang face=hmmold time=0]
真難得看你這樣直接睡到大中午都不省人事，我擔心都來不及了。[p]

[chara_show  name=ball face=opsold]
#秦毬
我睡了這麼久？……原來我剛剛都在作夢？[p]

[chara_mod  name=zang face=happyold time=0]

#樂正冉
說來聽聽唄！你都夢見什麼啦？[p]

[chara_hide_all time=0]

[chara_show  name=ball face=old]
#秦毬
我夢見我們在一個叫做豪華客船的地方偷取鑽石。[p]
遇到一個很有錢的老人給我們很高的懸賞金……。[p]

[chara_show  name=zang face=happyold]
#樂正冉
聽起來挺好的啊，感覺是個好夢！[p]

[chara_mod name=ball face=angryold time=0]
#秦毬
我還夢見你勾搭別人幫他們處理那方面的需求。[p]

[chara_mod name=zang face=opsold time=0]
#樂正冉
誒？！這……秦毬你定是壓力太大了才會做這種怪夢。[p]
別胡思亂想哈我現在可是一身清清白白！[p]

[chara_mod name=zang face=hmmold time=0]
與人交歡這種事現在可不是說做就做，更不會為人所迫。[p]

[chara_mod name=ball face=opsold time=0]
#秦毬
我知道，但是——。[p]

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="end_1.jpg" method="crossfade" time="1000"]
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
好了！沒什麼好但是的![p]
我現在心底裡只有你一個，自然把你放在心上不會再做蠢事了。[p]
嗯唔……你若哪說時又擔心起來的話，找上我便是。[p]
我再證明給你看我有多把你放在心上唄！哈哈！[p]

#秦毬
嗯。[p]

@layopt layer=message0 visible=false
[bg storage="end_1_word.jpg" method="crossfade" time="3000"]
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
