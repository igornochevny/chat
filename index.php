<?php

require_once 'config.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WALL</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="main.css">
    <script src="https://use.fontawesome.com/06b1f93de2.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Chat
                </div>
                <div class="panel-body">
                    <?php
                    $text = $_POST['message'];
                    if(isset($_POST['send']) && !empty($text)) {
                        $add = "INSERT INTO chat (id, message, time) VALUES (NULL, '$text', CURRENT_TIME )";
                        $addDb = mysqli_query($connection, $add);
                    }

                    $selectAll = "SELECT * FROM chat";
                    $pasteAll = mysqli_query($connection, $selectAll);

                    while ($record = mysqli_fetch_assoc($pasteAll)){
                        echo '<p id = "text">'.$record['message'].'</p>';
                        echo  '<p id = "time">'.$record['time'].'</p>';
                        echo '<hr>';
                    }

                    if (isset($_POST))
                    ?>
                    <div class="row_form">
                        <form method="post" class="form-group" action="index.php">
                            <div class="form-group">
                                <label for="text">Text</label>
                                <input class="form-control" name="message" title="">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="send" class="btn btn-success" value="Send">
                            </div>

                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>

