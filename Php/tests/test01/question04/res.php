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
                    if(empty($_GET["pergunta"])){
                        echo "Você esqueceu de responder a pergunta";
                    
                    }
                    else{
                        echo "<table>";
                        foreach($_GET as $key => $value){
                            echo "<tr> <td> {$key} </td> <td> {$value} </td> </tr>";
                        }
                        // Eu até ia fazer umas piadas com as suas respostas mas tenho muito trabalho pela frente ainda. Enfim, espero que aprecie. Abraços.
                    }
                    
                ?>
        </main>
    </body>
</html>