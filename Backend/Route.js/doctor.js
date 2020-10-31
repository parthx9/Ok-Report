const express = require("express");
const router = express.Router();
const Doctor = require("../Schema.js/doctor");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const requireLogin = require("../auth/requireLogin");
const { body, validationResult } = require("express-validator");
const mongoose = require("mongoose");
router.post(
  "/signup",
  [
    body("name", "Kindly provide a name").not().isEmpty(),
    body("description", "Kindly provide a description").not().isEmpty(),
    body("hospital", "Kindly provide your hospital").not().isEmpty(),
    body("email", "Kindly provide an email").isEmail(),
    body(
      "password",
      "Kindly enter a password atleast 6 characters long"
    ).isLength({ min: 6 }),
  ],
  (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors });
    }

    const doctor = new Doctor(req.body);
    var salt = bcrypt.genSaltSync(10);
    var hash = bcrypt.hashSync(doctor.password, salt);
    // USING HASHED PASSWORD FOR DATABASE
    doctor.password = hash;
    // SAVING THE TEACHER TO THE DATABASE
    doctor.save((err, doctor) => {
      if (err) {
        console.log(err);
        return res.status(400).json({
          err: "NOT able to save the doctor to the database",
        });
      }
      return res.json({
        name: doctor.name,
        email: doctor.email,
        description: doctor.description,
        hospital: doctor.hospital,
        password: doctor.password,
      });
    });
  }
);

router.post(
  "/signin",
  [
    [
      body("email", "Kindly provide us an appropriate email address").isEmail(),
      body("password", "Kindly provide us a password").isLength({ min: 6 }),
    ],
  ],
  (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors });
    }
    const { email, password } = req.body;
    Doctor.findOne({ email }, function (err, doctor) {
      if (!doctor) {
        return res.status(400).json({
          err: "Email ID does not exist",
        });
      }
      bcrypt
        .compare(password, doctor.password)
        .then((isMatch) => {
          if (!isMatch) {
            return res.status(400).json({
              err: "Email and Password does not match",
            });
          } else {
            const token = jwt.sign(
              {
                _id: doctor._id,
                expiresIn: 360000,
              },
              process.env.Secret
            );
            return res.json({
              token,
              doctor,
            });
          }
        })
        .catch((err) => {
          console.log(err);
        });
    });
  }
);

// creating patients
router.post(
  "/createpatient",
  [
    body("name", "Kindly provide a name").not().isEmpty(),
    body("location", "Kindly provide the location of the patient")
      .not()
      .isEmpty(),
  ],
  requireLogin,
  (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors });
    }

    Doctor.findByIdAndUpdate(
      req.doctor._id,
      {
        $push: {
          patientDetails: req.body,
        },
      },
      {
        new: true,
        runValidators: true,
      }
    )
      .then((doctor) => {
        return res.json({
          doctor,
        });
      })
      .catch((err) => {
        console.log(err);
      });
  }
);

// ROUTE TO ADD/UPDATE PATIENT DETAILS
router.post("/updatepatient", requireLogin, (req, res) => {
  const {
    _id,
    name,
    gender,
    location,
    lowerBloodPressure,
    higherBloodPressure,
    pulse,
    heartRate,
    bodyTemperature,
    age,
    spo2,
    pao2,
  } = req.body;
  const patientData = {
    _id,
    name,
    gender,
    location,
    lowerBloodPressure,
    higherBloodPressure,
    pulse,
    heartRate,
    bodyTemperature,
    age,
    spo2,
    pao2,
  };
  Doctor.updateOne(
    {
      _id: mongoose.Types.ObjectId(req.doctor._id),
      "patientDetails._id": mongoose.Types.ObjectId(req.body._id),
    },
    {
      $set: {
        "patientDetails.$": req.body,
      },
    }
  ).then((doctor) => {
    return res.json({
      doctor,
    });
  });
});

// GET PATIENT DETAILS BY HIS DOCTOR AND HIS ID
// THIS IS A POST REQUEST BECAUSE BODY PARSER IN FRONTEND DOES NOT WORK IN GET REQUESTS
router.post("/getpatient", (req, res) => {
  const doctorId = req.body.doctorId;
  const patientId = req.body.patientId;
  console.log(req.body);
  Doctor.findById(req.body.doctorId)
    .then((doctor) => {
      index = doctor.patientDetails.findIndex(
        (patientDetails) => patientDetails._id == req.body.patientId
      );
      doctor = doctor.patientDetails[index];
      return res.json({
        doctor,
      });
    })
    .catch((err) => {
      console.log(err);
    });
});

router.post("/getdoctordetails", (req, res) => {
  Doctor.findById(req.body._id).then((doctor) => {
    return res.json({
      doctor,
    });
  });
});

module.exports = router;
