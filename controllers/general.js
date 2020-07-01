const express = require("express");
const router = express.Router();



router.get("/", (req, res) => {

    res.render("general/home", {
      mainid: "main-box"
    });
});

router.get("/contactus", (req, res) => {
    res.render("general/contactus", {
      mainid: "login"
    });
});

router.post("/contactus", (req, res) => {
    res.render("general/contactus", {
      mainid: "login"
    });
  });

router.get("/feedback", (req, res) => {
    res.render("general/feedback", {
      mainid: "login"
    });
  });

  module.exports = router;