<%@ page import="java.util.List" %>
<%@ page import="com.example.entity.Txn" %>
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
      <a class="nav-link" href="logout">logout</a>
    </nav>



    <hr />
    Welcome : ${sessionScope.currentUser}
    <hr />

    <hr/>
    <select class="form-select form-select-lg mb-3" onchange="window.location = this.options[this.selectedIndex].value">
		<option >-Select-</option>
		<option value="statement?filter=all">All</option>
		<option value="statement?filter=top10">Top 10</option>
  		<option value="statement?filter=debit">Debit</option>
  		<option value="statement?filter=credit">Credit</option>
	</select>
	<hr/>
  
    <%
        List<Txn> txns=(List<Txn>) request.getAttribute("txns");
    %>

    <table class="table table-stripped" style="background-color:skyblue">
        <thead>
        <tr>
            <td>S.No</td>
            <td>Amount</td>
            <td>Type</td>
            <td>Date</td>
            <td>Account</td>
            <td>ClosingBalance</td>
        </tr>
        </thead>
        <tbody>
        <%
            for(Txn txn:txns){
        %>
            <tr>
                <td><%=txn.getId()%></td>
                <td>&#8377;<%=txn.getAmount()%></td>
                <td><%=txn.getType()%></td>
                <td><%=txn.getDate()%></td>
                <td><%=txn.getAccount().getNumber()%></td>
                <td><%=txn.getCbalance()%></td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>


</body>
</html>