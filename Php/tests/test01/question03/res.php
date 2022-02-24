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
                <?php 
                    if(empty($_GET["Tamanho"])){
                        echo "Você esqueceu de dizer o tamanho";
                    }
                    else{
                        echo "<table>";
                        foreach($_GET as $key => $value){
                            echo "<tr> <td> {$key} </td> <td> {$value} </td> </tr>";
                        }
                        echo "</table>";
                    }
                    
                ?>
        </main>
    </body>
</html>