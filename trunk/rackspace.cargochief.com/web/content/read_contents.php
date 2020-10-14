<?php
// Use cURL to get the RSS feed into a PHP string variable.
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL,'http://www1.cargochief.com/');
curl_setopt($ch, CURLOPT_HEADER, false);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$xml = curl_exec($ch);
curl_close($ch);

echo $xml;
// (c).COpyright 2012, Ray C Horn and Vyper Logix Corp, All Right Reserved.
?>
