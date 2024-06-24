<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ALEXIA WEB FLOOD</title>
    <script src="https://cdn.jsdelivr.net/npm/tesseract.js@2.1.1/dist/tesseract.min.js"></script>
   
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            width: 100%;
        }
        .flex-container {
            display: flex;
            gap: 20px;
        }
        .column {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        #chatbox {
            width: 60%;
            height: 400px;
            border: 1px solid #ccc;
            padding: 10px;
            overflow-y: auto;
            resize: both;
        }
        .user-list {
            width: 200px;
        }
        .chat-controls {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .chat-container {
            display: flex;
        }
        .green {
            color: green;
        }
        .darkgreen {
            color: darkgreen;
        }
        .role-creator {
            color: red;
        }
        .role-owner {
            color: blue;
        }
        .role-admin {
            color: purple;
        }
        .role-member {
            color: black;
        }
        .role-none {
            color: grey;
        }
        .captcha-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="column">
            <div class="flex-container">
                <div>
                    <label for="username">Username:</label>
                    <input type="text" id="username">
                </div>
                <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password">
                </div>
                <button id="loginButton">Login</button>
            </div>

            <div id="status"></div>

            <div class="flex-container">
                <div>
                    <label for="room">Room:</label>
                    <input type="text" id="room">
                    <button id="joinRoomButton">Join Room</button>
                    <button id="leaveRoomButton">Leave Room</button>
                    <select id="roomListbox"></select>
                    <div id="joinlog"></div>
                </div>
            </div>
            
            <div class="chat-container">
                <div id="chatbox"></div>
                <div class="user-list">
                    <div id="count"></div>
                    <select id="userListbox" size="10" multiple></select>
                    <ul id="roomlistbox"></ul>
                </div>
            </div>

            <div class="chat-controls">
                <input type="text" id="message" placeholder="Type your message here...">
                <button id="sendMessageButton">Send Message</button>
            </div>

            <div>
                <input type="text" id="target" placeholder="Type your target username here...">
            </div>

            <div>
                <label for="debugBox">Debug Messages:</label>
                <textarea id="debugBox" rows="10" cols="50" readonly></textarea>
            </div>
        </div>
    </div>

    <!-- Link to your JavaScript file -->
    <script src="flood.js"></script>
</body>
</html>