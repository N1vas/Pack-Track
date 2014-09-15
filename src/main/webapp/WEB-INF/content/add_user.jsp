<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/home.css" rel="stylesheet">
    <link href="css/add_user.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Hi <s:property value="#session['userName']" /> </a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<s:url action="home"/>">Home</a>
                    </li>
                    <li>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="<s:url action="logout"/>">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div>
  <img src="images/home.png" class="img-responsive">
    </div>



  <div class="modal-dialog" style="min-width: 450px;">
    <div class="modal-content">
      <div id="container" class="modal-body">
           <s:form action="add_user">
         <div id='form'>
            <h1 class='hedinh-tag'>Add User</h1>
            <table class='main-table'>
               <tr>
                  <td><b>Name</b></td>
                  <td colspan='3'>
                  <table style="width:100%">
                    <s:textfield cssClass='input_class' type='text' name='name' id='name'/>
                    </table>
                  </td>
               </tr>
               <tr>
                  <td><b>UserName</b></td>
                  <td colspan='3'>
                  <table style="width:100%">
                     <s:textfield cssClass='input_class' type='text' name='userName' id='userName'/>
                     </table>
                  </td>
               </tr>
               <tr>
                  <td><b>Email</b></td>
                  <td colspan='3'>
                  <table style="width:100%">
                     <s:textfield cssClass='input_class' type='text' name='email' id='email'/>
                     </table>
                  </td>
               </tr>
               <tr>
                  <td><b>NIC</b></td>
                  <td>
                  <table style="width:100%">
                     <s:textfield cssClass='input_class' type='text' name='nic' id='nic'/>
                     </table>
                  </td>
                  <td style="padding:5px;"><b>Phone</b></td>
                  <td>
                  <table style="width:100%">
                     <s:textfield cssClass='input_class' type='text' name='phone' id='phone'/>
                     </table>
                  </td>
               </tr>
               <tr>
                  <td><b>Designation</b></td>
                  <td>
                  <table style="width:100%">
                     <s:textfield cssClass='input_class' type='text' name='designation' id='designation'/>
                     </table>
                  </td>
                  <td style="padding:5px;"><b>Role</b></td>
                  <td>
                  <table style="width:100%">
                     <s:textfield cssClass='input_class' type='text' name='role' id='role'/>
                     </table>
                  </td>
               </tr>
               <tr>
                  <td><b>Shed</b></td>
                  <td>
                  <table style="width:100%">
                     <s:textfield cssClass='input_class' type='text' name='shed' id='shed'/>
                     </table>
                  </td>
                  <td style="padding:5px;"><b>Sub Dept.</b></td>
                  <td>
                  <table style="width:100%">
                     <s:textfield cssClass='input_class' type='text' name='sub_dept' id='sub_dept'/>
                     </table>
                  </td>
               </tr>
               <tr>
                  <td><b>Station</b></td>
                  <td>
                  <table style="width:100%">
                     <s:select cssClass='input_class' name='station' id='station' list="stationList" listValue="name" listKey="ID"></s:select>
                     </table>
                  </td>
               </tr>
            </table>
            <br/>
            <p><b>User Privileges</b></p>
            <table style=" margin-left:10px;">
               <tr>
                  <td><table style="width:100%"><s:checkbox name="add_user"  label="Add user"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='remove_user' label="Add/Remove user"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='add_train' label="Add train"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='remove_train' label=" Add/Remove train"/></table></td>
               </tr>
               <tr>
                  <td><table style="width:100%"><s:checkbox name='add_station' label=" Add station"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='remove_station' label=" Add/Remove station"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='add_category' label="Add category"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='remove_category' label="Add/Remove category"/></table></td>
               </tr>
               <tr>
                   <td><table style="width:100%"><s:checkbox name='add_device' label="Add device"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='remove_device' label="Add/Remove device"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='edit_customer' label="Edit customers"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='add_parcel' label="Add parcel"/></table></td>
               </tr>
               <tr>
                  <td><table style="width:100%"><s:checkbox name='release_parcel' label="Release parcel"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='confirm_arrival' label="Confirm arrival"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='check_upcoming' label="Check upcoming parcels"/></table></td>
                  <td><table style="width:100%"><s:checkbox name='select_train' label="Select train"/></table></td>
               </tr>
            </table>
            <br/>
            <div class='wrapper'>
                     <input type='submit' name='create' value='Create User'>
                  </td>
            </div>
            <br>
            </tr>
         </div>
      </s:form>
      </div>
    </div>
  </div>


    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Pack Track 2014</p>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </footer>

    <script src="js/jquery-1.11.0.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/home.js"></script>

</body>

</html>
