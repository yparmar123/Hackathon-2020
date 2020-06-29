const express = require("express");
const exphbs = require("express-handlebars");

require('dotenv').config({path:"./config/keys.env"});

const app = express();

app.use(express.static('public'));

app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');

app.get("/", (req, res) => {
    res.render("home", {
        title: "Home Page"
    });
});

app.get("/about", (req, res) => {
    res.render("about", {
        title: "About Us Page"
    });
});

app.get("/contact", (req, res) => {
    res.render("contact", {
        title: "Contact Us Page"
    });
});

app.listen(3000, ()=> {
    console.log("Web Server is up and running!");
});