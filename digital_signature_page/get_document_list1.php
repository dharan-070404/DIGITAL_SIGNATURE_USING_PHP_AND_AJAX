<?php
// Include your database connection
include 'connect.php';

// Assuming you have already established a database connection

// Get the logged-in user's ID (you need to implement your own login mechanism)
$userID = $_SESSION['user_id']; // Adjust this to how you store the user ID

// Query the database to retrieve the document folder path for the logged-in user
$sql = "SELECT document_folder FROM user_documents WHERE user_id = $userID";
$result = mysqli_query($conn, $sql);

if ($result && mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $documentFolder = $row['document_folder'];
    
     //replace the path with the path of root folder example if it has all folder of documents under a root folder named "Documents"
    $documentFolderPath = 'D:/www/digi_sign/documents' . $documentFolder; // Adjust this to your folder structure

    // Check if the folder exists
    if (is_dir($documentFolderPath)) {
        // Scan the folder for PDF files
        $documentFiles = scandir($documentFolderPath);

        // Filter out non-PDF files (you can adjust this as needed)
        $pdfFiles = array_filter($documentFiles, function ($filename) {
            return pathinfo($filename, PATHINFO_EXTENSION) === 'pdf';
        });

        // Encode the array as JSON and return it to the JavaScript code
        echo json_encode($pdfFiles);
    } else {
        echo json_encode([]);
    }  
} else {
    echo json_encode([]);
}

// Close the database connection
mysqli_close($conn);
?>
