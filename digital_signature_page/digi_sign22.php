<?php
$document = $_REQUEST["document"];
$docno = substr($document, 0, 9);
$did=substr($docno,0,3);
$mon=substr($docno,6,2);
if ($mon=='01')    {$flag='Jan_flag';}
elseif ($mon=='02'){$flag='Feb_flag';} 
elseif ($mon=='03'){$flag='Mar_flag';} 
elseif ($mon=='04'){$flag='Apr_flag';} 
elseif ($mon=='05'){$flag='May_flag';} 
elseif ($mon=='06'){$flag='Jun_flag';} 
elseif ($mon=='07'){$flag='Jul_flag';} 
elseif ($mon=='08'){$flag='Aug_flag';} 
elseif ($mon=='09'){$flag='Sep_flag';} 
elseif ($mon=='10'){$flag='Oct_flag';} 
elseif ($mon=='11'){$flag='Nov_flag';} 
else {$flag='Dec_flag';} 
include "connect.php";

date_default_timezone_set('Asia/Kolkata');
$currentDate = date('Y-m-d H:i:s');
$signDate = date('Y-m-d H:i:s');

header('Content-Type: text/plain');

$signData = utf8_encode($_POST['dt']);
$decodedData = json_decode($signData);

$signPart = strpos($decodedData, "CommonName");
$signature = substr($decodedData, 0, $signPart - 1);
$encodedSignature = str_replace("Signature=", "", $signature);
$decodedSignature = base64_decode($encodedSignature);

$fil = 'S';
$signedFileName = $docno . $fil . '.pdf';
$file1=$docno.$fil.'.pdf';
$file2=$docno.'.pdf';
$fullFilePath = 'http://' . $_SERVER["SERVER_NAME"] . '/web_auth/output/pdf/signed/' . $signedFileName;

$pdfFile = fopen('output/pdf/signed/' . $signedFileName, 'w');
fwrite($pdfFile, $decodedSignature);
fclose($pdfFile);

$folderPath = "output/pdf/signed/";
$file = $folderPath . $signedFileName;

if (filesize($file) > 10000) {
    $trimmedDocno = substr($docno, 0, -4);
//$sql = "update tbl_dept_incharge set $flag='".$file1."' where substr(dept,1,3)='".$did."' and $flag='".$file2."'";
$sql = "update tbl_dept_incharge set $flag='".$file1."' where substr(dept,1,3)='".$did."' and $flag='Null'";
$result= mysqli_query($conn, $sql);
echo $fullFilePath;    
} else {
    echo "Size ERROR";
}


// header('Location: http://localhost/gpms/output/tbl_gp_trans_master_list.php');
?>
