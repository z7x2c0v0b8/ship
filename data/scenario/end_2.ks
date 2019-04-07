;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="end_2_room.jpg" time="100"]

;聲明出現在此遊戲中的角色
;zang
[chara_new  name="zang" storage="chara/zang/normal.png" jname="樂正冉"  ]
[chara_face name="zang" face="young" storage="chara/zang/young.png"]
[chara_face name="zang" face="happyyoung" storage="chara/zang/happyyoung.png"]
[chara_face name="zang" face="sadyoung" storage="chara/zang/sadyoung.png"]



;ball
[chara_new  name="ball" storage="chara/ball/normal.png" jname="秦毬"  ]
[chara_face name="ball" face="angry" storage="chara/ball/angry.png"]
[chara_face name="ball" face="ops" storage="chara/ball/ops.png"]
[chara_face name="ball" face="happy" storage="chara/ball/happy.png"]
[chara_face name="ball" face="angryold" storage="chara/ball/old.png"]
[chara_face name="ball" face="angryold" storage="chara/ball/angryold.png"]
[chara_face name="ball" face="opsold" storage="chara/ball/opsold.png"]
[chara_face name="ball" face="happyold" storage="chara/ball/happyold.png"]
[chara_face name="ball" face="young" storage="chara/ball/young.png"]
[chara_face name="ball" face="happyyoung" storage="chara/ball/happyyoung.png"]
[chara_face name="ball" face="sadyoung" storage="chara/ball/sadyoung.png"]
[chara_face name="ball" face="cryyoung" storage="chara/ball/cryyoung.png"]

;teacher
[chara_new  name="teacher" storage="chara/teacher/normal.png" jname=阿瑪涅斯"  ]
[chara_face name="teacher" face="angry" storage="chara/teacher/angry.png"]



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

*start
@playbgm time="3000" storage=end_2.ogg loop=true

#???
……。[p]

……？[p]
[chara_show  name=ball face=sadyoung]
#西瑟
！！……。[p]

[chara_hide_all time=0]

[chara_show  name=zang face=young]
#樂正冉
西——瑟——西瑟！……秦毬？[p]
[chara_mod name=zang face=happyyoung time=0]
你這不是醒著嗎？怎都不應一聲啊？[p]

[chara_hide_all time=0]

[chara_show  name=ball face=sadyoung]
#西瑟
……。[p]


[chara_show  name=zang face=sadyoung]
#樂正冉
你……不舒服？我去把師傅叫過來。[p]


#西瑟
不、不是！我！……[p]

#樂正冉
什麼是不是我不我的啊？西瑟 · 溫戴爾你睡矇了嗎？[p]

[chara_hide_all time=1000]

#樂正冉
……嗯？誒等等！你、你怎麼哭起來了？[p]
你哪裡疼了？真的不用叫師傅來？[p]

[chara_show  name=ball face=cryyoung]
#西瑟
……別把師傅叫過來，拜託。[p]


[chara_show  name=zang face=sadyoung]
#樂正冉
好啦，我知道了。[p]


[chara_mod name=ball face=young time=0]
#西瑟
我做了一個夢。[p]

[chara_mod name=zang face=young time=0]
#樂正冉
一個夢？[p]

#西瑟
我不大記得中間的過程了……。[p]

[chara_mod name=ball face=sadyoung time=0]
只記得最後我拿著一個像是武器的東西。[p]

[chara_mod name=ball face=cryyoung time=0]
不知道為了甚麼理由朝你攻擊而去，你直接從我的面前倒下……我就醒來了。[p]

[chara_mod name=zang face=sadyoung time=0]
#樂正冉
毬……[p]

[chara_hide_all time=0]

[chara_show  name=teacher ]
#阿瑪涅斯
你們兩一大清早的哭哭啼啼做什麼？[p]

[chara_hide_all time=0]

[chara_show  name=zang face=young]
[chara_show  name=ball face=young]
#西瑟、冉
師傅！[p]

[chara_hide_all time=0]

[chara_show  name=teacher face=angry ]
#阿瑪涅斯
西瑟，你做了惡夢，是吧？[p]

[chara_show  name=ball face=sadyoung]
#西瑟
嗯……。[p]

[chara_hide_all time=0]

[chara_show  name=teacher ]
#阿瑪涅斯
既然你都知道這是個惡夢，那便代表你不願看到夢裡的事情發生。[p]
只要心存著這點自知，日後便可以加以警惕自己要對此更為注意，惡夢就不會發生。[p]
夢的本質是警示，並不是預知未來，這點你們都給我記清楚了。[p]

[chara_hide_all time=0]

[chara_show  name=zang face=young]
[chara_show  name=ball face=young]
#西瑟、冉
是！[p]

[chara_hide_all time=0]

[chara_show  name=teacher face=angry]
#阿瑪涅斯
行了，把東西收拾一下，準備出發。[p]

[chara_hide_all time=0]

[chara_show  name=zang face=happyyoung]
#樂正冉
好咧！……欸欸，秦毬。[p]

[chara_show  name=ball face=young]
#西瑟
嗯？[p]

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="end_2.jpg" method="crossfade" time="1000"]
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
你放心吧，我知道我或許沒辦法像師傅或是你的將來成為一個優秀的德魯伊。[p]
但是我會用我自己的方式讓自己變的強大！
不會輕易的被任何人解決掉，也可以保護你！哈哈！[p]

#西瑟
……嗯！[p]

@layopt layer=message0 visible=false
[bg storage="end_2_word.jpg" method="crossfade" time="3000"]
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

