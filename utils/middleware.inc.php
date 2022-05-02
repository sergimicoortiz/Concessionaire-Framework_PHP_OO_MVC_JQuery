<?php
require_once(MODEL_PATH . 'JWT.php');
class middleware
{
    public static function encode_jwt($username, $exp = (60 * 60))
    {
        $jwt = parse_ini_file(MODEL_PATH . 'jwt.ini');
        $header = $jwt['header'];
        $secret = $jwt['secret'];
        $JWT = new JWT;
        $payload = '{"iat":"' . time() . '","exp":"' . (time() + $exp) . '","name":"' . $username . '"}';
        $token = $JWT->encode($header, $payload, $secret);
        return $token;
    } //end encode_jwt

    public static function decode_jwt($token)
    {
        $jwt = parse_ini_file(MODEL_PATH . 'jwt.ini');
        $secret = $jwt['secret'];
        $JWT = new JWT;
        $json = $JWT->decode($token, $secret);
        $data = json_decode($json, TRUE);
        if ($data['exp'] >= time()) {
            return $data;
        } else {
            return null;
        }
    } //end decode_jwt

}//class