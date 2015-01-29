<?php
// http://smsapi.c123.cn/OpenPlatform/OpenApi?action=sendOnce&ac=1001@500931060001&authkey=3B3C4ED1E257D88095C941F0DC0C3AE9&cgid=2267&c=更换为你要发送的短信内容&m=接收短信的手机号码
$params = array(
    "action" => 'sendOnce', 
    "ac" => '1001@500931060001', 
    "authkey" => '3B3C4ED1E257D88095C941F0DC0C3AE9', 
    "cgid" => '2267', 
    "m" =>13466325878, 
    "c" => "吃饭", 
);


$url = "http://smsapi.c123.cn/OpenPlatform/OpenApi?" . http_build_query($params);
var_dump($url);
// 1. 初始化
$ch = curl_init();
// // 2. 设置选项，包括URL
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HEADER, 0);
//curl_setopt($ch, CURLOPT_POSTFIELDS, $postData );

// 3. 执行并获取HTML文档内容
$output = curl_exec($ch);
echo $output;
//var_dump(json_decode($output,true));
// 4. 释放curl句柄
curl_close($ch);
