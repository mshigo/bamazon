var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon_db"
});

connection.connect(function(err){
    if (err) {
        console.error(err);
    }
});

function promptUser() {
    inquirer.prompt ([
        {
            type: "input",
            name: "id",
            message: "Please enter ID of the product you want to buy."
        }, {
            type: "input",
            name: "quantity",
            message: "How many do you want to purchase?"
        }
    ])
    .then(function(purchase){
        connection.query("SELECT * FROM products WHERE id=?", purchase.id, function(err, res){
            for (var i = 0; i < res.length; i++) {
                if (purchase.quantity > res[i].stock_quantity) {
                    console.log("Sorry, not enough of this item in stock.");
                } else {
                    console.log("Total: $" + res[i].price * purchase.quantity);
                    var updatedStock = (res[i].stock_quantity - purchase.quantity);
                        console.log("Remaining stock: " + res[i].stock_quantity + " units");
                    }
            }
        });
    });
}

function getAll() {
    connection.query("SELECT * FROM products", function(err, res){
        if (err) {
            console.error(err);
        }
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].id + " | " + res[i].product_name + " | " + "$" + res[i].price + " | ");
        }
        //run prompt after grabbing from db
        promptUser();
    });
}

//run getAll();
getAll();