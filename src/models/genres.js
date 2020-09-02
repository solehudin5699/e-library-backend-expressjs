const db =require('../configs/dbMySql')

const genreModels={
  getAllGenre:()=>{
    return new Promise((resolve,reject)=>{
      const queryString = ' SELECT * FROM genres'
      db.query(queryString,(error,results)=>{
        if(!error){
          resolve(results);
        }else{
          reject(error);
        }
      })
    });  
  },
}

module.exports=genreModels;