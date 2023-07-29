<%@page import="beans.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <title> IYS FORM FILL UP</title>
</head>
<style>
        body { background: linear-gradient(to right, rgb(254, 254, 252), rgb(196, 196, 197)); }
    .sclogo {
        border: 2px outset red;
        background: linear-gradient(to right, #f67867, #f8f0c2);
        border-width: 3px 2px 3px 2px; padding: 5px; margin: 15px;
    }
    .sclogo img {
        height: 100px; width: 450px; display: block;
        margin-left: auto; margin-right: auto; image-orientation: initial;
    }
    .sclogo img:hover { box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5); }
    .align_center {
        text-align: center; font-size: large; font: status-bar;
        font-weight: normal; font-size: medium; font-family: monospace;
    }
    .formerror {
        color: red; font-size: small; font-style: italic;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }
    .inp_font { font-family: monospace; font-weight: bold; color: rgb(16, 1, 1); }
    .mandatory { content: " *"; color: red; font-weight: bold; }
    .applying_border {
        border-width: 1px; border-style: solid; border-radius: 4px; color: black;
        font-weight: bold; font-family: monospace; font-size: large;
    }
    .apply_inBorder {
        border-width: 1px; border-style: solid; border-radius: 4px;
        color: black; font-size: larger; text-align: center; font-size: 100%;
    }
    label { color: firebrick; }
    .box {
        border-width: 1px; border-width: 1px; border-style: solid;
        border-radius: 4px; color: black;
    }
    .normal {
        font-family: 'Courier New', Courier, monospace;
        font-size: 15px; font-weight: 600; color: black;
    }
    .inner { border: 2px solid green; padding: 15px; margin: 20px; }
    .inner_op { border: 2px solid black; padding: 50px; margin: 20px; }
    #eye-icon { font-size: 12px; margin-left: -30px; }
    #submit {
        font-size: 20px; display: inline-block; border-radius: 3px; 
        width: 150px; height: 40px; cursor: pointer; transition: 0.4s ease; 
        letter-spacing: 1.5px; color: #000;
    }
    #submit:hover { background: #ff7200; }
    label { display: inline-block; padding: 5px 5px 5px 0; }
    input, select { margin-top: 3px; margin-bottom: 5px; }
    select { width: 360px; }
    select~#gender { width: 100px; }
    input[type=text] { width: 350px; padding-left: 5px; }
    input[type=tel], #pwd, #cpwd { width: 320px; padding-left: 5px; }
    #address { max-width: 500px; }
    input[type=text]:focus, select:focus { box-shadow: 0 0 13px rgb(118, 246, 246); }

    @media only screen and (max-width: 490px) {
        body { width: 100%; }
        .logo { width: 90%; }
        .logo img { width: 80%; }
        .inner { width: 85%; }
        input[type=text], input[type=tel], select { width: 60%; }
        #pwd, #cpwd { width: 70%; }
        #eye-icon { font-size: 10px; }
    }
</style>

<body>
    <div class="sclogo">
        <a><img src="sclogo.png"></a>
    </div>
    <div class="inner">
        <p class="align_center">Note: Required fields are marked with an asterisk (*)</p>
        <form action="RegSer1" method="post" name="RegForm" onsubmit="return validateform()" autocomplete="on" >
            <fieldset class="applying_border">
                <legend>
                    <pre class="apply_inBorder">  DESIRED COURSE  </pre>
                </legend>
                <label for="des_cou"> CHOOSE THE DESIRED COURSE : <span class="mandatory">* </span> </label>
                <select class="inp_font" name="course">
                	<option value="html">HTML5</option>
                	<option value="css">CSS3 </option>
                	<option value="javascript">JavaScript </option>
                    <option value="mathematics"> Mathematics </option>
                    <option  value="C">C </option>
                    <option value="C++">C++ </option>
                    <option value="Python">Python </option>
                    <option value="Java">Java</option>
                    <br><br>
                </select>
            </fieldset>

            <fieldset class="applying_border" name="personal_details">
                <legend>
                    <pre class="apply_inBorder">  ENTER THE PERSONAL DETAILS  </pre>
                </legend>
                <div id="myname">
                	<label for="name">  STUDENT'S NAME : <span class="mandatory">* </span> </label>
                	<input class="inp_font" type="text" id="name" name="name" size="35" value="" placeholder="e.g. Akash Kumar" required>
                	<b><span class="formerror"></span></b>
                </div><br>
                <div id="myaddress">
                	<label for="address">  ADDRESS : <span class="mandatory">* </span> </label>
                	<input class="inp_font" type="text" id="address" name="address" size="60" value="" required>
                	<b><span class="formerror"></span></b>
                </div><br>
                <label for="district">  STATE OR UNION TERRITORY: <span class="mandatory">* </span> </label>
                <select class="inp_font" name="state">
                    <br><option value="Andaman & Nicobar"> ANDAMAN AND NICOBAR ISLANDS </option>
                    <option value="Andhra Pradesh"> ANDHRA PRADESH  </option>
                    <option value="Arunachal Pradesh"> ARUNACHAL PRADESH </option>
                    <option value="Assam">  ASSAM  </option>
                    <option value="Bihar"> BIHAR  </option>
                    <option value="Chhattisgarh"> CHATTISGARH </option>
                    <option value="Chandigarh"> CHANDIGARH  </option>
                    <option value="Dadra, Daman, Diu"> DADRA AND NAGAR HAVELI AND DAMAN AND DIU </option>
                    <option value="Delhi">  DELHI  </option>
                    <option value="Goa">  GOA  </option>
                    <option value="Gujarat">  GUJARAT  </option>
                    <option value="Haryana">  HARYANA  </option>
                    <option value="Himachal Pradesh">  HIMACHAL PRADESH  </option>
                    <option value="Jammu and Kashmir">  JAMMU AND KASHMIR  </option>
                    <option value="Jharkhand">  JHARKHAND  </option>
                    <option value="Karnataka">  KARNATAKA  </option>
                    <option value="Kerela">  KERELA  </option>
                    <option value="Ladakh"> LADAKH </option>
                    <option value="Lakshadweep"> LAKSHADWEEP </option>
                    <option value="Madhya Pradesh">  MADHYA PRADESH  </option>
                    <option value="Maharashtra">  MAHARASTRA  </option>
                    <option value="Manipur">  MANIPUR  </option>
                    <option value="Meghalaya">  MEGHALAYA  </option>
                    <option value="Mizoram">  MIZORAM  </option>
                    <option value="Nagaland">  NAGALAND  </option>
                    <option value="Odisha">  ODISHA  </option>
                    <option value="Puducherry"> PUDUCHERRY </option>
                    <option value="Punjab">  PUNJAB  </option>
                    <option value="Rajasthan">  RAJASTHAN  </option>
                    <option value="Sikkim">  SIKKIM  </option>
                    <option value="Tamil Nadu">  TAMIL NADU  </option>
                    <option value="Telengana">  TELENGANA  </option>
                    <option value="Tripura">  TRIPURA  </option>
                    <option value="Uttar Pradesh">  UTTAR PRADESH  </option>
                    <option value="Uttrakhand">  UTTARAKHAND  </option>
                    <option value="West Bengal">  WEST BENGAL  </option>
            </select><br><br>
                <label for="gender">  GENDER : <span class="mandatory">* </span> </label>
                <select class="inp_font" name="gender">
                    <option value="Male" > <pre>  Male  </pre> </option>
                    <option value="Female" > <pre>  Female  </pre> </option>
                    <option value="Others" > <pre>  Others  </pre> </option>
                </select><br><br>
                <label for="dob">  DATE OF BIRTH : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="date" min="1990-01-01" max="" name="dob" required><br><br>
                <div id="mobile">
                	<label for="mob">  MOBILE NUMBER : <span class="mandatory">* </span> </label>
                	<input class="inp_font" type="tel" id="mob" name="mob" placeholder="e.g.9836786544" required>
                	<b><span class="formerror"></span></b>
                </div><br>
                <div id="email">
                	<label for="eid">  EMAIL ID : <span class="mandatory">* </span> </label>
                	<input class="inp_font" type="text" id="eid" name="eid" size="45" placeholder="e.g. abcd@gmail.com" required>
                	<b><span class="formerror"></span></b>
                </div><br> 
                <div id="password"> 	
                	<label for="pwd"> PASSWORD : <span class="mandatory">* </span> </label>
                	<input class="inp_font" type="password" id="pwd" name="pwd" required>
                	<i class="fa-sharp fa-solid fa-eye-slash" id="eye-icon" onclick="showPassword(this)"></i>
                	<b><span class="formerror"></span></b>
                </div><br>
                <div id="cpassword">
                    <label for="cpwd"> CONFIRM-PASSWORD : <span class="mandatory">* </span> </label>
                    <input class="inp_font" type="password" id="cpwd" name="cpwd" required>
                    <i class="fa-sharp fa-solid fa-eye-slash" id="eye-icon" onclick="showPassword2(this)"></i>
                    <b><span class="formerror"></span></b>
                </div><br> 	
            </fieldset>

            <fieldset class="applying_border" id="parent_details">
                <legend>
                    <pre class="apply_inBorder">  ENTER THE PARENT DETAILS  </pre>
                </legend>
                <div id="fathername">
                	<label for="fname"> FATHER'S NAME : <span class="mandatory">* </span> </label>
                	<input class="inp_font" type="text" id="fname" name="fname" size="35" value="" placeholder="Full Name" required>
                    <b><span class="formerror"></span></b>
                </div><br>
                <div id="mothername">
                	<label for="mname"> MOTHER'S NAME : <span class="mandatory">* </span> </label>
                	<input class="inp_font" type="text" id="mname" name="mname" size="35" value="" placeholder="Full Name" required>&nbsp;&nbsp;&nbsp;&nbsp;
               		<b><span class="formerror"></span></b>
                </div><br>
                <div id="parent_mob">		
                	<label for="pmob">  PARENT'S MOBILE NUMBER : <span class="mandatory">* </span> </label>
                	<input class="inp_font" type="tel" id="pmob" name="pmob" placeholder="e.g.9836786544" required>
                	<b><span class="formerror"></span></b>
                </div><br>
            </fieldset>
        <br>
            <fieldset class="applying_border">
                <legend>
                    <pre class="apply_inBorder">  DECLARATION  </pre>
                </legend>
                <input name="dec" type="checkbox" id="checkbox" value="1" />
                <span class="normal"><b>I agree to receive SMS notification / alert into my DND registered mobile number for future communication.</b></span>
            </fieldset><br>
        <fieldset class="align_center">
            <input class="align_center" id="submit" style = "font-weight: bold;" type="submit" value="SUBMIT">
        </fieldset>
    </div>
</body>
<script>
	$(document).ready(function(){
		alert("Please register with us using Correct Email-ID.\nClick on OK to fill the form.")
	})
    function clearErrors(id) {
        error_element = document.getElementById(id);
        error_element.getElementsByClassName('formerror')[0].innerHTML = "";
    }
    function seterror(id, error) {
        element = document.getElementById(id);
        element.getElementsByClassName('formerror')[0].innerHTML = error;
        
    }
    function validateform() {
        var returnval = true;
        let spChars = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/;
        let spcharsNum = /[0123456789]+/
        let spCharsForPwd = /[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz]+/;
        //For Name
        var name = document.forms['RegForm']["name"].value;
        if(name.length < 7) {
            seterror("myname", "* Length of name is too short!");
            returnval = false;
        }
        else if(spChars.test(name)) {
            seterror("myname", "* Name is having special characters!");
            returnval = false;
        }
        else if(spcharsNum.test(name)) {
            seterror("myname", "* Name is having Number(s) in it!");
            returnval = false;
        }
        else 
            clearErrors("myname");
        //For Address
        var address = document.forms['RegForm']["address"].value;
        
        if(address.length < 7) {
            seterror("myaddress", "* Address should be appropriate!");
            returnval = false;
        }
        else
            clearErrors("myaddress");
        //For Email
        var eid = document.forms['RegForm']["eid"].value;
        var atposition=eid.indexOf("@");  
        var dotposition=eid.lastIndexOf(".");  
        if(eid.length > 30) {
            seterror("email", "* Email is too long!");
            returnval = false;
        }
        else if (!((atposition>1 && dotposition>atposition+2) || dotposition+2>=eid.length)){  
            seterror("email", "* Please enter a valid e-mail address!");  
            returnval = false;  
        } 
        else
            clearErrors("email"); 
        //For Phone
        var mob = document.forms['RegForm']["mob"].value;
        if(spChars.test(mob)) {
            seterror("mobile", "* Phone Number is having Special Character(s) in it!");
            returnval = false;
        }
        else if(spCharsForPwd.test(mob)) {
            seterror("mobile", "* Phone Number is having an Alphabet(s) in it!");
            returnval = false;
        }
        else if((mob.length > 10) || (mob.length < 10)) {
            seterror("mobile", "* Phone Number should be of 10-digit!");
            returnval = false;
        }
        else
            clearErrors("mobile");
        //For Password
        var pwd = document.forms['RegForm']["pwd"].value;
        if(pwd.length < 8) {
            seterror("password", "* Password should be of atleast 8 characters long!");
            returnval = false;
        }
        else if((spCharsForPwd.test(pwd) && spChars.test(pwd)) == false) {
            seterror("password", "* Password must contain atleast one Special-Characters, Upper-case letter, Lower-case letters");
            returnval = false;
        }
        else
            clearErrors("password");
        //For Confirm Password
        var cpwd = document.forms['RegForm']["cpwd"].value;
        if(pwd != cpwd) {
            seterror("cpassword", "* Confirm-Password should match with Password!");
            returnval = false;
        }
        else
            clearErrors("cpassword");
        //For Father's Name
        var fname = document.forms['RegForm']["fname"].value;
        if(fname.length < 7) {
            seterror("fathername", "* Length of name is too short!");
            returnval = false;
        }
        else if(spChars.test(fname)) {
            seterror("fathername", "* Name is having special characters!");
            returnval = false;
        }
        else if(spcharsNum.test(fname)) {
            seterror("fathername", "* Name is having Number(s) in it!");
            returnval = false;
        }
        else
            clearErrors("fathername");
        //For Mother's Name
        var mname = document.forms['RegForm']["mname"].value;
        if(mname.length < 7) {
            seterror("mothername", "* Length of name is too short!");
            returnval = false;
        }
        else if(spChars.test(mname)) {
            seterror("mothername", "* Name is having special characters!");
            returnval = false;
        }
        else if(spcharsNum.test(mname)) {
            seterror("mothername", "* Name is having Number(s) in it!");
            returnval = false;
        }
        else
            clearErrors("mothername");
        //For Parent's Mobile
        var pmob = document.forms['RegForm']["pmob"].value;
        if(spChars.test(pmob)) {
            seterror("parent_mob", "* Phone Number is having Special Character(s) in it!");
            returnval = false;
        }
        else if(spCharsForPwd.test(pmob)) {
            seterror("parent_mob", "* Phone Number is having an Alphabet(s) in it!");
            returnval = false;
        }
        else if((pmob.length > 10) || (pmob.length < 10)) {
            seterror("parent_mob", "* Phone Number should be of 10-digit!");
            returnval = false;
        }
        else
            clearErrors("parent_mob");
		
        return returnval;
    }
    function showPassword(chic) {
        var passwrd = document.getElementById("pwd");
        if (passwrd.type == "password") {
            passwrd.type = "text";
        } else {
            passwrd.type = "password";
        }
        chic.classList.toggle("fa-eye");
    }
    function showPassword2(chic) {
        var passwrd = document.getElementById("cpwd");
        if (passwrd.type == "password") {
            passwrd.type = "text";
        } else {
            passwrd.type = "password";
        }
        chic.classList.toggle("fa-eye");
    }
    $(document).ready(function() {
    	var chk = $('#checkbox');
          var sut = $('#submit');
          chk.on('change', function() {
             sut.prop("disabled", !this.checked)
          }).trigger('change');
    });
</script>
</html>