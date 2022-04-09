<?php

require_once(UTILS_PATH . 'vendor/autoload.php');
use \Mailjet\Resources;
class mail
{
    
    public static function send_email($data)
    {
      /*   $credentials = parse_ini_file(MODEL_PATH . 'mailjet.ini');

        $mj = new \Mailjet\Client($credentials['id'], $credentials['secret'], true, ['version' => 'v3.1']);
        $body = [
            'Messages' => [
                [
                    'From' => [
                        'Email' => "sergimico24@gmail.com",
                        'Name' => "Sergi"
                    ],
                    'To' => [
                        [
                            'Email' => 'sergimicoortiz@gmail.com',
                            'Name' => "Sergi"
                        ]
                    ],
                    'Subject' => "Greetings from Mailjet.",
                    'TextPart' => "My first Mailjet email",
                    'HTMLPart' => "<h3>Dear passenger 1, welcome to <a href='https://www.mailjet.com/'>Mailjet</a>!</h3><br />May the delivery force be with you!",
                    'CustomID' => "AppGettingStartedTest"
                ]
            ]
        ];
        $response = $mj->post(Resources::$Email, ['body' => $body]);
        $response->success();
        return $response->getData(); */
    } //end send email
}//class