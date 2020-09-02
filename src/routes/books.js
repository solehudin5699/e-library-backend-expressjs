// IMPORT
const express = require('express');

//FILE IMPORT
const bookControllers = require('../controllers/books');

//DEKLARASI
const booksRouter =express.Router();

//IMPLEMENTASI
booksRouter.get('/',bookControllers.getAllBooks)
booksRouter.post('/',bookControllers.postNewBooks)
booksRouter.delete('/',bookControllers.deleteBooks)

module.exports=booksRouter;