// utils/logger.js

const morgan = require('morgan');
const fs = require('fs');
const path = require('path');

// Create a write stream (in append mode) to a log file
const accessLogStream = fs.createWriteStream(path.join(__dirname, 'access.log'), { flags: 'a' });

// Define a custom logger format
const loggerFormat = ':method :url :status :response-time ms - :res[content-length]';

// Create a configured instance of Morgan middleware
const loggerMiddleware = morgan(loggerFormat, { stream: accessLogStream });

module.exports = loggerMiddleware;
