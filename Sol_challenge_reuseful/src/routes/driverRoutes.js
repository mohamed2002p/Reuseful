// src/routes/driverRoutes.js

const express = require('express');
const router = express.Router();
const driverController = require('../controllers/driverController');

// Route to get all drivers
router.get('/', driverController.getAllDrivers);

// Route to add a new driver
router.post('/', driverController.addDriver);

// Route to update a driver
router.put('/:id', driverController.updateDriver);

// Route to delete a driver
router.delete('/:id', driverController.deleteDriver);

module.exports = router;
