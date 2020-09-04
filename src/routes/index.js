const express = require('express')

const authRouter = require('./auth')
const booksRouter = require('./books')
const genresRouter = require('./genres')
const historyRouter =require('./history')

const indexRouter = express.Router()

indexRouter.use('/auth', authRouter)
indexRouter.use('/books', booksRouter)
indexRouter.use('/genres',genresRouter)
indexRouter.use('/history',historyRouter)

module.exports = indexRouter;

