<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .success-message {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 450px;
            animation: fadeIn 1s ease-in-out;
        }
        .success-icon-container {
            display: inline-flex;
            justify-content: center;
            align-items: center;
            width: 80px;
            height: 80px;
            background-color: #28a745;
            border-radius: 50%;
            margin: 0 auto 20px auto;
            animation: popIn 0.5s ease-in-out;
        }
        .success-icon {
            font-size: 40px;
            color: #fff;
        }
        .success-message h2 {
            color: #28a745;
            font-size: 24px;
        }
        .success-message p {
            margin-top: 10px;
            color: #555;
            line-height: 1.6;
        }
        .success-message a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .success-message a:hover {
            background-color: #0056b3;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        @keyframes popIn {
            from {
                transform: scale(0);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="success-message">
        <!-- Green Circle with Checkmark -->
        <div class="success-icon-container">
            <div class="success-icon">✔</div>
        </div>
        <h2>Order Successfully Placed!</h2>
        <p>Thank you for your payment. Your transaction was successfully completed, and your order is being processed. <br> 
           You will receive an email confirmation shortly with the order details.</p>
        <p>We appreciate your business and look forward to serving you again!</p>
        <a href="login_user">Go Back to Home</a>
    </div>
</body>
</html>
