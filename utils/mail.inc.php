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
}//class