<!DOCTYPE html>
<html lang="en">
<head>
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

<h1>pick up</h1>
<label for="time-input">Select a time:</label>
<input type="time" id="time-input" name="time">
</body>
</html>