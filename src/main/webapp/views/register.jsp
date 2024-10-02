<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
        /* Basic Reset */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* Body Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }

        /* Container for the Form */
        .container {
            background-color: #ffffff;
            padding: 30px;
            margin: auto;
            width: 100%;
            max-width: 500px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        /* Form Heading */
        .container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
        }

        /* Input Fields */
        .container label {
            display: block;
            margin-bottom: 5px;
            color: #555555;
        }

        .container input[type="text"],
        .container input[type="email"],
        .container input[type="password"],
        .container input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            transition: border-color 0.3s;
        }

        /* Focus State for Inputs */
        .container input[type="text"]:focus,
        .container input[type="email"]:focus,
        .container input[type="password"]:focus,
        .container input[type="tel"]:focus {
            border-color: #66afe9;
            outline: none;
        }

        /* Submit Button */
        .container button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* Hover Effect for Button */
        .container button:hover {
            background-color: #45a049;
        }

        /* Error Message Styling */
        .error {
            color: red;
            margin-bottom: 15px;
            text-align: center;
        }

        /* Success Message Styling */
        .success {
            color: green;
            margin-bottom: 15px;
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>User Registration</h2>

        <!-- Error Message Placeholder -->
        <div id="errorMessage" class="error" style="display: none;"></div>

        <!-- Success Message Placeholder -->
        <div id="successMessage" class="success" style="display: none;"></div>

        <!-- Registration Form -->
        <form id="registrationForm" action="/registerform" method="post">
            <!-- Name Field -->
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            
            <!-- Password Field -->
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Create a password" required minlength="6">
            
             <!-- Email Field -->
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email address" required>
            

            <!-- Phone Number Field -->
            <label for="phnno">Phone Number:</label>
            <input type="tel" id="phnno" name="phnno" placeholder="Enter your 10-digit phone number" pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" required>

            <!-- Submit Button -->
            <button type="submit">Register</button>
        </form>
    </div>

    <!-- Optional JavaScript for Client-Side Validation -->
    <script>
        // Wait for the DOM to load
        document.addEventListener('DOMContentLoaded', function () {
            const form = document.getElementById('registrationForm');
            const errorMessage = document.getElementById('errorMessage');
            const successMessage = document.getElementById('successMessage');

            form.addEventListener('submit', function (e) {
                // Clear previous messages
                errorMessage.style.display = 'none';
                successMessage.style.display = 'none';
                errorMessage.textContent = '';
                successMessage.textContent = '';

                // Perform custom validation if needed
                // Example: Check if password contains at least one number
                const password = form.password.value;
                const passwordRegex = /^(?=.*\d).{6,}$/;
                if (!passwordRegex.test(password)) {
                    e.preventDefault();
                    errorMessage.textContent = 'Password must be at least 6 characters long and contain at least one number.';
                    errorMessage.style.display = 'block';
                    return;
                }

                // Optionally, you can display a success message before submission
                // Uncomment the lines below if you want to show a message before actually submitting
                /*
                e.preventDefault();
                successMessage.textContent = 'Registration successful!';
                successMessage.style.display = 'block';
                form.reset();
                */
            });
        });
    </script>

</body>
</html>
