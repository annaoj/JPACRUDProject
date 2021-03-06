<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light navbar-custom">
  <a class="navbar-brand" href="home.do">
  <img alt="" width="40px" src="https://cdn3.vectorstock.com/i/1000x1000/72/82/cats-in-love-logo-icon-vector-21297282.jpg"/>
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">

      <li class="nav-item">
          <a class="nav-link" href="catalogue.do">Catalogue <span class="sr-only">(current)</span></a>

      </li>
      <li class="nav-item" >
      	<form class="form-inline my-2 my-lg-0" action="addKittyForm.do" method="GET">
				<input type="hidden" name="" value="" /> 
				
				<input 
					class="  btn btnResult  btn-outline-primary btn-main-color" type="submit"
					value="Create Your Kitty" />
			</form>
      </li>
<!--       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li> -->
    </ul>
    
    <form action="getKitty.do" method="GET" class="form-inline my-2 my-lg-0">
      <input required name="id" class="form-control mr-sm-2" type="search" placeholder="Kitty Id" aria-label="Search">
      <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>