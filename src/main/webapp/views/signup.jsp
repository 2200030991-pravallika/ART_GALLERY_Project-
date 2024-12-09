<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Art Gallery Registration</title>
    <style>
        @keyframes bounceIn {
            0% {
                transform: scale(0.5);
                opacity: 0;
            }
            60% {
                transform: scale(1.05);
                opacity: 1;
            }
            80% {
                transform: scale(0.95);
            }
            100% {
                transform: scale(1);
            }
        }

        @keyframes bounceButton {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('<%= request.getContextPath() %>/images/reback.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .registration-container {
            background-color: rgba(255, 255, 255, 0.9);
            width: 400px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            animation: bounceIn 0.8s ease; /* Bounce in animation on load */
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 15px;
        }

        .form-group label {
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
            font-size: 16px;
        }

        .form-group input,
        .form-group select {
            padding: 7px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            width: 100%;
        }

        .form-group input:focus,
        .form-group select:focus {
            outline: none;
            border-color: #4CAF50;
        }

        .example-message {
            color: #555;
            font-size: 12px;
            margin-top: 5px;
        }

        .register-btn {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            border: none;
            border-radius: 4px;
            background-color: #333;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-align: center;
        }

        .register-btn:hover {
            background-color: #575757;
            animation: bounceButton 0.3s ease; /* Bounce effect on hover */
        }

        .error-message {
            color: red;
            font-size: 12px;
            display: none;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h2>Register</h2>
        <form action="<%= request.getContextPath() %>/adddetails" method="POST" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required pattern="^[A-Za-z\s]+$">
                <div class="example-message">e.g. John Doe</div>
                <div class="error-message" id="name-error">Please enter a valid name (letters and spaces only).</div>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="tel" id="phone" name="phone" required pattern="^\d{10}$">
                <div class="example-message">e.g. 1234567890</div>
                <div class="error-message" id="phone-error">Please enter a valid 10-digit phone number.</div>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|in)$">
                <div class="example-message">e.g. example@example.com/.in</div>
                <div class="error-message" id="email-error">Please enter a valid email address (example@example.com/.in).</div>
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>
                <select id="gender" name="gender" required>
                    <option value="">Select</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
                <div class="error-message" id="gender-error">Please select a gender.</div>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$">
                <div class="example-message">e.g. Password123!</div>
                <div class="error-message" id="password-error">Password must contain at least 6 characters, one uppercase letter, one number, and one special character.</div>
            </div>

            <div class="form-group">
                <label for="confirm-password">Re-enter Password</label>
                <input type="password" id="confirm-password" name="confirmPassword" required>
                <div class="example-message">e.g. Password123!</div>
                <div class="error-message" id="confirm-password-error">Passwords do not match.</div>
            </div>

            <button type="submit" class="register-btn">Register</button>
        </form>
    </div>

    <script>
        function validateForm() {
            let isValid = true;

            // Clear previous error messages
            document.querySelectorAll('.error-message').forEach(function (element) {
                element.style.display = 'none';
            });

            // Validate Name
            const name = document.getElementById('name').value;
            const nameRegex = /^[A-Za-z\s]+$/;
            if (!nameRegex.test(name)) {
                document.getElementById('name-error').style.display = 'block';
                isValid = false;
            }

            // Validate Phone
            const phone = document.getElementById('phone').value;
            const phoneRegex = /^\d{10}$/;
            if (!phoneRegex.test(phone)) {
                document.getElementById('phone-error').style.display = 'block';
                isValid = false;
            }

            // Validate Email
            const email = document.getElementById('email').value;
            const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|in)$/;
            if (!emailRegex.test(email)) {
                document.getElementById('email-error').style.display = 'block';
                isValid = false;
            }

            // Validate Gender
            const gender = document.getElementById('gender').value;
            if (gender === "") {
                document.getElementById('gender-error').style.display = 'block';
                isValid = false;
            }

            // Validate Password
            const password = document.getElementById('password').value;
            const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/;
            if (!passwordRegex.test(password)) {
                document.getElementById('password-error').style.display = 'block';
                isValid = false;
            }

            // Validate Confirm Password
            const confirmPassword = document.getElementById('confirm-password').value;
            if (confirmPassword !== password) {
                document.getElementById('confirm-password-error').style.display = 'block';
                isValid = false;
            }

            return isValid;
        }

        // Clear form inputs on page load
        window.onload = function() {
            document.querySelector("form").reset();
        };
    </script>
</body>
</html>
