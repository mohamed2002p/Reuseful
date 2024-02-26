// src/controllers/schedulingController.js

const Scheduling = require('../models/schedulingModel');
const Driver = require('../models/driverModel');

// Controller function to create a new appointment
const createAppointment = async (req, res) => {
  try {
    const { driverId, appointmentDateTime } = req.body;
    
    // Create a new appointment
    const newAppointment = new Scheduling({
      driver: driverId,
      user: req.user.id, // Assuming user ID is stored in req.user after authentication
      appointmentDateTime
    });
    await newAppointment.save();
    
    res.status(201).json(newAppointment);
  } catch (error) {
    console.error(error);
    res.status(500).send('Server Error');
  }
};

// Controller function to fetch available appointments
const fetchAvailableAppointments = async (req, res) => {
  try {
    const { driverId, date } = req.query;
    
    // Query for appointments for the specified driver on the given date
    const existingAppointments = await Scheduling.find({
      driver: driverId,
      appointmentDateTime: { $gte: new Date(date), $lt: new Date(date + 'T23:59:59') }
    });
    
    // Fetch driver's availability from the database
    const driverAvailability = await Driver.findById(driverId, 'availability');
    
    // Filter out unavailable slots based on existing appointments and driver availability
    const availableSlots = driverAvailability.availability.filter(slot => {
      const slotTime = new Date(slot);
      
      // Check if the slot is not already booked and falls within the specified date
      return !existingAppointments.some(appointment => {
        const appointmentTime = new Date(appointment.appointmentDateTime);
        return appointmentTime.getTime() === slotTime.getTime();
      });
    });
    
    // Return available slots to the client
    res.json(availableSlots);
  } catch (error) {
    console.error(error);
    res.status(500).send('Server Error');
  }
};

// Controller function to update appointment status
const updateAppointmentStatus = async (req, res) => {
  try {
    const { id } = req.params;
    const { status } = req.body;
    
    // Find the appointment by ID and update its status
    const appointment = await Scheduling.findByIdAndUpdate(id, { status }, { new: true });
    
    if (!appointment) {
      return res.status(404).json({ msg: 'Appointment not found' });
    }
    
    res.json(appointment);
  } catch (error) {
    console.error(error);
    res.status(500).send('Server Error');
  }
};

module.exports = {
  createAppointment,
  fetchAvailableAppointments,
  updateAppointmentStatus
};
