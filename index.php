<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Project Tracker</title>
        <link rel="stylesheet" href="style.css">        
    </head>

    <body>
    <table>
                <tr>
                    <th>FUEL</th>
                    <th>LATITUDE</th>
                    <th>LONGITUDE</th>

                </tr>

                <!--This code for create view of the products-->
                <?php
                    $con=mysqli_connect("localhost","root","","test");
                    $result=mysqli_query($con,"SELECT * FROM `Table_name` ");
                    $Sl=1;
                    while($row=mysqli_fetch_array($result)){
                ?>
                <tr>
                    <td><?php echo $Sl++;?></td>
                    <td><?php echo $row['high'];?></td>
                    <td><?php echo $row['latitude'];?></td>
                    <td><?php echo $row['longitude'];?></td>
                    

                </tr>
                <?php }
                mysqli_close($con);
                ?>
            </table>
        
    </body>

</html>