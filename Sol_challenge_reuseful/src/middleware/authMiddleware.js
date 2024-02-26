// src/middleware/authMiddleware.js

const jwt = require('jsonwebtoken');
const User = require('../models/userModel');

// Middleware function to authenticate user
const authenticateUser = async (req, res, next) => {
  // Extract token from request headers
  const token = req.header('Authorization');

  // Check if token is present
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  try {
    // Verify token
    const decoded = jwt.verify(token, process.env.JWT_SECRET);

    // Find user by ID
    const user = await User.findById(decoded.userId);

    // Check if user exists
    if (!user) {
      return res.status(401).json({ msg: 'Invalid token, user not found' });
    }

    // Attach user data to request object
    req.user = user;
    next();
  } catch (error) {
    console.error(error.message);
    res.status(401).json({ msg: 'Token is not valid' });
  }
};

module.exports = authenticateUser;
