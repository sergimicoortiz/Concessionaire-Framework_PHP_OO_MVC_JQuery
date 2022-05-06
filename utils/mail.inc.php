<?php

require_once(SITE_ROOT . 'vendor/autoload.php');

use \Mailjet\Resources;

class mail
{

    public static function send_email($data)
    {
        $credentials = parse_ini_file(MODEL_PATH . 'mailjet.ini');

        $mj = new \Mailjet\Client($credentials['id'], $credentials['secret'], true, ['version' => 'v3.1']);
        $body = [
            'Messages' => [
                [
                    'From' => [
                        'Email' => $data['from_email'],
                        'Name' => $data['from_name']
                    ],
                    'To' => [
                        [
                            'Email' => $data['to_email'],
                            'Name' => $data['to_name']
                        ]
                    ],
                    'Subject' => $data['subject'],
                    'TextPart' => $data['text'],
                    'HTMLPart' => $data['html'],
                    'CustomID' => $data['custom_id']
                ]
            ]
        ];
        $response = $mj->post(Resources::$Email, ['body' => $body]);
        $response->success();
        return $response->getData();
    } //end send email

    public static function verify_user($data)
    {

        $email['from_email'] = 'sergimicoortiz@gmail.com';
        $email['from_name'] = 'Sergi\'s Cars';
        $email['to_name'] = $data['to_name'];
        $email['to_email'] = $data['to_email'];
        $email['subject'] = 'Verify your account';
        $email['text'] = null;
        $href = SITE_PATH . "login/view/verify/" . $data['token'];
        $email['html'] = '<p>To verify your account you need to click <a href="' . $href . '">HERE</a></p>';
        $email['custom_id'] = 'Verify';
        return self::send_email($email);
    } //end verify_user

    public static function recover_password($data)
    {

        $email['from_email'] = 'sergimicoortiz@gmail.com';
        $email['from_name'] = 'Sergi\'s Cars';
        $email['to_name'] = $data['to_name'];
        $email['to_email'] = $data['to_email'];
        $email['subject'] = 'Change your password ';
        $email['text'] = null;
        $href = SITE_PATH . "login/view/recover/" . $data['token'];
        $email['html'] = '<p>To change your password you need to click <a href="' . $href . '">HERE</a></p>';
        $email['custom_id'] = 'Verify';
        return self::send_email($email);
    } //end recover_password
}//class