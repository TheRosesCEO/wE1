<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Comprehensive Gaming Profile</title>
  <style>
    /* General Styling */
    body {
      font-family: 'Orbitron', sans-serif;
      background: linear-gradient(90deg, #0d0d1e, #1b1b2f);
      color: #fff;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    /* Profile Container */
    .profile-container {
      width: 90%;
      max-width: 1000px;
      background: rgba(15, 15, 30, 0.95);
      border: 3px solid #00ffcc;
      border-radius: 15px;
      box-shadow: 0 0 20px #00ffcc, 0 0 30px rgba(0, 255, 204, 0.5);
      padding: 20px;
      position: relative;
    }

    .profile-header {
      display: flex;
      align-items: center;
      gap: 20px;
    }
    .profile-header img {
      width: 140px;
      height: 140px;
      border-radius: 50%;
      border: 3px solid #ff0075;
      box-shadow: 0 0 15px #ff0075, 0 0 20px rgba(255, 0, 117, 0.5);
    }
    .profile-header h1 {
      font-size: 2.5rem;
      color: #00ffcc;
      text-shadow: 0 0 10px #00ffcc;
    }
    .profile-header .edit-icon {
      margin-left: auto;
      background: #ff0075;
      color: #fff;
      border: none;
      border-radius: 50%;
      padding: 10px;
      cursor: pointer;
      box-shadow: 0 0 10px #ff0075;
    }

    /* Stats Section */
    .profile-stats, .profile-details {
      margin-top: 20px;
      display: flex;
      justify-content: space-between;
      gap: 10px;
      text-align: center;
      flex-wrap: wrap;
    }

    .stat {
      flex: 1;
      background: rgba(0, 255, 204, 0.1);
      border: 2px solid #00ffcc;
      border-radius: 10px;
      padding: 10px;
      box-shadow: 0 0 10px rgba(0, 255, 204, 0.5);
      margin: 10px;
    }
    .stat h3 {
      color: #ff0075;
      font-size: 1.2rem;
    }
    .stat p {
      font-size: 1.8rem;
      color: #00ffcc;
    }

    /* Friends List & Achievements */
    .friends-list, .achievements, .player-bio {
      margin-top: 30px;
      text-align: left;
    }
    h2 {
      color: #ff0075;
      font-size: 1.5rem;
      text-shadow: 0 0 10px #ff0075;
    }

    ul {
      list-style: none;
      padding: 0;
    }

    li {
      background: rgba(255, 0, 255, 0.1);
      border: 1px solid #ff0075;
      border-radius: 5px;
      padding: 10px;
      margin-bottom: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    /* Messaging Section */
    .messages {
      margin-top: 30px;
    }

    .message-box {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .message-box input {
      flex: 1;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #00ffcc;
    }
    .message-box button {
      background: #ff0075;
      color: #fff;
      border: none;
      border-radius: 5px;
      padding: 10px 15px;
      cursor: pointer;
    }
    .message-box button:hover {
      background: #ff00ff;
    }

    .chat-history {
      margin-top: 10px;
      max-height: 150px;
      overflow-y: auto;
      border: 1px solid #00ffcc;
      border-radius: 5px;
      padding: 10px;
      background: rgba(0, 255, 204, 0.1);
    }

    .chat-history div {
      margin-bottom: 10px;
    }
    .chat-history div span {
      color: #00ffcc;
    }
  </style>
</head>
<body>
  <div class="profile-container">
    <!-- Profile Header -->
    <div class="profile-header">
      <img id="profile-pic" src="https://via.placeholder.com/140" alt="Profile Picture">
      <div>
        <h1 id="username">ProGamer42</h1>
        <p id="email">progamer42@example.com</p>
      </div>
      <button class="edit-icon" onclick="editProfile()">✎</button>
    </div>

    <!-- Stats Section -->
    <div class="profile-stats">
      <div class="stat">
        <h3>Kills</h3>
        <p id="kills">2450</p>
      </div>
      <div class="stat">
        <h3>Wins</h3>
        <p id="wins">150</p>
      </div>
      <div class="stat">
        <h3>Accuracy</h3>
        <p id="accuracy">67%</p>
      </div>
      <div class="stat">
        <h3>Hours Played</h3>
        <p id="hours">320</p>
      </div>
    </div>

    <!-- Biography -->
    <div class="player-bio">
      <h2>Player Bio</h2>
      <p>Hi, I'm ProGamer42, a competitive player with a love for FPS games. My playstyle is aggressive, and I specialize in sniper gameplay.</p>
    </div>

    <!-- Friends List -->
    <div class="friends-list">
      <h2>Friends List</h2>
      <ul id="friends">
        <li>Friend1 <button onclick="removeItem(this)">Remove</button></li>
        <li>Friend2 <button onclick="removeItem(this)">Remove</button></li>
      </ul>
      <button onclick="addFriend()">Add Friend</button>
    </div>

    <!-- Achievements -->
    <div class="achievements">
      <h2>Achievements</h2>
      <ul>
        <li>Top 10 in "Winter Clash Tournament"</li>
        <li>Won "Sniper King" Trophy</li>
        <li>Completed "Battle Royale Mastery"</li>
      </ul>
    </div>

    <!-- Messages -->
    <div class="messages">
      <h2>Messages</h2>
      <div class="message-box">
        <input type="text" id="messageInput" placeholder="Send a message...">
        <button onclick="sendMessage()">Send</button>
      </div>
      <div class="chat-history" id="chatHistory"></div>
    </div>
  </div>

  <script>
    function editProfile() {
      const username = prompt("Enter new username:", document.getElementById("username").innerText);
      const email = prompt("Enter new email:", document.getElementById("email").innerText);
      if (username) document.getElementById("username").innerText = username;
      if (email) document.getElementById("email").innerText = email;
    }

    function addFriend() {
      const friend = prompt("Enter your friend's name:");
      if (friend) {
        const ul = document.getElementById("friends");
        const li = document.createElement("li");
        li.innerHTML = `${friend} <button onclick="removeItem(this)">Remove</button>`;
        ul.appendChild(li);
      }
    }

    function removeItem(button) {
      button.parentElement.remove();
    }

    function sendMessage() {
      const input = document.getElementById("messageInput");
      if (input.value.trim() !== "") {
        const chat = document.getElementById("chatHistory");
        const msg = `<div><span>You:</span> ${input.value}</div>`;
        chat.innerHTML += msg;
        input.value = "";
      }
    }
  </script>
</body>
</html>
