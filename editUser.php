<!DOCTYPE html>
<html lang="en">
<head>
   <style>
    /* user edit profile page*/
    .form {
  display: flex;
  flex-direction: column;
  gap: 20px;
  max-width: 350px;
  background-color: #fff;
  padding: 20px;
  border-radius: 20px;
  position: relative;
left:35%;
margin-top: 100px;
}


.title {
  font-size: 28px;
  color: #A64B2A;
  font-weight: 600;
  letter-spacing: -1px;
  position: relative;
  display: flex;
  align-items: center;
  padding-left: 30px;
}

.title::before,.title::after {
  position: absolute;
  content: "";
  height: 16px;
  width: 16px;
  border-radius: 50%;
  left: 0px;
  background-color:#A64B2A;
}

.title::before {
  width: 18px;
  height: 18px;
  background-color:#A64B2A;
}

.title::after {
  width: 18px;
  height: 18px;
  animation: pulse 1s linear infinite;
}
.form label {
  position: relative;
}

.form label .input {
  width: 100%;
  padding: 10px 10px 20px 10px;
  outline: 0;
  border: 1px solid rgba(105, 105, 105, 0.397);
  border-radius: 10px;
}

.form label .input + span {
  position: absolute;
  left: 10px;
  top: 15px;
  color: grey;
  font-size: 0.9em;
  cursor: text;
  transition: 0.3s ease;
}

.form label .input:placeholder-shown + span {
  top: 15px;
  font-size: 0.9em;
}

.form label .input:focus + span,.form label .input:valid + span {
  top: 30px;
  font-size: 0.7em;
  font-weight: 600;
}

.form label .input:valid + span {
  color: green;
}

.submit {
  border: none;
  outline: none;
  background-color:#A64B2A;
  padding: 10px;
  border-radius: 15px;
  color: #fff;
  font-size: 16px;
  transform: .3s ease;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  transition: all 0.2s ease-in-out;
  margin-left: 18px;
}

.submit:hover {
    background-color: #A64B2A;
  transform: scale(1.1);
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
}

@keyframes pulse {
  from {
    transform: scale(0.9);
    opacity: 1;
  }

  to {
    transform: scale(1.8);
    opacity: 0;
  }
}
   </style>


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <section>
<form class="form">
    <p class="title">edit your information</p>
        <label>
            <input required="" placeholder="" type="text" class="input">
            <span>Username</span>
        </label>
            
    <label>
        <input required="" placeholder="" type="email" class="input">
        <span>Email</span>
    </label> 
        
    <label>
        <input required="" placeholder="" type="password" class="input">
        <span>Password</span>
    </label>
    <label>
        <input required="" placeholder="" type="password" class="input">
        <span>phone number</span>
    </label>
    <button class="submit">Submit</button>
</form>
    </section>
</body>
</html>