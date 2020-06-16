const express= require("express");
const exphbs = require("express-handlebars");
const bodyParser = require('body-parser');

const app = express();

//Set Handlebars as the Express enginge for the app
app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');



//load static resources
app.use(express.static("public"));


app.get("/",(req,res)=>{
  

    res.render("home",{
        title:"Home Page"
    });

});


//Show sms page
app.get("/sendtext",(req,res)=>{

    res.render("sms",{
        title:"Sms Page"
    });
});




const PORT = 3000;
app.listen(PORT , ()=>
{
        console.log(`Web application is up and running!!!`);
});