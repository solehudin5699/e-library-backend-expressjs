const db = require('../configs/dbMySql');

const historyModels = {
  getAllHistory: (query) => {
    let queryString = "";
    const offset = (Number(query.page) - 1) * Number(query.limit);
    if (query.title === undefined && query.sortby === undefined && query.order === undefined) {
      queryString = `SELECT history.id, title, username,users_id, author, borrow_date, duration FROM ((history LEFT JOIN books ON history.books_id=books.id) LEFT JOIN users ON history.users_id = users.id) LIMIT ${query.limit} OFFSET ${offset}`;
    }

    else if (query.sortby === undefined && query.order === undefined) {
      queryString = `SELECT history.id, title, username,users_id, author, borrow_date, duration FROM ((history LEFT JOIN books ON history.books_id=books.id) LEFT JOIN users ON history.users_id = users.id) WHERE title LIKE '%${query.title}%' LIMIT ${query.limit} OFFSET ${offset}`;
    }

    else if (query.title === undefined) {
      queryString = `SELECT history.id, title, username,users_id, author, borrow_date, duration FROM ((history LEFT JOIN books ON history.books_id=books.id) LEFT JOIN users ON history.users_id = users.id) ORDER BY ${query.sortby} ${query.order} LIMIT ${query.limit} OFFSET ${offset}`
    }

    else {
      queryString = `SELECT history.id, title, username,users_id, author, borrow_date, duration FROM ((history LEFT JOIN books ON history.books_id=books.id) LEFT JOIN users ON history.users_id = users.id) WHERE title LIKE '%${query.title}%' ORDER BY ${query.sortby} ${query.order} LIMIT ${query.limit} OFFSET ${offset}`
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
  postNewHistory: (body) => {
    return new Promise((resolve, reject) => {
      const queryString = 'INSERT INTO history SET ?';
      db.query(queryString, [body], (error, data) => {
        if (!error) {
          resolve(data);
        } else {
          reject(error);
        }
      })
    });
  }
}

module.exports = historyModels;