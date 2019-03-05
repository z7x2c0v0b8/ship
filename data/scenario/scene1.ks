;Tyranno腳本示例遊戲
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="kaitou_room.jpg" time="100"]

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

;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

;隱藏菜單按鈕
@hidemenubutton

;客製化對話框
[font color="0x454D51"]
[deffont color="0x454D51"]

[position layer="2" page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[position layer="2" left=20 top=40 width=920 height=560 page=fore visible=true]
@layopt layer="2" visible=false

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
#
這裡是怪盜們的基地，某棟大樓的一角。[p]
已經好一陣子沒有收入，連房租都付不起的怪盜團團員們陷入大危機！[p]
大家因此聚在一起商量該如何是好……[p]

[chara_show  name="flower" face="happy"  ]
[font size="30"   ]
#墨花
我們沒有錢——！[p]
[resetfont  ]

[chara_hide name="flower" time="0"]
[chara_show  name="zang" face="angry"  ]
#樂正冉
我們不會就這樣餓死了吧......連基本的飯都煮不起。[p]

[chara_show  name="zoo" face="happy"  ]
#濡娘
已經被停伙停了三天，停電也停了五天。[p]

[chara_hide_all time=0]

[chara_show  name="flower" face="happy"]
[font size="30"   ]
#墨花
那我們去夜店吃飯吧——！[p]
[resetfont  ]

[chara_show  name="ball" face="angry"]
#秦毬
……我們近期連個像樣的收入都沒有，根本扛不起大家的高消費額度[p]
[chara_hide_all time=0]

[chara_show  name="zang" wait="false" layer="0"]
#樂正冉
唉……我去看看冰箱還有些什麼好了。[p]

;玩家選擇選項
[glink  color="blue"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="150"  text="都停電三天了冰箱有食物也壞了"  target="*selection_1"  ]
[glink  color="blue"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="220"  text="不可能會有的，你這麼會吃"  target="*selection_2"  ]
[s  ]

*selection_1
[cm]

[chara_mod  name="zang" face="hmm" time=0 ]
#樂正冉
嗯，沒有.....是不是應該慶幸這樣我們就可以省下冰箱的清潔費?。[p]
@jump target=*common

*selection_2
[cm]

[chara_mod  name="zang" face="ops" time=0 ]
唉我還真想反駁你.....但就如你所說，果然什麼都沒有呢。[p]
@jump target=*common

*common
[chara_hide_all time=0]

[chara_show  name="cat" wait="false"]
#黑美人
喵嗚～[p]

[chara_hide name="cat" wait="false" time="0"]
@playse storage=drop.ogg loop=false
#
[font size="30"]
咚——[p]
[cm]

[chara_show  name="zoo" wait="false" face="ops" ]
#濡娘
額，報紙？[p]

[chara_mod name="zoo" face="angry" time=0]
我們哪來的錢訂報紙，誰偷拿繳電費的錢訂報紙啦。[p]

[chara_hide name="zoo" wait="false" time="0"]

[bg storage="default.png" method="crossfade" time="1000"]
@layopt layer=message0 visible=false
@layopt layer="2" visible=true
[font color="0xFFFFFF"]
[current layer="2"]
#
test[r][l]
[cm]
@layopt layer=2 visible=false


@layopt layer="message1" visible=true
[font color="0xFFFFFF"]
[current layer="message1"]

#
第二十八回國際珠寶飾品展示會，世界最大的黑鑽石登台！！[r][l]
台灣珠寶協會今天發表了台灣第二十八回國際珠寶飾品展示會開幕事項，[r][l]
在這個每年一次台灣最大的展示盛會中，[r]
參展公司和參觀者將可以進行商業交易，[r][l]
跟據統計，其歷屆交易金額最高達到三十億元！[r][l]
台灣珠寶協會會長林也真表示，[r]
這次的展出公司將會帶來史無前例要價將近數十億之寶石，[r][l]
堪稱奪得世界紀錄！預計將聚集更多的參觀者前來。[r][l]
為前日本珠寶協會會長林也剛的兒子，林也真先生可以說是帶著父親光環，[r]
但有傳聞曾涉嫌各種醜聞和賄賂交易，[r]
因此協會內部有各種對他質疑的聲浪。[r][l]
[cm]
@layopt layer=message1 visible=false
@layopt layer=message0 visible=true
[bg storage="kaitou_room.jpg" method="crossfade" time="1000"]
[current layer="message0"]
[font color="0x454D51"]

[chara_show name="zoo" wait="false" face="ops" time="0"]
#濡娘
喔嗚...我的中文ㄅ4hen 豪，看哺懂[p]
[chara_hide_all time=0]

[chara_show name="cat" wait="false" face="angry" ]
#黑美人
喵喵～喵喵喲[p]

[chara_show name="flower" wait="false" face="ops"]
#墨花
喔！！黑美人說他知道了！[p]
[chara_hide_all time=0]
[chara_show name="zang" wait="false" face="ops" ]
#樂正冉
不不不還是我看看唄。[p]
......擁有黑鑽石的人一定會死亡？[p]
[chara_mod name="zang" face="hmm" time=0]
這個珠寶展示會剛好就辦在今天，地點在豪華客船上？[p]

[chara_show name="ball" wait="false"]
#秦毬
這客船就是我們基地附近港口上的那艘吧？初估不用五分鐘就可以到了。[p]

[chara_mod name="zang" face="ops" time=0]
#樂正冉
嗯這船兩點開船......現在不已經一點半了嗎？！[p]
[chara_mod name="zang" face="happy" time=0]
沒有甚麼好顧慮的！走吧！[p]
[chara_hide_all time=0]

[chara_show name="flower" wait="false" ]
#墨花
Let’s partyyyyyyyyy[p]
[chara_hide_all time=0]
[chara_show name="zang" wait="false" ]
#樂正冉
不過果然還是先看看天氣如何唄，討個好兆頭！今天的天氣是........[p]

[glink  color="blue"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="150"  text="晴天"  target="*selection_3"  ]
[glink  color="blue"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="220"  text="雨天"  target="*selection_4"  ]
[s  ]

*selection_3
[cm]

[chara_mod name="zang" face="happy" time=0]
晴天，晚上有新月[p]
感覺挺好的啊到晚上還可以抬頭看看星空，咱們速速前去吧！[p]
@jump target=*common_2

*selection_4
[cm]

[chara_show name="ball" face="angry" wait="false"]
#秦毬
你看成明天了....今天是晴天晚上還會有新月。[p]
[chara_mod name="zang" face="happy" time=0]
#樂正冉
啊、啊哈哈哈，這正餓著呢好幾天都沒吃飽，很容易走神看錯是吧？[p]
#秦毬
........[p]
@jump target=*common_2

*common_2
[chara_hide_all]
@layopt layer="message0" visible=false
[bg storage="ship_outdoor.jpg" time="3000"]
@jump storage="scene2.ks"

[cm]
[font size=40]
[delay speed=160]
ティラノスクリプトー[p]
[delay speed=30]
[resetfont]

#
・・・・[p]
#あかね
ティラノスクリプトを使うと、簡単に本格的なノベルゲームが簡単に作れてしまうのよ。[p]
#
へぇー。それはちょっと興味あるね。[p]

[chara_mod  name="akane" face="happy"  ]
#あかね
ほ、ほんと！？[p]
このゲームをプレイするだけで、ティラノスクリプトの機能を確認することができるから[p]
ぜひ、最後までつきあってね[p]

まず、ティラノスクリプトの特徴として[font color="red"]「HTML5」[resetfont]で動作するよ[p]


#
つ、つまり？[p]
#あかね
一度ティラノスクリプトで作ったゲームは多くの環境で動作させることができるってこと！[p]
#
へぇー。それはいいね。[p]
せっかく作ったらたくさんの人に遊んでもらいたいもんね。[p]

#あかね
ウィンドウズ用のPCアプリケーションはもちろん。[p]
マック用のアプリケーションにだって対応するわよ。[p]
あと、HTML5だから、ブラウザゲームとしても発表できるわよ。[p]
ウェブサイトに貼り付けて遊んでもらえるから、気軽にゲームをプレイしてもらうことができるね。[p]
主要なブラウザはすべてサポートしているから、安心してね。[p]
#
やるなぁ。。[p]

でも、最近スマホが復旧してて、僕のサイトにもスマホで訪れる人が増えたんだけど[p]
スマホからは遊べない？[p]

#あかね
ティラノスクリプトで作ったゲームはスマートフォンからでも遊べるよ！[p]
アイフォーン、アンドロイドはもちろん。アイパッドとかのタブレットでも問題ないわ。[p]
#
おぉー。[p]

#あかね
AppStoreやGooglePlayに向けてアプリ化して販売することもできるから[p]
#
おぉぉ、、やっとの貧困生活から脱出できるかも[p]
#あかね
まぁ、おもしろいゲームつくらないと、売れもしないけどな！[p]
#
くっ。。[p]

#あかね
じゃあ、次に場面を移動してみるね[p]
廊下に移動するよ[p]
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]

#
お、廊下に移動したね。[p]

#あかね
寒いよぉ〜。はやく教室に戻ろう。[p]

[bg  time="1000" method="slide"  storage="room.jpg" ]
#
あれ、今、場面の移動がちょっと違ったね。[p]
#あかね
うん。急いでたからね。[p]
ティラノスクリプトでは、いろいろな演出を加える事ができて[p]
画面を切り替えるだけでも１０種類以上の演出がつかえるよ。[p]
#
ふむ。便利だ[p]

#あかね
次にメッセージの表示方法を変えてみるね[p]
ティラノスクリプトでは、今みたいなアドベンチャーゲームの他に[r]
ビジュアルノベルのような全画面表示のゲームもつくれるよ。[p]

#

;收起角色圖像
[chara_hide name="akane"]


;將消息切換到全屏
[position layer="message0" left=20 top=40 width=920 height=560 page=fore visible=true ]

どうかな? 物語をじっくり読ませたい場合はこの方式が便利ですね[l][r]
ティラノスクリプトは非常に強力で、柔軟な表現が可能です。[l][cm]

[font size=40]文字のサイズを変更したり
[l][r]
[resetfont]
[font color="pink"]色を変更したり
[resetfont][l][r]

[ruby text=る]ル[ruby text=び]ビを[ruby text=ふ]振ることだって[ruby text=かん]簡[ruby text=たん]単にできます[l]
[cm]

;直書
[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]

このように縦書きで記述することもできます。[r][l]
縦書きでも、横書きの時と同じ機能を使うことができます。[r][l]

;退出直書
[position vertical=false]

横書きと縦書きをシーンによって使い分けることもできます[r][l]
じゃあ、アドベンチャー形式に戻しますね[p]

;還原消息框至原尺寸
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]

@chara_show name="akane"

#akane
メッセージボックスは、自分の好きな画像を使うこともできるよ[p]



[font color="0x454D51"]
[deffont color="0x454D51"]

;更改名稱的顯示位置
[free name="chara_name_area" layer="message0"]

[position layer=message0 width=960 height=210 top=430 left=0]
[position layer=message0 page=fore frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60" opacity=230 ]


;名稱框架設置
[ptext name="chara_name_area" layer="message0"  color="0xFAFAFA"  size=24 x=40 y=435]
[chara_config ptext="chara_name_area"]

どうかな？[p]
ゲームに合わせて自分の好きなデザインを作ってくださいね[p]

あと、デフォルトだとセーブやロードは画面右下のボタンからできるけど[p]
ウィンドウをカスタマイズすれば、、、、[p]


こんな風にゲームに必要な機能を画面の上に持たせることも簡単にできるよ[p]
これはロールボタンといって、ボタンに特別な機能を持たせる事ができます。[p]
標準で用意されているのは、[l]
セーブ、[l]
ロード、[l][cm]
タイトルへ戻る、
メニュー表示、
メッセージ非表示、
スキップ、
バックログ、
フルスクリーン切り替え、
クイックセーブ、
クイックロード、
オートモード！
[p]

はぁ、はぁ[p]

#
大丈夫？[p]
これだけあれば、ゲームを作るには困らなそうだね[p]

#あかね
さて、もちろん音楽を鳴らすこともできるよ[l][cm]
それじゃあ、再生するよ？[l][cm]

[link target=*playmusic]【１】うん。再生してください[endlink][r]
[link target=*noplay]【２】いや。今は再生しないで！[endlink]
[s]

*playmusic

[cm]
よし、再生するよ。[l]
@playbgm time="3000" storage=music.ogg loop=true
徐々にフェードインしながら再生することもできるんだ[l][cm]

@jump target="*common_bgm"

*noplay
[cm]
うん。わかった。再生はしないね。[l][cm]
また、試してみてね[l][cm]

*common_bgm

あ、そうそう[l][cm]
今みたいな選択肢で物語を分岐することも、簡単にできるよ。[l][cm]

#あかね
ここらで、別のキャラクターに登場してもらいましょうか[l][cm]
やまとー[p]
[chara_show name="yamato"]

こんな風に。簡単です。[l][r]
キャラクターは何人でも登場させることができるから、試してみてね。[p]

#yamato
おい、俺もう、帰っていいかな？[l][cm]

#akane
あ、ごめんごめん。ありがとう[l][cm]

[chara_hide name="yamato"]

#akane
これでティラノスクリプトの基本機能の説明は終わりだけど[p]
どうだったかな？[p]

#
うん、これなら自分でも作れそうな気がしてきたよ[p]

#あかね
よかった！[p]
最初は、ティラノスクリプト公式ページのチュートリアルをやってみると良いと思うよ！[p]
もちろん、このゲームもティラノスクリプトで動いてるから、参考になると思うし。[p]
ぜひ、ゲーム制作にチャレンジしてみてね[p]
プレイしてくれてありがとう。[p]

最後にティラノスクリプトで役立つ情報へのリンクを表示しておくから
確認してみてね。[p]

[cm]

*button_link

@layopt layer=message0 visible=false
@layopt layer=fix visible=false
[anim name="akane" left=600 time=1000]

;リンクボタンを表示
[glink text="ティラノビルダーの紹介" size=20 width=500 x=30 y=100 color=blue target=tyranobuilder ]
[glink text="制作事例" size=20 width=500 x=30 y=160 color=blue target=example ]
[glink text="応用テクニック" size=20 width=500 x=30 y=220 color=blue target=tech ]
[glink text="役に立つ情報源" size=20 width=500 x=30 y=280 color=blue target=info ]
[glink text="タグリファレンス" size=20 width=500 x=30 y=340 color=blue target=tagref ]

[s]

*tyranobuilder

[cm]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true;
[font color-"red"]
「ティラノビルダー」
[resetfont]
という無料の開発ツールもあります。[p]

[image layer=1 page=fore visible=true top=10 left=50 width=560 height=400  storage = builder.png]

これは、グラフィカルな画面でノベルゲームを作れるツールです[p]
スクリプトが苦手な人でもゲーム制作を行うことができるからぜひ試してね。[p]
[freeimage layer=1]

@jump target=button_link

[s]
*example
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
これまで、ティラノスクリプトを使って沢山のゲームが作成されています。[p]
一部の制作事例を公式サイトに乗せているのでよければ確認してくださいね。[p]

[iscript]
window.open("http://tyrano.jp/home/example");
[endscript]

@jump target=button_link

[cm]
[s]

*tech
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
このサンプルでは、ティラノスクリプトのごく一部の機能しか紹介できていません[p]
さらに出来ることを知りたい場合、スクリプトを丸ごとダウンロードできるようになっているので[p]
そのサンプルを触ってみることをオススメします！[p]

[iscript]
window.open("http://tyrano.jp/home/demo");
[endscript]

@jump target=button_link


*info
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
ティラノスクリプトでわからないことがあったら[p]
公式掲示板で質問したり、Wikiなどもありますので参考にしてみてください[p]
@jump target=button_link

*tagref
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
タグは詳細なリファレンスページが用意されています。[p]
このページでさらに詳細な使い方を身につけてください[p]

[iscript]
window.open("http://tyrano.jp/home/tag");
[endscript]

@jump target="*button_link"

[s]