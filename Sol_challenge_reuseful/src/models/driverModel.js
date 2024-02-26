// src/models/driverModel.js

const mongoose = require('mongoose');

const driverSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  company: String,
  truckDetails: String,
  availability: Boolean
  // Add more fields as needed
});

const Driver = mongoose.model('Driver', driverSchema);

module.exports = Driver;