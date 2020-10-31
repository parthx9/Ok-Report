const mongoose = require("mongoose");
const { ObjectId } = mongoose.Schema;
const { Schema } = mongoose;

const doctorSchema = new Schema(
  {
    name: {
      type: String,
      required: true,
    },
    email: {
      type: String,
      required: true,
    },
    password: {
      type: String,
      required: true,
    },
    description: {
      type: String,
      required: true,
    },
    hospital: {
      type: String,
      required: true,
    },
    patientDetails: [
      {
        name: {
          type: String,
          required: true,
        },
        age: {
          type: Number,
        },
        gender: {
          type: String,
        },
        location: {
          type: String,
          required: true,
        },
        lowerBloodPressure: {
          type: Number,
        },
        higherBloodPressure: {
          type: Number,
        },
        pulse: {
          type: Number,
        },
        heartRate: {
          type: Number,
        },
        bodyTemperature: {
          type: Number,
        },
        spo2: {
          type: Number,
        },
        pao2: {
          type: Number,
        },
      },
    ],
  },
  {
    timestamps: true,
  }
);

module.exports = mongoose.model("Doctor", doctorSchema);
