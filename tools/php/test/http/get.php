<?php
$params = array(
    "OperID" => 'yimao', 
    "OperPass" => 'yimao123', 
    "SendTime" => '', 
    "ValidTime" => '', 
    "AppendID" =>1234, 
    "DesMobile" =>13466325878, 
    "Content" => 1234, 
    "ContentType" => 8,
);
$params["Content"] = iconv("UTF-8","GB2312//IGNORE","手机短信");
$url = "http://221.179.180.158:9007/QxtSms/QxtFirewall?" . http_build_query($params);
echo $url;
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
