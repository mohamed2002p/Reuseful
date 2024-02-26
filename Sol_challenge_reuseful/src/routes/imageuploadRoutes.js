// imageUploadRoutes.js

const express = require('express');
const router = express.Router();
const { uploadUserImage, uploadDriverProfileImage } = require('../controllers/imageUploadController');
const { authenticateUser, authenticateDriver } = require('../middleware/authMiddleware');

// Route to upload user profile picture
router.post('/user/profile-picture', authenticateUser, uploadUserImage);

// Route to upload driver profile image
router.post('/driver/profile-image', authenticateDriver, uploadDriverProfileImage);

// Route to get user profile picture
router.get('/user/profile-picture/:userId', async (req, res) => {
    try {
      const user = await User.findById(req.params.userId);
  
      if (!user || !user.profilePicture) {
        return res.status(404).json({ error: 'User or profile picture not found' });
      }
  
      // Serve profile picture file
      res.sendFile(path.join(__dirname, '..', user.profilePicture));
    } catch (error) {
      console.error('Error fetching user profile picture:', error);
      res.status(500).json({ error: 'Internal server error' });
    }
  });
  
  // Route to get driver profile image
  router.get('/driver/profile-image/:driverId', async (req, res) => {
    try {
      const driver = await Driver.findById(req.params.driverId);
  
      if (!driver || !driver.driverImage) {
        return res.status(404).json({ error: 'Driver or profile image not found' });
      }
  
      // Serve profile image file
      res.sendFile(path.join(__dirname, '..', driver.driverImage));
    } catch (error) {
      console.error('Error fetching driver profile image:', error);
      res.status(500).json({ error: 'Internal server error' });
    }
  });

module.exports = router;
