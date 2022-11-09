<?php
/*fual=9&lat=24.25&lng=49.54*/
if( !empty($_REQUEST['fual'] && !empty($_REQUEST['lat'] && !empty($_REQUEST['lng'] )
                    {
                    try{

                        /*Initialization of Variable[$]*/
                        $height=$_REQUEST['fuel'];
                        $lati=$_REQUEST['lat'];
                        $langi=$_REQUEST['lng'];         


                        $con=mysqli_connect("localhost","root","","test");
                        //if(!$con){throw new Exception('Cannot Connect to database');}
                        $sql = "INSERT INTO table_name (high, latitude, longitude )
                                VALUES ('$height','$lati','$langi')";
                        mysqli_query($con,$sql);                     
                        
                        mysqli_close($con);
                    }
                    catch(Exception $e){
                        $error_message=$e->getMessage();
                        }
                    }

?>