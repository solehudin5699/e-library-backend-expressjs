//IMPORT FILE PATH
const db =require('../configs/dbMySql');
const { err } = require('../helpers/form/formResponse');

const bookModels={
  getAllBooks:(page,limit)=>{
    return new Promise((resolve,reject)=>{
      const offset = (page-1)*limit;
      const queryString ='SELECT p1.id, title, author, synopsis, release_year, genre,image,added_at,books_qty FROM books AS p1 INNER JOIN genres AS p2 ON p1.genre_id= p2.id LIMIT ? OFFSET ?';
      db.query(queryString,[Number(limit),offset],(error,results)=>{
        if(!error){
          resolve(results);
        }else{
          reject(error);
        }
      });
    });
  },
  postNewBooks:(body)=>{
    return new Promise((resolve,reject)=>{
      const queryString='INSERT INTO books SET ?';
      db.query(queryString,[body],(error,results)=>{
        if(!error){
          resolve(results);
        }else{
          reject(error);
        }
      })
    });
  },
  deleteBooks : (query)=>{
    return new Promise((resolve,reject)=>{
      const queryString ='DELETE FROM books WHERE id=?';
      db.query(queryString,[query.id],(error,results)=>{
        if(!error){
          resolve(results);
        }else{
          reject(error);
        }
      })
    });
  },
}

module.exports=bookModels;