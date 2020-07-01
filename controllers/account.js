const express = require("express");
const router = express.Router();

router.get("/signup", (req, res) => {
    res.render("account/signup", {
      mainid: "login"
    });
  });

router.get("/login", (req, res) => {
    res.render("account/login", {
      mainid: "login"
    });
  });
  
router.get("/setting", (req, res) => {
    res.render("account/setting", {
      mainid: "main-box"
    });
  });

  module.exports = router;