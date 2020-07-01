const express = require("express");
const router = express.Router();

router.get("/estimates", (req, res) => {
  res.render("accounting/estimates", {
    mainid: "main-box"
  });
});
router.get("/expenses", (req, res) => {
  res.render("accounting/expenses", {
    mainid: "main-box"
  });
});

router.get("/invoices", (req, res) => {
  res.render("accounting/invoices", {
    mainid: "main-box"
  });
});
router.get("/payment", (req, res) => {
  res.render("accounting/payment", {
    mainid: "main-box"
  });
});

module.exports = router;