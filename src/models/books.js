//IMPORT FILE PATH
const db = require('../configs/dbMySql');

const bookModels = {
  getAllBooks: (page, limit) => {
    return new Promise((resolve, reject) => {
      const offset = (page - 1) * limit;
      const queryString = 'SELECT p1.id, title, author, synopsis, release_year, genre,image,added_at,books_qty FROM books AS p1 INNER JOIN genres AS p2 ON p1.genre_id= p2.id LIMIT ? OFFSET ?';
      db.query(queryString, [Number(limit), offset], (error, data) => {
        if (!error) {
          resolve(data);
        } else {
          reject(error);
        }
      });
    });
  },
  postNewBooks: (body) => {
    const { title, synopsis, release_year, genre_id, books_qty, image } = body
    const queryString = "INSERT INTO books SET title=?, synopsis=?, release_year=?, genre_id=?, books_qty=?, image=?"
    return new Promise((resolve, reject) => {
      db.query(queryString, [title, synopsis, release_year, genre_id, books_qty, image], (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err)
        }
      })
    })
  },
  patchBooks: (body) => {
    // console.log(id)
    return new Promise((resolve, reject) => {
      const queryString = `UPDATE books SET ? WHERE books.id=?`
      db.query(queryString, [body, body.id], (err, data) => {
        if (!err) {
          console.log(data)
          resolve(data)
        } else {
          // console.log(err)
          reject(err)
        }
      })
    })
  },
  deleteBooks: (query) => {
    return new Promise((resolve, reject) => {
      const queryString = 'DELETE FROM books WHERE id=?';
      db.query(queryString, [query.id], (error, data) => {
        if (!error) {
          resolve(data);
        } else {
          reject(error);
        }
      })
    });
  },
  searchBookByTitle: (word, by, order, page, limit) => {
    return new Promise((resolve, reject) => {
      const offset = (page - 1) * limit;
      const queryString = `SELECT p1.id, title, author, synopsis, release_year, genre,image,added_at,books_qty FROM books AS p1 INNER JOIN genres AS p2 ON p1.genre_id= p2.id WHERE title LIKE '%${word}%' ORDER BY ${by} ${order} LIMIT ${limit} OFFSET ${offset}`;
      db.query(queryString, [word, by, order, Number(limit), offset], (error, data) => {
        if (!error) {
          resolve(data);
        } else {
          reject(error);
        }
      })
    });
  },
}

module.exports = bookModels;