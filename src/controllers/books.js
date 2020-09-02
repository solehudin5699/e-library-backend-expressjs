//IMPORT FILE PATH
const bookModels =require('../models/books');
const formResponse=require('../helpers/form/formResponse');

const bookControllers={
  getAllBooks:(req,res)=>{
    const{page,limit}=req.query
    bookModels
    .getAllBooks(page,limit)
    .then((results)=>{
      formResponse.pagination(req,res,results,200);
    })
    .catch((error)=>{
        formResponse.err(res,error,500);
    })
  },
  postNewBooks:(req,res)=>{
    bookModels
    .postNewBooks(req.body)
    .then((results)=>{
      formResponse.success(res,req.body,200);
    }).catch((error)=>{
      formResponse.err(res,error,500);    
  })
  },
  deleteBooks:(req,res)=>{
    bookModels
    .deleteBooks(req.query)
    .then((results)=>{
        formResponse.success(res,results,200);
    }).catch((error)=>{
        formResponse.err(res,error,500);
    })
  },
  searchBookByTitle :(req,res)=>{
    const{title,by,order,page,limit}=req.query;
    bookModels
    .searchBookByTitle(title,by,order,page,limit)
    .then((results)=>{
        formResponse.pagination(req,res,results,200);
    }).catch((error)=>{
        formResponse.err(res,error,500);
    })
}
}

module.exports=bookControllers;