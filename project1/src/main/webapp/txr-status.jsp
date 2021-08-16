<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
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
    <hr/>
    <div class="box">Transaction App</div>
    <hr/>
    <hr/>

    <nav class="nav">
      <a class="nav-link" href="txr">Transfer</a>
      <a class="nav-link" href="statement">Statement</a>
      <a class="nav-link" href="logout">Statement</a>
    </nav>
  

    <hr/>

    <div class="alert alert-info">
      ${message}, <%=request.getAttribute("message")%>
    </div>

</body>
</html>