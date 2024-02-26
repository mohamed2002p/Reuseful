// cleanupImages.js

const fs = require('fs');
const path = require('path');
const User = require('../models/userModel');
const Driver = require('../models/driverModel');

// Function to delete unused or expired images
const cleanupImages = async () => {
  try {
    // Get list of all uploaded images
    const allImages = await Promise.all([
      User.find({ profilePicture: { $exists: true, $ne: null } }).distinct('profilePicture'),
      Driver.find({ driverImage: { $exists: true, $ne: null } }).distinct('driverImage')
    ]);

    const uploadedImages = allImages.flat();

    // Define expiration period for images (e.g., 30 days)
    const expirationPeriod = 30 * 24 * 60 * 60 * 1000; // 30 days in milliseconds
    const currentTime = Date.now();

    // Iterate over each uploaded image
    for (const imagePath of uploadedImages) {
      // Get file stats to check creation time
      const stats = fs.statSync(imagePath);

      // Check if image is expired
      if (currentTime - stats.birthtimeMs > expirationPeriod) {
        // Delete expired image
        fs.unlinkSync(imagePath);
        console.log(`Deleted expired image: ${imagePath}`);
      }
    }

    console.log('Image cleanup completed');
  } catch (error) {
    console.error('Image cleanup error:', error);
  }
};

// Run cleanup function periodically (e.g., once a day)
setInterval(cleanupImages, 24 * 60 * 60 * 1000); // Run every 24 hours

// Initial cleanup on startup
cleanupImages();
