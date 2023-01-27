<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once 'PHPMailer/Exception.php';
require_once 'PHPMailer/PHPMailer.php';
require_once 'PHPMailer/SMTP.php';

$mail = new PHPMailer(true);

$alert = '';

if (isset($_POST['send'])) {
  $name = $_POST['fullname'];
  $email = $_POST['email'];
  $phone = $_POST['contactno'];
  $message = $_POST['message'];

  try {
    $mail->isSMTP();
    $mail->Host = 'smtp.natirental.com; mail.natirental.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'nati@natirental.com';
    $mail->Password = 'naticar@1234';
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = '587';
    $mail->setFrom('nati@natirental.com');
    $mail->addAddress('nati@natirental.com');

    $mail->isHTML(true);
    $mail->Subject = 'Message Received (Contact us Page)';
    $mail->Body = "<h3>Name : $name <br>Email Address: $email  <br>Phone Number: $phone <br>Message : $message</h3>";

    $mail->send();
    $alert = '<div class="alert-success">
                 <span>Message Sent! Thank you for contacting us. we will get back to you as soon as possible</span>
                </div>';
  } catch (Exception $e) {
    $alert = '<div class="alert-error">
                <span>' . $e->getMessage() . '</span>
              </div>';
  }
}
