// Scheduling Model (schedulingModel.js)
const mongoose = require('mongoose');

const schedulingSchema = new mongoose.Schema({
  driver: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Driver',
    required: true
  },
  user: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  appointmentDateTime: {
    type: Date,
    required: true
  },
  status: {
    type: String,
    enum: ['pending', 'confirmed', 'canceled'],
    default: 'pending'
  }
});

const Scheduling = mongoose.model('Scheduling', schedulingSchema);

module.exports = Scheduling;
