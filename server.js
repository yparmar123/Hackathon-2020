const express = require("express");
const exphbs = require("express-handlebars");


const app = express();
app.engine("handlebars", exphbs());
app.set("view engine", "handlebars");
app.use(express.static("public"));

app.get("/", (req, res) => {

  res.render("home", {
    mainid: "main-box"
  });
});

app.get("/signup", (req, res) => {
  res.render("signup", {
    mainid: "Sign up"
  });
});

app.get("/login", (req, res) => {
  res.render("login", {
    mainid: "login"
  });
});
app.get("/contactus", (req, res) => {
  res.render("contactus", {
    mainid: "main-box"
  });
});
app.get("/estimates", (req, res) => {
  res.render("estimates", {
    mainid: "main-box"
  });
});
app.get("/expenses", (req, res) => {
  res.render("expenses", {
    mainid: "main-box"
  });
});
app.get("/feedback", (req, res) => {
  res.render("feedback", {
    mainid: "main-box"
  });
});
app.get("/invoices", (req, res) => {
  res.render("invoices", {
    mainid: "main-box"
  });
});
app.get("/payment", (req, res) => {
  res.render("payment", {
    mainid: "main-box"
  });
});

app.get("/setting", (req, res) => {
  res.render("setting", {
    mainid: "main-box"
  });
});
app.listen(3000, () => {
  console.log("Webserver connectedWeb server is up and running");
});
