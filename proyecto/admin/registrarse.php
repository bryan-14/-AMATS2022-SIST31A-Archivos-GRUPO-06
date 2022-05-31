<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>usuario</h2>
  <form action="/action_page.php">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="usuario" placeholder="Enter email" name="usuario">
    </div>
    <div class="form-group">
      <label for="pwd">contraseña:</label>
      <input type="password" class="form-control" id="contraseña" placeholder="Enter password" name="contraseña">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        
      </label>
    </div>
    <button type="submit" class="btn btn-primary">registrarme</button>
    <a class="navbar-brand" href="http://localhost/proyecto/admin/">inicar sesion</a>
  </form>
</div>

</body>
</html>