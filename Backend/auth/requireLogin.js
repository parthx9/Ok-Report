const jwt = require("jsonwebtoken");
const Doctor = require("../Schema.js/doctor");

module.exports = (req, res, next) => {
  const { authorization } = req.headers;

  if (!authorization) {
    return res.json({
      err: "Please provide a token",
    });
  }

  try {
    token = authorization.replace("Bearer ", "");
    const decoded = jwt.verify(token, process.env.Secret);
    Doctor.findById(decoded._id).then(function () {
      req.doctor = decoded;
      next();
    });
  } catch (err) {
    if (err) {
      console.log(err);
      res.status(401).json({ err: "Token is not valid" });
    }
  }
};
