<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<form action="addKitty.do" method="POST" class="form-card addEditkitty">
			<fieldset class="form-fieldset">
				<legend class="form-legend">Create New Crypto Kitty </legend>
				<div class="form-radio form-radio-inline">
					<div class="form-radio-legend">For Sale?</div>
					<label class="form-radio-label"> <input name="onSale"
						class="form-radio-field" type="radio" required value="t" /> <i
						class="form-radio-button"></i> <span>YES</span>
					</label> <label class="form-radio-label"> <input name="onSale"
						class="form-radio-field" type="radio" required value="f" /> <i
						class="form-radio-button"></i> <span>No</span>
					</label> <small class="form-element-hint">Choose one</small>
				</div>

				<div class="form-group">
					<label class="form-label" for="name"> Name</label> <input
						type="text" class="form-control" id="name" name="name"
						placeholder="Kitty name" tabindex="1" required>
				</div>
				<div class="form-group">
					<label class="form-label" for="name"> Generation</label> <input
						name="generation" class="form-control"
						placeholder="Please fill in generation num" type="number" required />
					
				</div>
				<div class=" form-group">
					<label class="form-label" for="priceEth"> Price(ETH)</label> <input
						name="priceEth" class="form-control"
						placeholder="Please fill in eth price" type="number" required />
			
				</div>
				<div class="form-group">
					<label class="form-label" for="description">Bio</label>
					<textarea rows="2" cols="150" name="description"
						class="form-control" id="description" placeholder="Message..."
						tabindex="0" ></textarea>
				</div>

				<div class="form-group ">
					<label class="form-label" for="dateOfBirth">Date of birth:</label>
					<input type="date" class="form-control dateOfBirth" required
						name="dateOfBirth" placeholder="dateOfBirth" /> 
						
						<label
						class="form-label" for="color">color:</label> 
						<input type="text"
						class="form-control" name="color" placeholder="color" />
						
						 <label
						class="form-label" for="imgUrl">imgUrl:</label>
						 <input type="text"
						class="form-control" name="imgUrl" placeholder="imgUrl" /> 
						
						<label
						class="form-label" for="price">price:</label> 
						<input type="number"
						class="form-control" name="price" placeholder="price" />
					<h3>Parents</h3>

					<div class="form-group">
						<label class="form-label" for="motherId"> Mother id</label> <input
							type="number" class="form-control" name="motherId"
							placeholder="Kitty motherId" tabindex="1" required>
					</div>

					<div class="form-group">
						<label class="form-label" for="name"> Father id</label> <input
							type="text" class="form-control" name="fatherId"
							placeholder="Kitty father id " tabindex="1" required>
					</div>


					<h3>Cattributes</h3>
					<label class="form-label" for="eyeColour">Eyes Color:</label> <input
						type="text" class="form-control" name="eyeColour"
						placeholder="eyeColour" /> <label class="form-label"
						for="pattern">Pattern:</label> <input type="text"
						class="form-control" name="pattern" placeholder="pattern" /> <label
						class="form-label" for="mouth">Mouth:</label> <input type="text"
						class="form-control" name="mouth" placeholder="mouth" /> <label
						class="form-label" for="fur">Fur:</label> <input type="text"
						class="form-control" name="fur" placeholder="fur" />

				</div>
			</fieldset>
			<div class="text-center">
				<button type="submit" class="submit btn btn-primary">Create
					kitty</button>

			</div>
	</form>

	</div>
	<jsp:include page="../bootstrap/bootstrapFoot.jsp" />
</body>
</html>