<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once 'PHPMailer/Exception.php';
require_once 'PHPMailer/PHPMailer.php';
require_once 'PHPMailer/SMTP.php';

$mail = new PHPMailer(true);

$alert = '';

if (isset($_POST['submit'])) {
  $fullname = $_POST['fullname'];
  $phone = $_POST['phone'];
  $fromdate = $_POST['fromdate'];
  $todate = $_POST['todate'];
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
    $mail->Subject = 'New Booking Request';
    $mail->Body = "<h3>You got a new Booking request as per the following detail <br><br> Full Name: $fullname <br> Phone: $phone <br> Start From Date: $fromdate <br>To Date : $todate <br>Message : $message</h3>";

    $mail->send();
    $alert = '<div class="alert-success">
                 <span>Message Sent! Thank you for your booking. we will get back to you ASAP</span>
                </div>';
  } catch (Exception $e) {
    $alert = '<div class="alert-error">
                <span>' . $e->getMessage() . '</span>
              </div>';
  }
}
