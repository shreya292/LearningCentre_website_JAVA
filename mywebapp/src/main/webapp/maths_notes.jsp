<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mathematics Notes</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,300;0,400;1,300&display=swap');
    *{
        margin: 0;
        padding: 0;
        outline: none;
        border: none;
        text-decoration: none;
        box-sizing: border-box;
        font-family: 'Montserrat', sans-serif;
    }
	body {
        height: 100%;
        width: 100%;
        min-width: 600px;
        background: #dfe9f5;
        animation: changeBg 10s infinite alternate linear;
        background-repeat: repeat;
    }
    @keyframes changeBg {
        0% { background : #ff8b83; }
        20% { background : #f6f69a; }
        40% { background : #9df9a2; }
        60% { background : #97dff7; }
        80% { background : #c497f7; }
        100% { background : #f797dd; }
    }
    .main-content {
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
        margin: 60px 20px 20px 20px;
    }
    .screen {
        min-width: 500px;
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
        margin: 20px 40px;
        margin-left: auto;
        margin-right: auto;
        padding: 15px 15px 15px 15px;
        border-radius: 10px;
        box-shadow: 2px 2px 2px 2px rgb(126, 125, 124);
    }
    .container h2 {
        text-align: center;
        color: #ff7200;
        font-size: 30px;
        text-transform: uppercase;
    }
    hr.faceline { margin-top: 5px; border: 2px solid rgb(10, 190, 7); }
    hr.code-line { margin: 5px 5px; border: 1.5px solid rgb(235, 22, 22); }
    .note-container {
        margin: 10px 10px 10px 10px;
        padding: 10px 5px 5px 10px;
        color: rgb(239, 243, 54);
    }
    li { margin-bottom: 15px;}
    li p{  margin-bottom: 6px; padding: 5px 5px 5px 5px; }

    .link-n {
        color:#c300ff;
        background: #fff;
        font-size: 14px;
        border-radius: 6px;
        padding: 5px 5px 5px 5px;
    }
</style>
<body>
    <div class="main-content">
        <div class="screen">
            <div class="container">
                <h2> Mathematics</h2><hr class="faceline">
                <div class="note-container">
                    <ul>
                        <li>
                            <p>SETS</p>
                            <a class="link-n" href="https://drive.google.com/file/d/1IeIsO-DtxB2b24Ek7206TZ7_D6nUCoXo/view?usp=drivesdk" target="_blank">Click on it to get the SETS notes</a>
                        </li>
                        <li>
                            <p>RELATION & FUNCTION</p>
                            <a class="link-n" href="https://drive.google.com/file/d/1IgeLgZGoObrswVxSRPsIEysm_GNGH7of/view?usp=drivesdk" target="_blank">Click on it to get the RELATION & FUNCTION notes</a>
                        </li>
                        <li>
                            <p>PERMUTATION & COMBINATION</p>
                            <a class="link-n" href="https://drive.google.com/file/d/1JX7UFzgHMvx-G51Od-L5n75zqRXaUV-A/view?usp=drivesdk" target="_blank">Click on it to get the PERMUTATION & COMBINATION notes</a>
                        </li>
                        <li>
                            <p>INTEGRATION</p>
                            <a class="link-n" href="https://drive.google.com/file/d/1IrldtH0Xe-NHFcYPfFcrmlmClBYUrtMw/view?usp=drivesdk" target="_blank">Click on it to get the INTEGRATION notes</a>
                        </li>
                        <li>
                            <p>DIFFERENTIATION</p>
                            <a class="link-n" href="https://drive.google.com/file/d/1ItekoxIsNBeTI-hsgtYH7lLI8JandUs7/view?usp=drivesdk" target="_blank">Click on it to get the DIFFERENTIATION notes</a>
                        </li>
                        <li>
                            <p>PROBABILITY</p>
                            <a class="link-n" href="https://drive.google.com/file/d/1IIk3ZVs1lMgtZ9YFmopxMOh5uNFgd5ga/view?usp=drivesdk" target="_blank">Click on it to get the PROBABILITY notes</a>
                        </li>
                    </ul>
                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>