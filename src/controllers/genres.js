const genreModels = require('../models/genres')
const formResponse = require('../helpers/form/responseForm');

const genreControllers={
  getAllGenre:(_,res)=>{
    genreModels
    .getAllGenre()
    .then((results)=>{
      formResponse.success(res,results,200);
    })
    .catch((error)=>{
      formResponse.error(res,error,500);
    })
  },
}

module.exports=genreControllers;
