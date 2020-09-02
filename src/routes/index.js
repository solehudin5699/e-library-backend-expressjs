const express = require('express')




const authRouter = require('./auth')
const booksRouter = require('./books')
const genresRouter = require('./genres')



const indexRouter = express.Router()




indexRouter.use('/auth', authRouter)
indexRouter.use('/books', booksRouter)
indexRouter.use('/genres',genresRouter)

module.exports = indexRouter;

