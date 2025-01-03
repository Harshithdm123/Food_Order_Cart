<?php
// Include the database connection file
include 'conn.php';  // Adjust the path if necessary

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Retrieve the input data from the request
$input = json_decode(file_get_contents('php://input'), true);

// Log the received input data (for debugging purposes)
error_log("Received input: " . print_r($input, true));

// Check if input is valid
if ($input === null) {
    echo json_encode(['error' => 'Invalid input data']);
    exit();
}

$username = $input['username'] ?? null;
$password = $input['password'] ?? null;

// Check if both username and password are provided
if (empty($username) || empty($password)) {
    echo json_encode(['error' => 'Both username and password are required']);
    exit();
}

// Log the received username and password (for debugging purposes)
error_log("Received username: $username, password: $password");

// Query the database to find the user
$query = "SELECT * FROM user_db WHERE email='$username'";
$result = mysqli_query($conn, $query);

if (!$result) {
    // Log any database query errors (for debugging purposes)
    error_log("Database query error: " . mysqli_error($conn));
    echo json_encode(['error' => 'Database query error']);
    exit();
}

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    // Verify the password
    if (password_verify($password, $row['password'])) {
        echo json_encode($row);
    } else {
        echo json_encode(['error' => 'Invalid username or password']);
    }
} else {
    echo json_encode(['error' => 'Invalid username or password']);
}
?>
