<!DOCTYPE html>
<html>

<head>
    <title>Coming Soon</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="We are Launching our New Website. We're working hard to give you the best experience! Please come back soon">
    <style type="text/css">
        html,
        body {
            padding: 0;
            margin: 0;
            height: 100%;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #20aae3;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .center {
            height: 250px;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .coffe {
            width: 200px
        }

        .copy {
            height: 190px;
            margin-left: 20px;
            padding: 30px;
        }

        .welcome {
            font-size: 22px;
            font-weight: 700;
            color: white;
            margin: 0;
        }

        .soon {
            font-size: 52px;
            color: #ffcc34;
        }

        .reason {
            font-weight: 400;
            font-size: 18px;
            color: white;
            max-width: 490px;
        }

        @media only screen and (max-width: 450px) {
            .center {
                height: 250px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-flow: column;
            }

            .coffee {
                align-self: center;
                margin-bottom: 48px;
            }

            .copy {
                margin: 0;
            }

            .welcome {
                font-size: 16px;
                text-align: center;
            }

            .soon {
                font-size: 32px;
                text-align: center;
            }

            .reason {
                text-align: center;
            }
        }
    </style>
</head>

<body>
    <div class="center"> <img class="coffe" src="https://yegara.com/img/roc.gif" alt="coffee">
        <div class="copy">
            <p class="welcome">Welcome To <?php echo ucfirst($_SERVER['SERVER_NAME']) ?> </p>
            <h1 style="padding-bottom: 10px" class="soon">Coming Soon </h1>
            <hr style="height:1px; border-width:0;color:#b3b3b3;background-color:#b3b3b3">
            <p class="reason"> We are Launching our New Website. We're working hard to give you the best experience! Please come back soon </p>
        </div>
    </div>
</body>

</html>