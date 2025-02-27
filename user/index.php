
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="upperMain">
      <h2>login</h2>

      <div class="login">
        <form action="login.php" method="POST">
          <label for="userName">username</label>
          <input type="text" required name="userName" id="userName" />
          <br />
          <label for="password">password</label>
          <input type="password" name="password" required id="password" />

          <br />
<!-- <a href="destroy.php">logout</a> -->
         <button name="login" id="login"> login</button>
          <br />
          <h6 id="ivalidDetails">
<?php
$invalidCreds=1;
echo $invalidCreds;
?>

          </h6>
        <br />
          <a href="#" target="_blank" rel="noopener noreferrer">
            <span>forgot password</span>
          </a>
        </form>
      </div>
    </div>
    <script src="index.js"></script>
  </body>
</html>
