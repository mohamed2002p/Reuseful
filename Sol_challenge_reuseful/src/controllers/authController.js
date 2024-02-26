// src/controllers/authController.js

const { validationResult } = require('express-validator');
const jwt = require('jsonwebtoken');
const User = require('../models/userModel');
const { generateAccessToken } = require('../utils/tokens');

// Controller function for user registration (signup)
const signup = async (req, res) => {
  // Check for validation errors
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  try {
    // Check if user already exists with the provided email
    let user = await User.findOne({ email: req.body.email });
    if (user) {
      return res.status(400).json({ errors: [{ msg: 'User already exists' }] });
    }

    // Create a new user instance
    user = new User({
      name: req.body.name,
      email: req.body.email,
      password: req.body.password
    });

    // Save the user to the database
    await user.save();

    // Generate JWT token
    const token = generateAccessToken(user._id, user.role);

    // Respond with the token
    res.status(200).json({ token });
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Server Error');
  }
};

// Controller function for user login
const login = async (req, res) => {
  const { email, password } = req.body;

  try {
    // Check if user exists
    const user = await User.findOne({ email });
    if (!user) {
      return res.status(401).json({ errors: [{ msg: 'Invalid credentials' }] });
    }

    // Validate password
    const isMatch = await user.comparePassword(password);
    if (!isMatch) {
      return res.status(401).json({ errors: [{ msg: 'Invalid credentials' }] });
    }

    // Generate JWT token
    const token = generateAccessToken(user._id, user.role);

    // Respond with the token
    res.status(200).json({ token });
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Server Error');
  }
};

module.exports = { signup, login };
