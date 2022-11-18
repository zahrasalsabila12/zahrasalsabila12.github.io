<?php
    include 'connector.php';

    if(isset($_POST['login'])){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $result = mysqli_query($connect, "SELECT * FROM user WHERE username ='$username'");
        if(mysqli_num_rows($result) == 1){
            $row = mysqli_fetch_assoc($result);
            if(password_verify($password, $row['password'])){
                $_SESSION['login'] = true;
                header("location:index.php");
                exit;
    }
}
$error = true;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="icon" href="Logo-Salsa Cookies.png">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
        body {
            background-color: #87805E;
            font-family: 'Poppins', sans-serif;
        }
        .login-form{
            display: flex;
            flex-direction: column;
            width: 100%;
            max-width: 500px;
            background-color: #EDDFB3;
            padding: 20px;
            border-radius: 8px;
            box-sizing : border-box;
            margin: auto;
            margin-top: 125px;
        }
        h1{
            font-size: 36px;
            font-weight: 100;
            text-align: center;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 10px;
            margin-bottom: 16px;
            resize: vertical;
        }
        button[type=submit] {
            background-color: #87805E;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="login-form">
        <h1>Login</h1>
        <?php if(isset($error)){
         echo "<p style='color:red;'>Username atau Password Salah</p>";   
        }?>
            <div class="alert alert-danger">
        <form method="post">
            <div>
                <label for="username"><b>Username</b></label>
                <br>
                <input type="text" name="username" id="username">
                <br>
                <label for="password"><b>Password</b></label>
                <br>
                <input type="password" name="password">
                <br>
                <button type="submit" name="login">Login</button>
                <p>Not registered? <a href="regis.php">Create an account</a></p>
    </div>
</body>
</html>