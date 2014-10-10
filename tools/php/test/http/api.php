<?php

$code = array(
    'code' => 1000,
    "mobileModel" => "mi2", 
    "osVersion"=> "android 4.4", 
    "appVersion"=> "1.0.1"
);
$login = array(
    'code' => 2070,
    "username" => "13466325878", 
    "password"=> md5("123456"), 
);
$userInfo = array(
    'code' => 2010,
    "id" => "1", 
);
$vcode = array(
    'code' => 1004,
    "mobile" => "15210959300",
   "tag" => '', 
);
$chkcode = array(
    'code' => 1005,
    "mobile" => "15210959300",
    "valiCode" => "644036",
);
$reg = array(
    'code' => 2013,
    "mobile" => "15210959300",
    "password" => md5("123456"),
    'nickname' => 'test99',
    'tempToken' => '977038071',
);
$regD = array(
    'code' => 2016,
    "mobile" => "15210959313",
    "password" => md5("123456"),
    'nickname' => '魔人布欧2号',
);

$mobile = array(
    'code' => 2014,
    "mobile" => "1521095930",
);
$nickname = array(
    'code' => 2015,
    "nickname" => "liuzuocheng0",
);

$chgPwd = array (
    'code' => 2701,
    'mobile' => '15210959300',
    'newPwd' => 'e10adc3949ba59abbe56e057f20f883e',
    'tempToken' => 271576512,
);
$userId = array (
    'code' => 20101,
    'id' => '1',
);

$upUser = array(
    'code' => 2012,
    'token' => 6869946252,
    "birthday" => "1990-08-08", 
    "nickname" => "liuzuocheng", 
    "gender" => 1,
);
$img = array(
    'token' => 1121979219,
    'code' => 2011,
);
#$postData['file'] = "@/tmp/20140819211323.jpg";
$info = json_encode($upUser);
$postData['info'] = $info;
// 1. 初始化
$ch = curl_init();
// // 2. 设置选项，包括URL
curl_setopt($ch, CURLOPT_URL, "http://liuzuocheng.rd.emao.com:8000/chexun/app/usercenter/api/v1/mobile.php");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_POSTFIELDS, $postData );

// 3. 执行并获取HTML文档内容
$output = curl_exec($ch);
var_dump(json_decode($output,true));
// 4. 释放curl句柄
curl_close($ch);
