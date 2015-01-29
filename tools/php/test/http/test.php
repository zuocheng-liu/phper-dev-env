<?php
$a = 1;
var_dump(($a ? true:false));

exit;
$info['act'] = "doUpHeadImg";
$info['file'] = "@/tmp/20140819211323.jpg";

// 1. 初始化
$ch = curl_init();
// // 2. 设置选项，包括URL
curl_setopt($ch, CURLOPT_URL, "http://liuzuocheng.rd.emao.com:8000/chexun/app/usercenter/index.php");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_POSTFIELDS, $info );

// 3. 执行并获取HTML文档内容
$output = curl_exec($ch);
var_dump($output);
var_dump(json_decode($output,true));
// 4. 释放curl句柄
curl_close($ch);
