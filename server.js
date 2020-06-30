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

app.listen(3000, () => {
  console.log("Webserver connectedWeb server is up and running");
});
