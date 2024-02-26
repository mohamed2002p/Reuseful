// middleware/errorHandler.js

const errorHandler = (err, req, res, next) => {
    // Log the error stack trace
    console.error(err.stack);
  
    // Default status code and error message
    let statusCode = 500;
    let errorMessage = 'Internal Server Error';
  
    // Set error message based on environment
    if (process.env.NODE_ENV === 'development') {
      // Development environment
      errorMessage = err.message || errorMessage; // Use error message if available
    }
  
    // Customize error messages for specific error types
    if (err instanceof SyntaxError && err.status === 400 && 'body' in err) {
      // JSON parsing error
      errorMessage = 'Invalid JSON data';
      statusCode = 400;
    } else if (err.name === 'ValidationError') {
      // Mongoose validation error
      errorMessage = 'Validation Error';
      statusCode = 400;
    }
    
    // Send error response
    res.status(statusCode).json({ error: errorMessage });
  };
  
  module.exports = errorHandler;
  