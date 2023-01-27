<?php
if (isset($_POST['emailsubscibe'])) {
    $subscriberemail = $_POST['subscriberemail'];
    $sql = "SELECT SubscriberEmail FROM tblsubscribers WHERE SubscriberEmail=:subscriberemail";
    $query = $dbh->prepare($sql);
    $query->bindParam(':subscriberemail', $subscriberemail, PDO::PARAM_STR);
    $query->execute();
    $results = $query->fetchAll(PDO::FETCH_OBJ);
    $cnt = 1;
    if ($query->rowCount() > 0) {
        echo "<script>alert('Already Subscribed.');</script>";
    } else {
        $sql = "INSERT INTO  tblsubscribers(SubscriberEmail) VALUES(:subscriberemail)";
        $query = $dbh->prepare($sql);
        $query->bindParam(':subscriberemail', $subscriberemail, PDO::PARAM_STR);
        $query->execute();
        $lastInsertId = $dbh->lastInsertId();
        if ($lastInsertId) {
            echo "<script>alert('Subscribed successfully.');</script>";
        } else {
            echo "<script>alert('Something went wrong. Please try again');</script>";
        }
    }
}
?>
<footer>
    <div class="footer-top">
        <div class="container">
            <div class="row">

                <div class="col-md-6">
                    <h6>About Us</h6>
                    <ul>
                        <li><a href="page.php?type=aboutus">About Us</a></li>
                        <li><a href="page.php?type=faqs">FAQs</a></li>
                        <li><a href="page.php?type=privacy">Privacy</a></li>
                        <li><a href="page.php?type=terms">Terms of use</a></li>
                        <li><a href="admin/">Admin Login</a></li>
                    </ul>
                </div>

                <div class="col-md-3 col-sm-6">
                    <h6>Subscribe Newsletter</h6>
                    <div class="newsletter-form">
                        <form method="post">
                            <div class="form-group">
                                <input type="email" name="subscriberemail" class="form-control newsletter-input" required placeholder="Enter Email Address" />
                            </div>
                            <button type="submit" name="emailsubscibe" class="btn btn-block">Subscribe <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                            </button>
                        </form>
                        <p class="subscribed-text">*We send great deals and latest auto news to our subscribed users
                            very week.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-push-6 text-right">
                    <div class="footer_widget">
                        <p>Connect with Us:</p>
                        <ul>
                            <li><a href="https://www.facebook.com/NatiCarSales?mibextid=LQQJ4d" target="_blank"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                            <li><a href="https://t.me/NaticarRental" target="_blank"><i class="fa fa-telegram" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.tiktok.com/@nati_0825?_t=8Yh6Zmo5YaD" target="_blank"><i class="fa-brands fa-tiktok" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.instagram.com/invites/contact/?i=14kqnasibfock&utm_content=2kztz23" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 col-md-pull-6">
                    <p class="copy-right">Copyright &copy; <script>document.write(new Date().getFullYear())</script> Nati Car Rental, Addis Ababa Ethiopia. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/145e5e945e.js" crossorigin="anonymous"></script>
</footer>