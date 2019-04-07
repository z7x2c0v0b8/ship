;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="end_4_room.jpg" time="100"]

;聲明出現在此遊戲中的角色
;cat
[chara_new  name="cat" storage="chara/cat/normal.png" jname="黑美人"  ]
[chara_face name="cat" face="angry" storage="chara/cat/angry.png"]
[chara_face name="cat" face="ops" storage="chara/cat/ops.png"]
[chara_face name="cat" face="happy" storage="chara/cat/happy.png"]
[chara_face name="cat" face="zang" storage="chara/cat/zang.png"]
[chara_face name="cat" face="ball" storage="chara/cat/ball.png"]
[chara_face name="cat" face="zoo" storage="chara/cat/zoo.png"]




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

@playbgm time="3000" storage=music.ogg loop=true



#???
……。[p]

#秦毬貓
……喵……喵嗚？[p]
喵嗚！！！！[p]


#冉貓
喵？喵喵嗚？[p]

#七老
喵～～～～～[p]

[chara_show name=cat face=ops ]
#黑美人
喵！！[p]

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="end_4_word.jpg" method="crossfade" time="1000"]
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
你們在幹嘛呢？一大清早就這麼熱鬧啊？[p]
#墨花
但是我昨天可是個備受期中折磨的學生……[p]
饒過我吧我今天只想把自己睡死……安靜點，好嗎？[p]
#秦毬貓
貓嗚……[p]

@layopt layer=message0 visible=false
[bg storage="end_4_word.jpg" method="crossfade" time="1000"]
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
