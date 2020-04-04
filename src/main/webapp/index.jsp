<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script src="information.js"></script>
	<script src="https://rawgit.com/dwmkerr/angular-modal-service/master/dst/angular-modal-service.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.1/angular.js"></script>    
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	
	<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		
		/* The Modal (background) */
		.modal {
		  display: none; /* Hidden by default */
		  position: fixed; /* Stay in place */
		  z-index: 1; /* Sit on top */
		  padding-top: 100px; /* Location of the box */
		  left: 0;
		  top: 0;
		  width: 100%; /* Full width */
		  height: 100%; /* Full height */
		  overflow: auto; /* Enable scroll if needed */
		  background-color: rgb(0,0,0); /* Fallback color */
		  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}
		
		/* Modal Content */
		.modal-content {
		  background-color: #fefefe;
		  margin: auto;
		  padding: 20px;
		  border: 1px solid #888;
		  width: 80%;
		}
		
		/* The Close Button */
		.close {
		  color: #aaaaaa;
		  float: right;
		  font-size: 28px;
		  font-weight: bold;
		}
		
		.close:hover,
		.close:focus {
		  color: #000;
		  text-decoration: none;
		  cursor: pointer;
		}
	</style>
	</head>
	<body>
	
	<div class="container" ng-app="usuarios" ng-controller="Information">
       	<h1>TABLA DE USUARIOS EN ANGULAR JS</h1>
       
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Edad</th>
                </tr>
            </thead>
          <tbody>
            <tr ng-repeat="item in users">
                <td ng-bind="item.name"></td>
                <td ng-bind="item.lastName"></td>
                <td ng-bind="item.age"></td>
                <td>
					<button type="button" class="btn btn-primary" ng-click="myFunction(item)">
					    Detalle
					 </button>	        
				</td>
			</tr>
		</tbody>
		
		<!-- The Modal -->
		<div id="myModal" class="modal" ng-show="modal" style="{{mode}}">
		
		  <!-- Modal content -->
		  <div class="modal-content">
		    <span class="close"  ng-click="close()">&times;</span>
	         <div ng-bind="auxName"></div>
	         <div ng-bind="auxAddress"></div>
	         <div ng-bind="auxNumber"></div>
		  </div>
		
		</div>
		
	</div>
	
	</body>
</html>