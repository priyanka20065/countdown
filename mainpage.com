<html>
    <head>
    <style>
        *
{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;

}
body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background:url(clock12.jpg);
    background-size: cover;
    background-position: center;
}
.wrapper {
    width: 420px;
    background: transparent;
    border:2px solid rgba(255, 255, 255, .2);
    backdrop-filter:blur(20px);
    box-shadow: 0 0 10px 5px magenta;
    color: #ccc5c5;
    border-radius: 10px;
    padding: 30px 40px;

}
.wrapper h1{
    font-size: 36px;
    text-align: center;
}
.wrapper .input-box {
    position: relative;
    width: 100%;
    height: 50px;
    margin: 30px 0;
}

.input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    border: 2px solid rgba(255, 255, 255, .2);
    border-radius: 40px;
    font-size: 16px;
    color: black;
    padding: 20px 45px 20px 20px;
}
.input-box input::placeholder{
    color:purple;
}

.wrapper .remember-forgot{
    display: flex;
    justify-content: space-between;
    font-size: 14.5px;
    margin: -15px 0 15px;
}
.remember-forgot label input{
    accent-color: #fff;
    margin-right: 3px;
}
.remember-forgot a{
    color: #fff;
    text-decoration: none;

}
.remember-forgot a:hover{
    text-decoration: underline;
}
.wrapper .btn{
    width: 100%;
    height: 45px;
    border-radius: 40px;
    border: none;
    outline: none;
    background: #fff;
    box-shadow: 0 0 10px rgba(0 , 0 , 0 , .1);
    cursor: pointer;
    font-size: 16px;
    color: #333;
    font-weight: 600;
}
.wrapper .signup-link{
   text-align: center;
    font-size: 14.5px;
    margin:20px 0 15px;
}
.signup-link p a{
    color: #fff;
    text-decoration: none;
    font-weight: 600;

}
.signup-link p a:hover{
    text-decoration: underline;
}
    </style>
</head>
<body>
    <div class="wrapper">
        <form action="">
            <h1>Login</h1>
            <div class="input-box">
                <input type="text" placeholder="Username" required>
            
            </div>
           
         <div class="input-box">
                <input type="password" placeholder="password" required>
              
            </div>
            <div class="remember-forgot">
                <label><input type="checkbox">Remember me
                </label>
                <a href="#">Forgot password?</a>
            </div>
            <button type="submit" class="btn"><a href="Untitled-1.html">Login</a></button>
            <div class="signup-link">
                <p>Dont't have an account? so make a <a href="signup.html">
                        Signin
                    </a></p>
            </div>
        </form>
    </div>
</body>
</html>
