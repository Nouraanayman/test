<!DOCTYPE html>
<html lang="en">
<head>
 
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="./login_css/ordercss.css"> 
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title> 
</head>
<body>
  <h1>information</h1>
  <form class="orders">
<div class="form__group field">
    <input type="input" class="form__field" placeholder="Name" required="">
    <label for="name" class="form__label">Name</label>
   
</div>
<div class="form__group field">
    <input type="email" class="form__field" placeholder="email" required="">
    <label for="name" class="form__label">email</label>
    
</div>
<div class="form__group field">
    <input type="input" class="form__field" placeholder="phone number" required="">
    <label for="name" class="form__label">phone number</label>
    <button class="cta">
  <span>edit</span>
  <svg viewBox="0 0 13 10" height="10px" width="15px">
  </svg>
</button>
</div>
</form>
<h1>pick up time</h1>
<img style="margin-left: 450px; "src="./img/pup.png">
<form >
<div class="clock">
<input type="time" id="time-input" name="time">
</div>
<h1 style="margin-top:30px;" >payment</h1>
<a class="playstore-button" href="#">
<span class="material-symbols-outlined">
payments
</span>    <span class="text-2">at the casher</span>
  </span>
</a>
<br>
<a class="playstore-button">
<span class="material-symbols-outlined">
credit_card
</span>    <span class="text-2">credit card</span>
  </span>
  
</a>
</form>
   
</body>
</html>