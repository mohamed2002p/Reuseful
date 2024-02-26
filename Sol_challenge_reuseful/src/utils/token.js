// src/utils/tokens.js

const jwt = require('jsonwebtoken');

// Function to generate JWT access token
const generateAccessToken = (userId, role) => {
  // Create JWT payload with user ID and role
  const payload = {
    userId,
    role
  };

  // Sign JWT token with a secret key and set expiration time
  return jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: '1h' });
};

module.exports = { generateAccessToken };
