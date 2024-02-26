
// src/controllers/driverController.js

const Driver = require('../models/driverModel');

// Controller function to get all drivers
const getAllDrivers = async (req, res) => {
  try {
    const drivers = await Driver.find();
    res.json(drivers);
  } catch (error) {
    console.error(error);
    res.status(500).send('Server Error');
  }
};

// Controller function to add a new driver
const addDriver = async (req, res) => {
  try {
    const { name, company, truckDetails, availability } = req.body;
    const newDriver = new Driver({
      name,
      company,
      truckDetails,
      availability
    });
    await newDriver.save();
    res.status(201).json(newDriver);
  } catch (error) {
    console.error(error);
    res.status(500).send('Server Error');
  }
};

// Controller function to update a driver
const updateDriver = async (req, res) => {
  try {
    const { id } = req.params;
    const { name, company, truckDetails, availability } = req.body;
    const updatedDriver = await Driver.findByIdAndUpdate(id, {
      name,
      company,
      truckDetails,
      availability
    }, { new: true });
    if (!updatedDriver) {
      return res.status(404).json({ msg: 'Driver not found' });
    }
    res.json(updatedDriver);
  } catch (error) {
    console.error(error);
    res.status(500).send('Server Error');
  }
};

// Controller function to delete a driver
const deleteDriver = async (req, res) => {
  try {
    const { id } = req.params;
    const deletedDriver = await Driver.findByIdAndDelete(id);
    if (!deletedDriver) {
      return res.status(404).json({ msg: 'Driver not found' });
    }
    res.json({ msg: 'Driver deleted successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).send('Server Error');
  }
};

module.exports = {
  getAllDrivers,
  addDriver,
  updateDriver,
  deleteDriver
};
