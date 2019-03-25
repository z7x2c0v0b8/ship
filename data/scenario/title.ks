
[cm]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200

*start 

[button x=33 y=267 graphic="title/button_start.png" target="gamestart"]
[button x=20 y=387 graphic="title/button_load.png"  role="load" ]
;[button x=100 y=390 graphic="title/button_cg.png" storage="cg.ks" ]
;[button x=100 y=460 graphic="title/button_replay.png" storage="replay.ks" ]
;[button x=100 y=530 graphic="title/button_config.png" role="sleepgame" storage="config.ks" ]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"



