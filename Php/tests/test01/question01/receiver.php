<html>
    <head>
        <title>Index</title>
        <meta charset="utf-8">
    </head>
    <body>
        <main>
            <?php
                foreach($_POST as $key => $value){
                    echo $key . ": " . $value . "<br>";
                }
            ?>
        </main>
    </body>
</html>