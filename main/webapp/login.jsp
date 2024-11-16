<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #222831;
    color: #EEEEEE;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    user-select: none;
}

.container {
    background-color: #393E46;
    padding: 30px;
    border-radius: 10px;
    width: 90%;
    max-width: 400px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.input-container {
    display: flex;
    align-items: center;
    background-color: #1B262C;
    padding: 10px;
    border-radius: 10px;
}

.input-container i {
    margin-right: 10px;
    color: #EEEEEE;
}

input {
    width: 100%;
    padding: 10px;
    border: none;
    outline:none;
    border-radius: 5px;
    background-color: #1B262C;
    color: #FFFFFF;
    font-family: 'Roboto', sans-serif;
    font-size: 16px;
}

input::placeholder {
    color: #eee;
    opacity: 0.4;
}

button {
    width: 100%;
    padding: 15px;
    border: none;
    border-radius: 8px;
    background-color: #00ADB5;
    color: #EEEEEE;
    font-size: 18px;
    font-weight: 500;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

button:hover {
    background-color: #007A7C;
    transform: translateY(-2px);
}


</style>

</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form action="login" method="post">
            <div class="form-group">
                <div class="input-container">
                    <i class="fas fa-user"></i>
                    <input type="text" id="email" name="email" placeholder="Enter your Email" required>
                </div>
            </div>
            <div class="form-group">
                <div class="input-container">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                </div>
            </div>
            <button type="submit">Login</button>
           
        </form>
    </div>
</body>
</html>
