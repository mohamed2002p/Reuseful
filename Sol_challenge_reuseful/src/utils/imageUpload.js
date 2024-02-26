const upload = require('./uploadMiddleware'); // Assuming uploadMiddleware.js is in the same directory
const User = require('../models/userModel');
const Driver = require('../models/driverModel');

const handleUploadError = (res, error) => {
  console.error(error);
  res.status(400).json({ error: 'Error uploading file' });
};

// Middleware to handle user profile picture upload
const uploadUserProfilePicture = upload.single('profilePicture');
const uploadUserImage = async (req, res) => {
  try {
    // Check if user is authenticated
    if (!req.user) {
      return res.status(401).json({ error: 'Unauthorized' });
    }

    uploadUserProfilePicture(req, res, async (err) => {
      if (err) {
        return handleUploadError(res, err);
      }

      if (!req.file) {
        return res.status(400).json({ error: 'No file uploaded' });
      }

      // Check if user is authorized to upload profile picture
      if (req.user.role !== 'user') {
        return res.status(403).json({ error: 'Forbidden' });
      }

      req.user.profilePicture = req.file.path;
      await req.user.save();

      res.status(200).json({ message: 'Profile picture uploaded successfully' });
    });
  } catch (error) {
    handleUploadError(res, error);
  }
};

// Middleware to handle driver image upload
const uploadDriverImage = upload.single('driverImage');
const uploadDriverProfileImage = async (req, res) => {
  try {
    // Check if driver is authenticated
    if (!req.driver) {
      return res.status(401).json({ error: 'Unauthorized' });
    }

    uploadDriverImage(req, res, async (err) => {
      if (err) {
        return handleUploadError(res, err);
      }

      if (!req.file) {
        return res.status(400).json({ error: 'No file uploaded' });
      }

      // Check if driver is authorized to upload profile image
      if (req.driver.role !== 'driver') {
        return res.status(403).json({ error: 'Forbidden' });
      }

      req.driver.driverImage = req.file.path;
      await req.driver.save();

      res.status(200).json({ message: 'Driver image uploaded successfully' });
    });
  } catch (error) {
    handleUploadError(res, error);
  }
};

module.exports = { uploadUserImage, uploadDriverProfileImage };
