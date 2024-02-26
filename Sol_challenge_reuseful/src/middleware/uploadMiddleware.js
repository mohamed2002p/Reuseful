const multer = require('multer');
const sharp = require('sharp'); // Image processing library
const path = require('path');

// Set storage engine
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './uploads/'); // Destination folder
  },
  filename: function (req, file, cb) {
    const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9); // Unique suffix
    const ext = path.extname(file.originalname); // Extract file extension
    cb(null, file.fieldname + '-' + uniqueSuffix + ext); // Construct filename
  }
});

// File filter function
const fileFilter = (req, file, cb) => {
  // Check file type
  if (file.mimetype.startsWith('image/')) {
    cb(null, true); // Accept file
  } else {
    cb(new Error('Only images are allowed')); // Reject file
  }
};

// Initiate upload
const upload = multer({
  storage: storage,
  fileFilter: fileFilter,
  limits: {
    fileSize: 1024 * 1024 * 5 // Limit file size to 5MB
  }
});

// Middleware for image processing
const processImage = (req, res, next) => {
  if (!req.file) {
    return next(); // Skip if no file uploaded
  }

  // Resize image to 500x500 pixels
  sharp(req.file.path)
    .resize(500, 500)
    .toBuffer()
    .then(data => {
      req.file.buffer = data; // Update request with resized image buffer
      next();
    })
    .catch(error => {
      console.error('Image processing error:', error);
      res.status(500).json({ error: 'Image processing error' });
    });
};

module.exports = { upload, processImage };
