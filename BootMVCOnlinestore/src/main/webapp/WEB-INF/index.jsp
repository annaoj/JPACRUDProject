<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrap/bootstrapHead.jsp" />
<meta charset="UTF-8">
<title>CryptoKitties Store</title>
</head>
<body>
	<jsp:include page="navigation/navigation.jsp" />
	<div class="container-fluid">
			<div class="row">
			<c:if test="${newCreatedKitty  }">
				<div>Kitty was successfully added</div>
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					<strong>Holy Cats!!</strong> You kitty was successfully create!Go check in catalogue!
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>
		</div>
<div class="mainpage-background">
	<div class="row main-create justify-content-center ">
	<h1 class="col-12">CREATE, BREED and COLLECT CRYPTOKITTIES</h1>
		<div class="col-1 float-right">
		<img width="70px" alt="" src="https://www.cryptokitties.co/images/loader.gif">
		
		</div>
		<div class="col-8 float-left">
			<form action="addKittyForm.do" method="GET">
				<input type="hidden" name="" value="" /> 
				
				<input 
					class=" ease btn btnResult btn-create btn-primary btn-main-color" type="submit"
					value="Create Your Kitty" />
			</form>
		</div> 


<%-- 		<div id="form-main">
			<div id="form-div">
				<form class="form" id="form1" action="addKittyForm.do" method="GET">
<img width="70px" alt="" src="https://www.cryptokitties.co/images/loader.gif">
					
					<input type="hidden" name="id" value="${k.id}" /> <input
						class=" btn btnResult btn-create btn-primary btn-main-color"
						type="submit" value="Create Your Kitty" />
				</form>
			</div>

		</div> --%>

</div>
</div>
	</div>



	<!-- 	<a href="addKittyForm.do">Create Yours</a>create new kitty
 --><jsp:include page="bootstrap/bootstrapFoot.jsp" />
</body>
</html>