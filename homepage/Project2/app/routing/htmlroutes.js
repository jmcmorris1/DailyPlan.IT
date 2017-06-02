//Using the path package to get the correct file path for the html
var path = require("path");

module.exports = function(app) {

    //leads to 
    app.get("/", function(req, res) {
        res.sendFile(path.join(__dirname, "/../ /.html"));
    });

    //leads to home page
    app.use(function(req, res) {
        res.sendFile(path.join(__dirname, "/../ /.html"));
    });
};