const db = require('../configs/dbMySql');

const borrowedModels = {
    getAllBorrowed: (query) => {
        let queryString = "";
        if (query.title === undefined && query.sortby === undefined && query.order === undefined) {
            queryString = `SELECT borrowed_books.id, title, fullname,user_id, author, borrow_date, duration FROM ((borrowed_books LEFT JOIN books ON borrowed_books.books_id=books.id) LEFT JOIN users ON borrowed_books.user_id = users.id)`;
        }

        else if (query.sortby === undefined && query.order === undefined) {
            queryString = `SELECT borrowed_books.id, title, fullname,user_id, author, borrow_date, duration FROM ((borrowed_books LEFT JOIN books ON borrowed_books.books_id=books.id) LEFT JOIN users ON borrowed_books.user_id = users.id) WHERE title LIKE '%${query.title}%'`;
        }

        else if (query.title === undefined) {
            queryString = `SELECT borrowed_books.id, title, fullname,user_id, author, borrow_date, duration FROM ((borrowed_books LEFT JOIN books ON borrowed_books.books_id=books.id) LEFT JOIN users ON borrowed_books.user_id = users.id) ORDER BY ${query.sortby} ${query.order}`;
        }

        else if (query.title === undefined && query.order===undefined) {
            queryString = `SELECT borrowed_books.id, title, fullname,user_id, author, borrow_date, duration FROM ((borrowed_books LEFT JOIN books ON borrowed_books.books_id=books.id) LEFT JOIN users ON borrowed_books.user_id = users.id) ORDER BY ${query.sortby}`;
        }

        else {
            queryString = `SELECT borrowed_books.id, title, fullname,user_id, author, borrow_date, duration FROM ((borrowed_books LEFT JOIN books ON borrowed_books.books_id=books.id) LEFT JOIN users ON borrowed_books.user_id = users.id) WHERE title LIKE '%${query.title}%' ORDER BY ${query.sortby} ${query.order}`
        }
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