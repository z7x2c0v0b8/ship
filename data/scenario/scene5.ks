;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="game.jpg" time="100"]

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




@playbgm time="3000" storage=game.ogg loop=true


[chara_show  name=zoo face=ops]
#濡娘
嗚哇……這裡跟其他地方比也太破敗了點吧。[p]

[chara_show  name=zang face=happy]
#樂正冉
這樣看下來還真的只有那個夾娃娃機台燈是亮的，那就玩玩看唄！[p]
[chara_mod  name=zang face=hmm]
省得老人又出來叨唸……嗯？裡面只有一個圓球？[p]

[chara_hide_all time=0]

[chara_show  name=ball ]
#秦毬
他不是球，他是木木鴞。[p]

[chara_show  name=zang face=ops]
#樂正冉
欸？！……是、是嘛？好唄，感覺你特別在意這玩意兒呢……。[p]

[chara_hide_all time=0]

[chara_show  name=flower face=happy]
#墨花
我來我來！讓我玩～[p]

[chara_hide_all time=0]

@stopbgm time="3000"
@playbgm time="3000" storage=machine.ogg loop=true

[chara_show  name=zoo face=happy]
#濡娘
是骨質酥鬆症的抓娃娃機！[p]

[chara_show  name=zang face=happy]
#樂正冉
跟台灣的抓娃娃機一樣呢！[p]

[chara_hide_all time=0]

[chara_show  name=flower face=ops]
#墨花
嗚嗚嗚嗚還我10元～～[p]

@stopbgm time="3000"
@playbgm time="3000" storage=game.ogg loop=true

[chara_hide_all time=0]

[chara_show  name=zang face=hmm]
#樂正冉
不過這機器也太怪了，連個鎖都都沒看到。[p]
不過有寫著一行字在上面……台灣珠寶協會製作？[p]

[chara_show  name=flower face=ops]
#墨花
啊！該不會珠寶就藏在那個叫木木鴞的球裡面吧？[p]

@stopbgm time="3000"
@fadeinbgm time="3000" storage=gun.ogg loop=true

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="game_mumu.png" method="crossfade" time="1000"]
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
那個音樂那陣光！！黃金槍在跟木木鴞產生共鳴！！[p]
木木鴞！我來了！[p]

@playse storage=hit.ogg loop=false

[bg storage="game.jpg" method="crossfade" time="1000"]

[chara_show  name=zoo face=angry]
#濡娘
機台還是不為所動呢。[p]

[chara_hide_all time=0]

@fadeoutbgm time="3000"
@fadeinbgm time="3000" storage=game.ogg loop=true

[chara_show  name=minf ]
#???
呀呀~你們看，這個機台是不是很G8啊。[p]
這完全就是會長的陰謀啊，你們應該也注意到了這個機台是珠寶協會製作了的吧？[p]
說來其實我跟那個會長是有點私怨的……我知道你們是要偷鑽石的，對吧？[p]

[chara_show  name=flower ]
#墨花
廢話。[p]

#???
你們不是怪盜嗎？！不是應該要隱藏身分嗎？！[p]

[chara_mod name=flower face=ops time=0]
#墨花
欸？！……ㄜ不是啦，我們是——。[p]

#???
不用騙我了我可是一名博物學家甚麼都知道！[p]
不如這樣吧，我們一起回我的房間商量一下對策如何？[p]

[chara_hide_all time=0]

[chara_show  name=zang ]
#樂正冉
ㄜ，你這人真的很可疑啊[p]

[chara_show  name=flower face=angry]
#墨花
怎覺得跟你回房間這句話光聽起來就很不舒服了啊。[p]

[chara_mod name=zang face=angry time=0]
#樂正冉
先跟你說喔，我們四人加一貓都是很貴的。[p]

[chara_hide_all time=0]

[chara_show  name=minf ]
啊酬勞的事等等再說，先隨我來吧。[p]

[chara_hide_all time=0]
@fadeoutbgm time="3000"
@layopt layer=message0 visible=false
[bg storage="minf_room.jpg" time="3000"]
@fadeinbgm time="3000" storage=minf_room.ogg loop=true
@layopt layer=message0 visible=true

[chara_show  name=zang face=hmm]
#樂正冉
哇，老人家你的房間看起來很豪華啊。[p]

[chara_show  name=minf ]
#???
那是當然！我這看起來不是超有錢嗎？你們還怕我付不出報酬嗎？[p]

[chara_mod  name=zang face=happy time=0]
#樂正冉
那我們不偷鑽石了，就偷你的錢唄！[p]

[chara_hide_all time=0]

[chara_show  name=zoo face=happy]
#濡娘
對啊，錢咧，拿出來啊。[p]

[chara_show  name=minf]
#???
ㄟ ？！……我、我被綁架了嗎！？！[p]

[chara_hide_all time=0]

[chara_show  name=cat]
#黑美人
喵？老人家你還好嗎喵？[p]

[chara_show  name=minf]
#???
ㄟ ？！……貓、貓咪會說話！！！？！[p]

[chara_hide_all time=0]

[chara_show  name=zoo face=angry]
#濡娘
好啦老爺爺你到底要講什麼快說吧，別在拖時間了。[p]

[chara_hide_all time=0]

[chara_show  name=minf]
#???
啊……啊啊好的，真是失禮了，我的名子是劉分儀，是個學者。[p]

#劉分儀
那我就不講其他的事情直接切入正題吧。[p]
我希望你們啊，讓林也真那傢伙的目的失敗！[p]
讓你們去把鑽石偷來，這樣就可以讓林也真舉辦的這場展示會失敗。[p]
我要向那傢伙復仇。[p]
偷來的鑽石最後會是你們的，此外我會再開出160萬的支票給你們當酬勞，如何？[p]

[chara_hide_all time=0]

[chara_show  name=zang face=angry]
#樂正冉
哀這太少了吧，你雇用的可是天上天下第一怪盜團啊！[p]

[chara_show  name=minf]
#劉分儀
好啦好啦我知道了，那我多加個零變1600萬，怎樣？[p]

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="hold_up.jpg" method="crossfade" time="1000"]
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

#濡娘
嗯？ 一個人1600萬對吧？[p]

#劉分儀
ㄜ、ㄜ咳咳咳……好，一個人1600萬，這樣可以了吧！？[p]

#樂正冉
好咧，成交！[p]
不過老爺爺你真的有那麼多錢嗎？這四人加一隻貓總計也有個8000萬……。[p]
要不直接加成一億如何？湊個整數好算多了！[p]

#劉分儀
喪盡家財啊……[p]

[bg storage="minf_room.jpg" method="crossfade" time="1000"]

[chara_show  name=minf]
#劉分儀
哎……算了算了，這個是我另外取得的展覽間的地圖。[p]

[chara_hide_all time=0]
@layopt layer=message0 visible=false
[bg storage="mission_map.jpg" method="crossfade" time="1000"]
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

#劉分儀
鑽石的確切位置是在這個大展覽間理的小展覽間。[p]
小展覽間門口外有兩個警衛，鑽石的下面還有魔法鎮。[p]

[bg storage="minf_room.jpg" method="crossfade" time="1000"]

[chara_show  name=flower face=ops]
#墨花
魔法鎮……真有這東西？也太中二了點吧！[p]

[chara_show  name=ball face=angry]
#秦毬
墨花我覺得妳沒有資格說人家中二。[p]

[chara_hide_all time=0]

[chara_show  name=zang face=angry]
#樂正冉
魔法陣有甚麼好稀奇的？黑美人都會講話了。[p]

[chara_hide_all time=0]

[chara_show  name=zoo ]
#濡娘
說來你跟會長到底有甚麼仇啦，這麼大費周章做這些？[p]

[chara_show  name=minf ]
#劉分儀
那個會長……他害死了我的老婆，我一定要向他復仇！[p]
都差不多了的話，你們就趕快行動吧，可別錯過了時機。[p]



[chara_hide_all]
@layopt layer=message0 visible=false
[bg storage="showroom_outdoor.jpg" time="3000"]
@jump storage="scene6.ks"
