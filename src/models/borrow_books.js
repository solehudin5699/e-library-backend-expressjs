const db = require('../configs/dbMySql');

const borrowedModels = {
    getAllBorrowed: () => {
        let queryString = "";
        queryString = `SELECT borrowed_books.id, title, fullname,user_id, author, borrow_date, duration FROM ((borrowed_books LEFT JOIN books ON borrowed_books.books_id=books.id) LEFT JOIN users ON borrowed_books.user_id = users.id) `
        return new Promise((resolve, reject) => {
            db.query(queryString, (error, data) => {
                if (!error) {
                    resolve(data);
                } else {
                    reject(error);
                }
            })
        });
    },
    postNewBorrowed: (body) => {
        return new Promise((resolve, reject) => {
            const queryString = 'INSERT INTO borrowed_books SET ?';
            db.query(queryString, [body], (error, data) => {
                if (!error) {
                    resolve(data);
                } else {
                    reject(error);
                }
            })
        });
    },
    deleteBorrowed: (query) => {
        return new Promise((resolve, reject) => {
            const queryString = 'DELETE FROM borrowed_books WHERE id=?';
            db.query(queryString, [query.id], (error, data) => {
                if (!error) {
                    resolve(data);
                } else {
                    reject(error);
                }
            })
        });
    },
}

module.exports = borrowedModels;