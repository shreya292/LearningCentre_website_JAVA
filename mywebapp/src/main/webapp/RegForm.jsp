<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title> IYS FORM FILL UP</title>
    <link rel="stylesheet" href="styleregform.css" type="text/css" />
    <script src="javascript.js"></script>
</head>
<style>
    body {
        background-color: cornsilk;
    }
</style>

<body>
    <div class="mydiv">

        <h1> <pre>      INTEGRATE   YOUR   SUCCESS     </pre></h1>
    </div>
    <div class="inner">
        <p class="align_center">Note: Required fields are marked with an asterisk (*)</p>

        <form name="myform" method="post" onsubmit="return validateform()" autocomplete="on" >
            <fieldset class="applying_border">
                <legend>
                    <pre class="apply_inBorder">  DESIRED COURSE  </pre>
                </legend>
                <label for="des_cou"> CHOOSE THE DESIRED COURSE : <span class="mandatory">* </span> </label>
                <select class="inp_font">
                    <option value="onmat"> Only Mathematics </option>
                    <option  value="onphy"> Only Physics </option>
                    <option value="onchm"> Only Chemistry </option>
                    <option value="onbio"> Only Biology </option>
                    <option value="oncmp"> Only Computer Application</option>
                    <option value="allsub"> Mathematics, Physics, Chemistry, and Computer Application </option>
                    <option value="matphy"> Mathematics and Physics </option>
                    <option value="matchm"> Mathematics and Chemistry </option>
                    <option value="matbio"> Mathematics and Biology </option>
                    <option value="matcmp"> Mathematics and Computer Application </option>
                    <option value="phychm"> Physics and Chemistry </option>
                    <option value="phybio"> Physics and Biology </option>
                    <option value="phycmp"> Phyiscs and Computer Application </option>
                    <option value="chmbio"> Chemistry and Biology </option>
                    <option value="chmcmp"> Chemistry and Computer Application </option>
                    <option value="biocmp"> Biology and Computer Application </option>
                </select>
            </fieldset>

            <fieldset class="applying_border" name="personal_details">
                <legend>
                    <pre class="apply_inBorder">  ENTER THE PERSONAL DETAILS  </pre>
                </legend>
                <label for="fname">  STUDENT'S NAME : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="text" id="fname" name="fname" size="35" value="" placeholder="First Name">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input class="inp_font" type="text" id="lname" name="lname" size="35" value="" placeholder="Last Name">
                <br><br>
                <label for="address">  ADDRESS : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="text" id="address" name="address" size="60" value="">&nbsp;&nbsp;&nbsp;&nbsp;
                <label for="pincode">  PIN CODE : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="text" id="pincode" name="pincode" size="15" value=""><br><br>
                <label for="district">  DISTRICT : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="text" id="district" name="district" size="35" value="">&nbsp;&nbsp;&nbsp;&nbsp;
                <label for="district">  STATE OR UNION TERRITORY: <span class="mandatory">* </span> </label>
                <select class="inp_font">
                    <br><option value="ANNI"> ANDAMAN AND NICOBAR ISLANDS </option>
                    <option value="AP"> ANDHRA PRADESH  </option>
                    <option value="ARP"> ARUNACHAL PRADESH </option>
                    <option value="ASM">  ASSAM  </option>
                    <option value="BL">  BANGALORE  </option>
                    <option value="BH"> BIHAR  </option>
                    <option value="CH"> CHANDIGARH  </option>
                    <option value="DNDD"> DADRA AND NAGAR HAVELI AND DAMAN AND DIU </option>
                    <option value="DL">  DELHI  </option>
                    <option value="GO">  GOA  </option>
                    <option value="GJ">  GUJARAT  </option>
                    <option value="HY">  HARYANA  </option>
                    <option value="HP">  HIMACHAL PRADESH  </option>
                    <option value="JK">  JAMMU AND KASHMIR  </option>
                    <option value="JH">  JHARKHAND  </option>
                    <option value="KT">  KARNATAKA  </option>
                    <option value="KL">  KERELA  </option>
                    <option value="LDK"> LADAKH </option>
                    <option value="LAK"> LAKSHADWEEP </option>
                    <option value="MP">  MADHYA PRADESH  </option>
                    <option value="MH">  MAHARASTRA  </option>
                    <option value="MA">  MANIPUR  </option>
                    <option value="MG">  MEGHALAYA  </option>
                    <option value="MI">  MIZORAM  </option>
                    <option value="NG">  NAGALAND  </option>
                    <option value="OD">  ODISHA  </option>
                    <option value="PDC"> PUDUCHERRY </option>
                    <option value="PB">  PUNJAB  </option>
                    <option value="RJ">  RAJASTHAN  </option>
                    <option value="SK">  SIKKIM  </option>
                    <option value="TN">  TAMIL NADU  </option>
                    <option value="TG">  TELENGANA  </option>
                    <option value="TR">  TRIPURA  </option>
                    <option value="UP">  UTTAR PRADESH  </option>
                    <option value="UK">  UTTARAKHAND  </option>
                    <option value="WB">  WEST BENGAL  </option>
            </select><br><br>
                <label for="gender">  GENDER : <span class="mandatory">* </span> </label>
                <select class="inp_font">
                    <option value="M"> <pre>  Male  </pre> </option>
                    <option value="F"> <pre>  Female  </pre> </option>
                    <option value="F"> <pre>  Others  </pre> </option>
                </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label for="dob">  DATE OF BIRTH : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="date" min="1955-01-01" max=""><br><br>
                <label for="mobile">  MOBILE NUMBER : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="tel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label for="email">  EMAIL ID : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="text" id="mail" name="email" size="45" placeholder="e.g. abcd@gmail.com"><br><br>
                <label for="password"> PASSWORD : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="password">
            </fieldset>

            <fieldset class="applying_border" id="parent_details">
                <legend>
                    <pre class="apply_inBorder">  ENTER THE PARENT DETAILS  </pre>
                </legend>
                <label for="fathername"> FATHER'S NAME : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="text" id="ffname" name="ffname" size="35" value="" placeholder="First Name">&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="inp_font" type="text" id="flname" name="flname" size="35" value="" placeholder="Last Name"><br><br>
                <label for="mothername"> MOTHER'S NAME : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="text" id="mfname" name="mfname" size="35" value="" placeholder="First Name">&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="inp_font" type="text" id="mlname" name="mlname" size="35" value="" placeholder="Last Name"><br><br>
                <label for="par_mobile">  PARENT'S MOBILE NUMBER : <span class="mandatory">* </span> </label>
                <input class="inp_font" type="tel"><br><br>
            </fieldset>
            <!--<fieldset class="applying_border">
                <legend>
                    <pre class="apply_inBorder">  DECLARATION  </pre>
                </legend>
                <input name="dec" type="checkbox" id="checkbox" value="1" checked="checked" />
                <span class="normal">I agree to receive SMS notification / alert into my DND registered mobile number from Integrate Your Success for future communication
            </fieldset>-->
        <br>
        <fieldset class="align_center">
            <input class="align_center" style = "font-weight: bold;" type="submit" value="SUBMIT">
        </fieldset>
    </div>
</body>
</html>