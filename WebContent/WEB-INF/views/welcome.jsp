<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>signup</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
    
    <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet"> 
 <link rel="stylesheet" type="text/css" href="starability-all.min.css"/>

 <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"> 
  
 
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  
    <style>
  
   
    
        @media(min-width: 768px) {
            .field-label-responsive {
              padding-top: .5rem;
              text-align: right;
            }
          }
    </style>


 <style>
  
  
  
 
  
  
    
     * {
  box-sizing: border-box;
}

  body {
    background-color: lightblue;
    font-family: Roboto, sans-serif;
  }



.list {
  flex: 0 80%;
}
.list__item {
  position: relative;
}
.list__item:hover label {
  color: #BB4430;
}
.list__item:hover .label::before {
  border: 7px solid #BB4430;
  margin-right: 3px;
}

.radio-btn {
  position: absolute;
  visibility: hidden;
}
.radio-btn:checked ~ .label {
  color: #BB4430;
}
.radio-btn:checked ~ .label::before {
  margin-right: 8px;
  border: 7px solid #BB4430;
  background: #F8F7FF;
}

.label {
  display: flex;
  align-items: center;
  padding: 25px 0 25px 20px;
  color: #F8F7FF;
  font-size: 20px;
  font-weight: 30;
  text-transform: uppercase;
  cursor: pointer;
  transition: all 0.25s linear;
}

.label::before {
  display: block;
  content: '';
  border: 7px solid #F8F7FF;
  border-radius: 50%;
  height: 18px;
  width: 18px;
  margin-right: 10px;
  transition: all .25s linear;
}
  
  </style>
</head>
<body>




<br>
       <div class="container ">

         <form:form action="userSignUpform" method="get" modelAttribute="userSignob" >
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <h2>Enroll User details</h2>
                        <hr>
                      
                    </div>
                </div>
                
                <br>
                
                <div class="row">
                    <div class="col-md-3 field-label-responsive">
                         <label for="email">Enter the Name:</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                             
                            
     
      <input type=text name="username" class="form-control"  placeholder="Enter username">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-control-feedback">
                                <span class="text-danger align-middle">
                                    <!-- Put name validation error messages here -->
                                </span>
                        </div>
                    </div>
                </div>
                
                
                
                
                
      
      
      
        <div class="row">
                    <div class="col-md-3 field-label-responsive">
                        <label for="email">Gender:</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                
                               
     <div class="form-group">
        <input type="radio"   name="gender" value="male">   <label>Male</label>
     
        <input type="radio"  name="gender" value="female">     <label>Female</label>
     
      </div>
     
                            </div>
                        </div>
                        
                        
                     




                    </div>
                    <div class="col-md-3">
                        <div class="form-control-feedback">
                                <span class="text-danger align-middle">
                                    <!-- Put e-mail validation error messages here -->
                                </span>
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
               	
                
                
                <div class="row">
                    <div class="col-md-3 field-label-responsive">
                        <label for="email">Email:</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                               
                               
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-control-feedback">
                                <span class="text-danger align-middle">
                                    <!-- Put e-mail validation error messages here -->
                                </span>
                        </div>
                    </div>
                </div>
                
                
                <div class="row">
                    <div class="col-md-3 field-label-responsive">
                       <label for="pwd">Enter the Password:</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                               
                                
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
                            </div>
                        </div>
                    </div>
                </div>
                
               
              
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <button type="submit" class="btn"> Register</button> 
                    </div>
                </div>
                
                
            </form:form>
            <br>
       
       
     
	    
</body>



</html>



