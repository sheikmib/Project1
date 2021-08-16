<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<style>
.box {
  display: flex;
  align-items: center;
  justify-content: center;
}
.box div {
  width: 100px;
  height: 100px;
}
</style>
<body class="container" style="background-color:powderblue">
  <hr />
  <div class="box">Transaction App</div>
  <hr />
  <hr />

  <nav class="nav">
	  <a class="nav-link" href="txr">Transfer</a>
	  <a class="nav-link" href="statement">Statement</a>
    <a class="nav-link" href="logout">logout</a>
	</nav>


  <hr />
  Welcome : ${sessionScope.currentUser}
  <hr />

  <div class="row">
    <div class="col-4"></div>
    <div class="col-4">
      <form action="txr" method="POST" >
        <div class="card" style="background-color:skyblue">
          <div class="card-header">Txr Form</div>
          <div class="card-body">
            <div class="form-group">
              <label>Amount</label>
              <input style="background-color:dodgerblue" class="form-control" name="amount" />
            </div>
            <div class="form-group">
              <label>From Account</label>
              <input style="background-color:dodgerblue"  class="form-control" name="fromAccNum" />
            </div>
            <div class="form-group">
              <label>To Account</label>
              <input style="background-color:dodgerblue" class="form-control" name="toAccNum" />
            </div>
          </div>
          <div class="card-footer">
            <button class="btn btn-dark">Transfer</button>
          </div>
        </div>
      </form>
    </div>
  </div>

</body>

</html>