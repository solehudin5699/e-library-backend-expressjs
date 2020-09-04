// IMPORT
const express = require('express');

//FILE IMPORT
const bookControllers = require('../controllers/books');
const uploadBridge = require('../helpers/middleware/imgUpload')
const middleware = require("../helpers/middleware/middleware")

//DEKLARASI
const booksRouter = express.Router();

//IMPLEMENTASI 
booksRouter.get('/', bookControllers.getAllBooks)
booksRouter.post('/', uploadBridge.uploadImgBooks, bookControllers.postNewBooks)
booksRouter.patch('/', uploadBridge.uploadImgBooks, bookControllers.updateBooks)
booksRouter.delete('/', bookControllers.deleteBooks)

module.exports = booksRouter;