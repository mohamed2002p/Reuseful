// redeemRewardsController.js

const User = require('../models/userModel');

const redeemReward = async (req, res) => {
  try {
    const { userId, company, discount } = req.body;

    // Find the user by ID
    const user = await User.findById(userId);

    if (!user) {
      return res.status(404).json({ msg: 'User not found' });
    }

    // Check if the user has enough points to redeem the reward
    if (user.points < discount) {
      return res.status(400).json({ msg: 'Insufficient points to redeem this reward' });
    }

    // Deduct points from the user's account
    user.points -= discount;

    // Add the reward to the user's rewards list
    user.rewards.push({ company, discount });

    // Save the updated user data
    await user.save();

    res.status(200).json({ msg: 'Reward redeemed successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).send('Server Error');
  }
};

module.exports = { redeemReward };
