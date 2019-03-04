<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../bootstrap/bootstrapHead.jsp" />

</head>
<body>
	<jsp:include page="../navigation/navigation.jsp" />
	<div class="container">
<!-- 
		<div class="mainsection justify-content-center">
			<div class="headerSection text-center">
				<h3 class="header">Add New Crypto Kitty</h3>
			</div>
			<div class="searchForm">
				<form action="addKitty.do" method="POST">
					<div class="form-group">
											<label class="searchlabel" for="name">Name:</label>			
					<input type="text" class="form-control" required name="name"
							placeholder="name"> 
							
					<label class="searchlabel" for="generation">generation:</label>
					<input type="number" class="form-control" required
							name="generation" placeholder="generation" />

	
					<label class="priceEth" for="Language">priceEth:</label>

					<input type="number" class="form-control" required
							name="searchlabel" step="any" placeholder="priceEth" />
			
					<label class="searchlabel" for="description">description:</label>
					<input type="text" class="form-control" name="description"
							placeholder="description"> 

						<label class="searchlabel" for="dateOfBirth">dateOfBirth:</label>
						<input type="date" class="form-control" required
							name="dateOfBirth" placeholder="dateOfBirth" /> <label
							class="searchlabel" for="date_of_birth">color:</label> <input
							type="text" class="form-control" name="color" placeholder="color" />


						<label class="searchlabel" for="imgUrl">imgUrl:</label> <input
							type="text" class="form-control" name="imgUrl"
							placeholder="imgUrl" /> <label class="searchlabel" for="price">price:</label>
						<input type="number" value="0.0" class="form-control" name="price"
							placeholder="price" />

									<label class="searchlabel" for="onSale">is Kitty for Sale:</label>
					<input type="text" class="form-control" 
							name="onSale" placeholder="t/f" />

											<label class="searchlabel" for="cryptoId">If you adding existing kitty add crypto id:</label>
					<input type="number" class="form-control" required
							name="cryptoId" placeholder="crypto Id" />													
							
					<label class="searchlabel" value="0" required for="motherId">Mother:</label>
					<input type="number" class="form-control" 
							name="motherId" placeholder="mother Id" />
							
					<label class="searchlabel" value="0" required for="fatherId">Father:</label>
					<input type="number" class="form-control"
							name="fatherId" placeholder="father Id" />	
					
					<h3>Cattributes</h3>	
					<label class="searchlabel" for="eyeColour">Eyes Color:</label>
					<input type="text" class="form-control" 
							name="eyeColour" placeholder="eyeColour" />
							
					<label class="searchlabel" for="pattern">Pattern:</label>
					<input type="text" class="form-control" 
							name="pattern" placeholder="pattern" />	
							
					<label class="searchlabel" for="mouth">Mouth:</label>
					<input type="text" class="form-control" 
							name="mouth" placeholder="mouth" />
							
					<label class="searchlabel" for="fur">Fur:</label>
					<input type="text" class="form-control" 
							name="fur" placeholder="fur" />	

						<button type="submit" class="addfilmBtn submit btn btn-primary">Create
							kitty</button>

					</div>
				</form>
			</div>
		</div>
 -->

		<form action="addKitty.do" method="POST" class="form-card">
			<fieldset class="form-fieldset">
				<legend class="form-legend">Create New Crypto Kitty</legend>
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
				<div class="form-element form-input">
					<input name="name" class="form-element-field"
						placeholder="Please fill in your kitty name" type="input" required />
					<div class="form-element-bar"></div>
					<label class="form-element-label" for="name">Name</label>
				</div>

				<div class="form-element form-input">
					<input name="name" class="form-element-field"
						placeholder="Please fill in generation num" type="input" required />
					<div class="form-element-bar"></div>
					<label class="form-element-label" for="generation">generation</label>
				</div>
				
				<div class="form-element form-input">
					<input name="priceEth" class="form-element-field"
						placeholder="Please fill in generation num" type="number" required />
					<div class="form-element-bar"></div>
					<label class="form-element-label" for="generation">Price(Eth)</label>
				</div>
								<div class="form-element form-textarea">
					<textarea name="description"
						class="form-element-field" placeholder="description "></textarea>
					<div class="form-element-bar"></div>
					<label class="form-element-label"
						for="description">Your
						description</label>

				</div>
							
				<div class="form-element form-input">
					<input name="motherId" class="form-element-field"
						placeholder="Please fill in motherId" type="number" required />
					<div class="form-element-bar"></div>
					<label class="form-element-label" for="motherId">Mother</label>
				</div>
								<div class="form-element form-input">
					<input name="fatherId" class="form-element-field"
						placeholder="Please fill in motherId" type="number" required />
					<div class="form-element-bar"></div>
					<label class="form-element-label" for="fatherId">Father</label>
				</div>


				<div class="form-element form-input ">
						<label class="searchlabel" for="dateOfBirth">dateOfBirth:</label>
						<input type="date" class="form-control" required
							name="dateOfBirth" placeholder="dateOfBirth" /> <label
							class="searchlabel" for="date_of_birth">color:</label> <input
							type="text" class="form-control" name="color" placeholder="color" />


						<label class="searchlabel" for="imgUrl">imgUrl:</label> <input
							type="text" class="form-control" name="imgUrl"
							placeholder="imgUrl" /> <label class="searchlabel" for="price">price:</label>
						<input type="number" value="0.0" class="form-control" name="price"
							placeholder="price" />

					<h3>Cattributes</h3>
					<label class="searchlabel" for="eyeColour">Eyes Color:</label> <input
						type="text" class="form-control" name="eyeColour"
						placeholder="eyeColour" /> <label class="searchlabel"
						for="pattern">Pattern:</label> <input type="text"
						class="form-control" name="pattern" placeholder="pattern" /> <label
						class="searchlabel" for="mouth">Mouth:</label> <input type="text"
						class="form-control" name="mouth" placeholder="mouth" /> <label
						class="searchlabel" for="fur">Fur:</label> <input type="text"
						class="form-control" name="fur" placeholder="fur" />
				
				</div>


			</fieldset>
			<div class="form-actions">
						<button type="submit" class="submit btn btn-primary">Create
							kitty</button>

			</div>
		</form>



	</div>
	<jsp:include page="../bootstrap/bootstrapFoot.jsp" />
</body>
</html>