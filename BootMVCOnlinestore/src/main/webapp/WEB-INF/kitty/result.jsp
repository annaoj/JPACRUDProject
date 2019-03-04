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

			<c:if test="${not empty kitty  }">
					<div class="col-6 mx-auto">
						<div class="flipcard">
							<div class="flipcard-wrap">
								<div class="card card-front">
									<div class="card-body-img">
										<i class="fas fa-comment"></i> <span class="ethprice">${kitty.priceEth}
											ETH </span>
										<c:choose>
											<c:when test="${kitty.imgUrl==''}">
												<img src="https://i.imgur.com/nmjvnfX.gif" alt="${kitty.name}"
													class="card-img-top">

											</c:when>
											<c:otherwise>
												<img src="${kitty.imgUrl}" alt="${kitty.name}" class="card-img-top">

											</c:otherwise>
										</c:choose>



									</div>
									<div class="card-body">
										<h5>${kitty.name}</h5>
										<div class="greytextfont row">
											<div class="col-5">
												<i class="fa fa-magic"></i> ${kitty.generation}
											</div>
											<div class="col-7"># ${kitty.cryptoId}</div>
										</div>
									</div>
								</div>
								<div class="card card-back">
									<div class="card-body">
										<h3>
											<i class="fas fa-paw"></i> Bio:
										</h3>
										<p class="greytextfont">${kitty.description}</p>
										<p>
										<h3>
											<i class="fas fa-cat"></i> Cattributes:
										</h3>
										</p>
										<div class="row">
											<div class="col-5">
												Birthday: <span class="greytextfont">${kitty.dateOfBirth}</span>
											</div>
											<div class="col-6">
												Color:<span class="greytextfont"> ${kitty.color}</span>
											</div>


										</div>
										<div class="row ">
											<div class="col-6">
												Eyes: <span class="greytextfont">${kitty.eyeColour}</span>
											</div>
											<div class="col-6">
												Pattern: <span class="greytextfont">${kitty.pattern}</span>
											</div>
										</div>
										<div class="row">
											<div class="col-6">
												Fur: <span class="greytextfont">${kitty.fur}</span>
											</div>
											<div class="col-6">
												Mouth: <span class="greytextfont">${kitty.mouth}</span>
											</div>
										</div>
<div class="row">
										<p>
										<h3>
											<i class="fas fa-home"></i>Parents:
										</h3>
										</p>
</div>
										<div class="row">
											<div class="col-3">

												<c:choose>
													<c:when test="${kitty.imgUrl==''}">
														<img
															src="https://cdn.pixabay.com/photo/2016/10/11/18/18/white-cat-1732386_1280.png"
															alt="${kitty.name}" class="motherimg">

													</c:when>
													<c:otherwise>
														<img src="https://i.imgur.com/nmjvnfX.gif" alt="mother"
															class="motherimg">
													</c:otherwise>
												</c:choose>


											</div>
											<div class="col-3">
												<c:choose>
													<c:when test="${kitty.imgUrl==''}">
														<img
															src="https://cdn.pixabay.com/photo/2016/10/11/18/18/white-cat-1732386_1280.png"
															alt="${kitty.name}" class="fatherimg">

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
										<div class="row card-back-footer">
											<div class="col-6 btn-bottom-left">
												<form action="deleteKitty.do" method="POST" name="id">
													<input type="hidden" name="id" value="${kitty.id}" /> <input
														type="submit" name="id"
														class="col btnResult btn btn-outline-primary"
														value="DELETE" />
												</form>
											</div>
											<div class="col-6 btn-bottom-right">
												<form action="editKitty.do" method="GET">
													<input type="hidden" name="id" value="${kitty.id}" /> <input
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
			</c:if>

		</div>
	</div>
	<jsp:include page="../bootstrap/bootstrapFoot.jsp" />

</body>
</html>


