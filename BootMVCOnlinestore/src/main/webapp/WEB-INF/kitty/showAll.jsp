<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../bootstrap/bootstrapHead.jsp" />

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../navigation/navigation.jsp" />
	<div class="container">
		<div class="row">
			<c:if test="${removed  }">
				<div>Kitty was successfully removed</div>
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					<strong>Holy Cats!!</strong> You kitty was successfully deleted!
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>
		</div>
		<div class="row">

			<c:if test="${not empty kitties  }">
				<c:forEach var="k" items="${kitties}">
					<div class="col-sm-12 col-md-4">
						<div class="flipcard">
							<div class="flipcard-wrap">
								<div class="card card-front">
									<div class="card-body-img">
										<i class="fas fa-comment"></i> <span class="ethprice">${k.priceEth}
											ETH </span>
										<c:choose>
											<c:when test="${k.imgUrl==''}">
												<img src="https://i.imgur.com/nmjvnfX.gif" alt="${k.name}"
													class="card-img-top">

											</c:when>
											<c:otherwise>
												<img src="${k.imgUrl}" alt="${k.name}" class="card-img-top">

											</c:otherwise>
										</c:choose>



									</div>
									<div class="card-body">
										<h5>${k.name}</h5>
										<div class="greytextfont row">
											<div class="col-5">
												<i class="fa fa-magic"></i> ${k.generation}
											</div>
											<div class="col-7"># ${k.cryptoId}</div>
										</div>
									</div>
								</div>
								<div class="card card-back">
									<div class="card-body">
										<h3>
											<i class="fas fa-paw"></i> Bio:
										</h3>
										<p class="greytextfont">${k.description}</p>
										<p>
										<h3>
											<i class="fas fa-cat"></i> Cattributes:
										</h3>
										</p>
										<div class="row">
											<div class="col-5">
												Birthday: <span class="greytextfont">${k.dateOfBirth}</span>
											</div>
											<div class="col-6">
												Color:<span class="greytextfont"> ${k.color}</span>
											</div>


										</div>
										<div class="row">
											<div class="col-6">
												Eyes: <span class="greytextfont">${k.eyeColour}</span>
											</div>
											<div class="col-6">
												Pattern: <span class="greytextfont">${k.pattern}</span>
											</div>
										</div>
										<div class="row">
											<div class="col-6">
												Fur: <span class="greytextfont">${k.fur}</span>
											</div>
											<div class="col-6">
												Mouth: <span class="greytextfont">${k.mouth}</span>
											</div>
										</div>

										<p>
										<h3>
											<i class="fas fa-home"></i>Parents:
										</h3>
										</p>

										<div class="row">
											<div class="col-3">

												<c:choose>
													<c:when test="${k.imgUrl==''}">
														<img
															src="https://cdn.pixabay.com/photo/2016/10/11/18/18/white-cat-1732386_1280.png"
															alt="${k.name}" class="motherimg">

													</c:when>
													<c:otherwise>
														<img src="https://i.imgur.com/nmjvnfX.gif" alt="mother"
															class="motherimg">
													</c:otherwise>
												</c:choose>


											</div>
											<div class="col-3">
												<c:choose>
													<c:when test="${k.imgUrl==''}">
														<img
															src="https://cdn.pixabay.com/photo/2016/10/11/18/18/white-cat-1732386_1280.png"
															alt="${k.name}" class="fatherimg">

													</c:when>
													<c:otherwise>
														<img src="https://i.imgur.com/nmjvnfX.gif" alt="father"
															class="fatherimg">
														<!-- <img
													src="https://img.cryptokitties.co/0x06012c8cf97bead5deae237070f9587f8e7a266d/1370711.svg"
													alt="father" class="fatherimg"> -->
													</c:otherwise>
												</c:choose>

											</div>
										</div>
										<div class="row  card-back-footer">
											<div class="col-6 ">
												<form action="deleteKitty.do" method="POST" name="id">
													<input type="hidden" name="id" value="${k.id}" /> <input
														type="submit" 
														class="col btnResult btn btn-outline-primary"
														value="DELETE" />
												</form>
											</div>
											<div class="col-6">
												<form action="editKitty.do" method="GET">
													<input type="hidden" name="id" value="${k.id}" /> <input
														class=" col btn btnResult btn-primary btn-main-color"
														type="submit" value="EDIT" />
												</form>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>

		</div>
	</div>
	<jsp:include page="../bootstrap/bootstrapFoot.jsp" />

</body>
</html>


