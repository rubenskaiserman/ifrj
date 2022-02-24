<html>
    <head>
        <title>Index</title>
        <meta charset="utf-8">
        <style>
            body{
                text-align: center;
            }
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            table{
                margin: 30px auto;
            }
        </style>
    </head>
    <body>
        <main>
            <table>

                <?php 

                    echo "<table>";
                    foreach($_POST as $key => $value){
                        echo "<tr> <td> {$key} </td> <td> {$value} </td> </tr>";
                    }
                    echo "</table>"

                ?>

            </table>
        </main>
    </body>
</html>