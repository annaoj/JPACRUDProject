<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../bootstrap/bootstrapHead.jsp" />
<link rel="stylesheet" type="text/css" href="../../css/formCard.css" />
</head>
<body>
	<jsp:include page="../navigation/navigation.jsp" />
	<div class="container">
		

			<form action="saveKitty.do" method="POST" class="form-card">
				<fieldset class="form-fieldset">
					<legend class="form-legend">Update info about Crypto Kitty ${kitty.name}</legend>
					<div class="form-radio form-radio-inline">
						<div class="form-radio-legend">For Sale?</div>
						<!-- 		<label class="form-radio-label"> <input name="onSale"
						class="form-radio-field" type="radio" required value="t" /> <i
						class="form-radio-button"></i> <span>YES</span>
					</label> <label class="form-radio-label"> <input name="onSale"
						class="form-radio-field" type="radio" required value="f" /> <i
						class="form-radio-button"></i> <span>No</span>
					</label>  -->

						<c:choose>
							<c:when test="${kitty.onSale=='t'}">
      <label class="form-radio-label"> <input name="onSale"
						class="form-radio-field" checked type="radio" required value="t" /> <i
						class="form-radio-button"></i> <span>YES</span>
					</label>
        <br />
                <label class="form-radio-label"> <input name="onSale"
						class="form-radio-field" type="radio" required value="f" /> <i
						class="form-radio-button"></i> <span>No</span>
					</label>
							</c:when>
							<c:otherwise>
      <label class="form-radio-label"> <input  name="onSale"
						class="form-radio-field" type="radio" required value="t" /> <i
						class="form-radio-button"></i> <span>YES</span>
					</label>
        <br />
                <label class="form-radio-label"> <input checked name="onSale"
						class="form-radio-field" type="radio" required value="f" /> <i
						class="form-radio-button"></i> <span>No</span>
					</label>
       
							</c:otherwise>
						</c:choose>
						<small class="form-element-hint">Choose one</small>
					</div>
		<input name="id" hidden value="${kitty.id}" class="form-element-field"/>
					
					<div class="form-element form-input">
						<input name="name" value="${kitty.name}" class="form-element-field"
							placeholder="Please fill in your kitty name" type="input"
							required />
						<div class="form-element-bar"></div>
						<label class="form-element-label" for="name">${kitty.name}</label>
					</div>
			<div class="form-element form-input">
						<input name="cryptoId" value="${kitty.cryptoId}"  class="form-element-field"
							placeholder="Please fill in crypto id if you know it" type="input"  />
						<div class="form-element-bar"></div>
						<label class="form-element-label" for="cryptoId">${kitty.cryptoId}</label>
					</div>
					<div class="form-element form-input">
						<input name="generation" value="${kitty.generation}"  class="form-element-field"
							placeholder="Please fill in generation num" type="input" required />
						<div class="form-element-bar"></div>
						<label class="form-element-label" for="generation">${kitty.generation}</label>
					</div>

					<div class="form-element form-input">
						<input name="priceEth" value="${kitty.priceEth}" class="form-element-field"
							placeholder="Please fill in generation num" type="number"
							required />
						<div class="form-element-bar"></div>
						<label class="form-element-label" for="generation">${kitty.priceEth}</label>
					</div>
					<div class="form-element form-textarea">
						<textarea value="${kitty.description}" name="description" class="form-element-field"
							placeholder="description ">${kitty.description}</textarea>
						<div class="form-element-bar"></div>
						<label class="form-element-label" for="description"></label>
<div class="form-element-bar"></div>
					</div>

					<div class="form-element form-input">
						<input value="${kitty.motherId}" name="motherId" class="form-element-field"
							placeholder="Please fill in motherId" type="number" required />
						<div class="form-element-bar"></div>
						<label class="form-element-label" for="motherId">${kitty.motherId}</label>
					</div>
					<div class="form-element form-input">
						<input value="${kitty.fatherId}" name="fatherId" class="form-element-field"
							placeholder="Please fill in motherId" type="number" required />
						<div class="form-element-bar"></div>
						<label class="form-element-label" for="fatherId">${kitty.fatherId}</label>
					</div>


					<div class="form-element form-input ">
						<label class="searchlabel" for="dateOfBirth">dateOfBirth:</label>
						<input value="${kitty.dateOfBirth}" type="date" class="form-control" required
							name="dateOfBirth" placeholder="dateOfBirth" /> <label
							class="searchlabel" for="date_of_birth">color:</label> <input
							type="text" class="form-control" name="color" placeholder="color" />


						<label class="searchlabel" for="imgUrl">imgUrl:</label>
						 <input
							type="text" class="form-control" value="${kitty.imgUrl}" name="imgUrl"
							placeholder="imgUrl" /> <label class="searchlabel" for="imgUrl">
						<label class="searchlabel" for="imgUrl">price($):</label>	
						<input value="${kitty.price}" type="number" value="0.0" class="form-control" name="price"
							placeholder="price" />

						<h3>Cattributes</h3>
						<label class="searchlabel" for="eyeColour">Eyes Color:</label> 
						<input value="${kitty.eyeColour}"
							type="text" class="form-control" name="eyeColour"
							placeholder="eyeColour" /> <label class="searchlabel"
							for="pattern">Pattern:</label> 
							
							<input type="text" value="${kitty.pattern}"
							class="form-control" name="pattern" placeholder="pattern" /> 
							<label
							class="searchlabel" for="mouth">Mouth:</label> 
							<input type="text" value="${kitty.mouth}"
							class="form-control" name="mouth" placeholder="mouth" /> 
							<label
							class="searchlabel" for="fur">Fur:</label> 
							<input type="text" value="${kitty.fur}"
							class="form-control" name="fur" placeholder="fur" />

					</div>


				</fieldset>
				<div class="form-actions">
					<input type="submit" value="Update
						kitty" name="id" class="submit btn btn-primary">

				</div>
			</form>


	
	</div>
	<jsp:include page="../bootstrap/bootstrapFoot.jsp" />
</body>
</html>