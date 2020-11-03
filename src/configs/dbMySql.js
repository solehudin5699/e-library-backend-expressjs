const mySQL = require("mysql")

const db = mySQL.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    multipleStatements: true
})

db.connect((err) => {
    if(err) throw err
    console.log("konek")
})

module.exports = db