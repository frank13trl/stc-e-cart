<!DOCTYPE html>
<html>

<head>
    <title>Customer Review</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Thambi+2:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- My Stylesheet -->
    <link rel="stylesheet" href="styles/backend.css">

</head>

<body style="background-image: url('images/reviewbg3.jpg'); background-size: cover;">

   
            <span style="font-size: 100px; font-family:'Segoe UI'; text-align: center;">Customer <b>Review</b></span>
          
    <div class="container p-5" style="margin-top: 200px; background-color: #b3b3cc; border-radius: 50px;">
         
        <div class="row justify-content-center">
            <div class="stars text-center">
                <div class="col">
                    <div class="form-group">

                        <input type="radio" id="five" name="rate" value="5">
                        <label for="five"></label>
                        <input type="radio" id="four" name="rate" value="4">
                        <label for="four"></label>
                        <input type="radio" id="three" name="rate" value="3">
                        <label for="three"></label>
                        <input type="radio" id="two" name="rate" value="2">
                        <label for="two"></label>
                        <input type="radio" id="one" name="rate" value="1">
                        <label for="one"></label>

                        <span class="result"></span>

                    </div>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col justify-content-center">
                <div class="form-group" style="text-align: center;">
                    <label for="textarea"><b>Review</b></label>

                    <textarea class="form-control" id="textarea" rows="4" placeholder="Post your review..." name="rev"></textarea>
                </div>
            </div>
        </div>

        <div class="row" style="text-align: center;">
            <div class="col">
                <input type="submit" class="btn btn-primary" value="Review">
            </div>
        </div>
    </div>

</body>

</html>

