const express = require('express')


// const authRouter = require('./auth')
const booksRouter = require('./books')


const indexRouter = express.Router()


// indexRouter.use('/auth', authRouter)
indexRouter.use('/books', booksRouter)

module.exports = indexRouter;