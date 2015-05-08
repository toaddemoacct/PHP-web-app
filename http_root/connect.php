<?php

// Create connection to Oracle
$conn = oci_pconnect("phphol", "welcome", "//127.0.0.1/pdb_demo");
if (!$conn) {
   $m = oci_error();
   echo $m['message'], "\n";
   exit;
}
else {
   print "Connected to Oracle as PHPHOL! \n";
}

// Close the Oracle connection
oci_close($conn);

?>
