<?php
$documentFolder = 'D:/www/web_auth/output/pdf/unsigned/doctor'; // Change this to the actual path
$documentFiles = scandir($documentFolder);

// Filter out non-PDF files (you can adjust this as needed)
$pdfFiles = array_filter($documentFiles, function ($filename) {
    return pathinfo($filename, PATHINFO_EXTENSION) === 'pdf';
});

// Encode the array as JSON and return it to the JavaScript code
echo json_encode($pdfFiles);
//this is the php file for retreiving the pdf files from a folde and sending i to the json
?>

 