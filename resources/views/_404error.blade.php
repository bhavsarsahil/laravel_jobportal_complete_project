<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Arvo&display=swap');
        /* Reset default styles */
        * {
            margin: 0;
            padding: 0;

        }

        /* Body styles */
        body {
            font-family: 'Arvo', serif;
            background-color: #f8f9fa;
        }

        /* Container styles */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Page 404 section styles */
        .page_404 {
            padding: 40px 0;
            text-align: center;
        }

        /* Background image for 404 */
        .four_zero_four_bg {
            background-image: url(https://cdn.dribbble.com/users/285475/screenshots/2083086/dribbble_1.gif);
            height: 500px;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Heading styles */
        .four_zero_four_bg h1 {
            font-size: 80px;
            color: black;
            margin-top: -430px;
        }

        /* Subheading styles */
        .four_zero_four_bg h2 {
            font-size: 100px;
            color: #fff;
            margin-bottom: 20px;
        }

        /* Content box styles */
        .contant_box_404 {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            text-align: center;
            border-radius: 5px;
        }

        /* Link styles */
        .link_404 {
            color: #fff;
            padding: 10px 20px;
            background: #39ac31;
            margin-top: 20px;
            display: inline-block;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .link_404:hover {
            background-color: #357f25;
        }
        h3 {
    display: block;
    font-size: 1.20em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

    </style>
</head>

<body class="404-page">
    <section class="page_404">
        <div class="container">
          <div class="row"> 
            <div class="col-sm-12 ">
              <div class="col-sm-10 col-sm-offset-1 text-center">
                <div class="four_zero_four_bg">
                  <h1 class="text-center" id="404text">404</h1>
                </div>
                <div class="contant_box_404">
                  <h3 class="h2">Look like you're lost</h3>
                  <p>The page you are looking for is not available!</p>
                  <a href="{{ route('home') }}" class="link_404">Go to Home</a>
                </div>
              </div>
            </div>
          </div>
        </div>
    </section>
</body>
</html>
