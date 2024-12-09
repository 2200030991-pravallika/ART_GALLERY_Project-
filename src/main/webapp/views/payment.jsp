<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Gateway</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            display: flex;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            width: 600px;
        }
        .qr-image {
            margin-right: 50px;
            align-self: center;
        }
        .qr-image img {
            width: 400px;
            height: 400px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        .form-content {
            flex: 1;
        }
        .form-content h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }
        .form-content label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        .form-content input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-content button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        .form-content button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
 <div class="qr-image">
    <img src="images/qr.jpg" alt="QR Code">
</div>

<div class="form-container">
    <!-- QR Image Section -->

    <!-- Form Content Section -->
    <div class="form-content">
        <h2>Payment Gateway</h2>
        <form action="success" method="get">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="phno">Phone Number:</label>
            <input type="text" id="phno" name="phno" required>

            <label for="amount">Amount:</label>
            <!-- Dynamically set the amount passed from the checkout page -->
            <input type="number" id="amount" name="amount" value="<%= request.getParameter("amount") %>" required readonly>

            <button type="submit">Proceed To Pay</button>
        </form>
    </div>
</div>
</body>
</html>
