$(->
    window.v = new Vue
        el: '#總畫面'
        data:
            圖片文件夾: ''
            音樂文件夾: ''
            視頻文件夾: ''
            自定css: ''
            主題css: ''
            解析度: ''
            邊界: ''
            用戶設置: 
                文字速度: 35
                對話框背景透明度: 0.8
                自動收起控制面板: true
                總體音量: 1
        watch:
            $data:
                handler: (val, oldVal) ->
                    山彥.vue更新(val)
                deep: true
    山彥.vue連接初始化((x)-> 
        for a,b of x
            v[a]=b
    )
    
    山彥.初始化();
)