<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validate.aspx.cs" Inherits="Assignment.validate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>

</head>

<script src="ValidateFunc.js"></script>

<body>
    <form id="form1" runat="server">
        <div>
            <p>
                username : 
            <input type="text" runat="server" id="txtusername" />
            </p>

            <p>
                pin : 
            <input type="text" runat="server" id="txtpin" />
            </p>

            <p>
                <label for="states">states:</label>
                <select name="states" id="state">
                    <option value="Delhi">Delhi</option>
                    <option value="Uttarakhand">Uttarakhand</option>
                    <option value="Punjab">Punjab</option>
                    <option value="Haryana">Haryana</option>

                </select>
            </p>

            <p>
                <label>Choose one:</label><br />
                <label for="milk">
                    <input type="radio" id="milk" name="milk" value="milk" />Milk</label><br />
                <label for="butter">
                    <input type="radio" id="butter" name="butter" value="butter" />Butter</label><br />
                <label for="cheese">
                    <input type="radio" id="cheese" name="cheese" value="cheese" />Cheese</label><br />
            </p>

            <div>
                <button onclick="validateForm()">check form</button>
            </div>


        </div>
    </form>
</body>
</html>
