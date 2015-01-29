<?php
$getParams = array(
    'mod' => 'get',
);
$postParams = array(
    'act' => 'post',
);

$url = "http://liuzuocheng.rd.emao.com/index.php?" . http_build_query($getParams);

echo $url;

// 1. 初始化
$ch = curl_init();
// // 2. 设置选项，包括URL
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_POSTFIELDS, $postParams );

// 3. 执行并获取HTML文档内容
$output = curl_exec($ch);
//echo $output;
var_dump(json_decode($output,true));
// 4. 释放curl句柄
curl_close($ch);
