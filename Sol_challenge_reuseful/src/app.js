// src/app.js

const express = require('express');
const cors = require('cors');
const mongoose = require('mongoose');
const errorHandler = require('./middleware/errorHandler.js'); // Import error handling middleware
const loggerMiddleware = require('./utils/logger');

require('dotenv').config();

const authRoutes = require('./routes/authRoutes');
const itemRoutes = require('./routes/itemRoutes'); // Import item routes

const app = express();

// Connect to MongoDB
mongoose.connect(process.env.MONGODB_URI, {
})
.then(() => console.log('MongoDB connected'))
.catch(err => console.error(err));

// Middleware
app.use(cors());
app.use(express.json());
app.use(loggerMiddleware);

// Routes
app.use('/api/auth', authRoutes);
app.use('/api/items', itemRoutes); // Mount item routes

// Error handling middleware
app.use(errorHandler);

module.exports = app;
