<?php
header('Content-Type:text/plain;Charset:utf-8;');
$json=<<<END
{"result":{"uid":"11cnkktq","email":"","uname":"了","gender":2,"isSetPassword":true,"avatar":"http://s2.mogucdn.com/new1/v1/bdefaultavatar/03.jpg","mobile":"13737301354"},"status":{"code":1001,"msg":""}}
END;
echo $json;