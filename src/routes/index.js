const express = require('express')


const authRouter = require('./auth')
const authRouter = require('./books')


const indexRouter = express.Router()


indexRouter.use('/auth', authRouter)
indexRouter.use('/books', authRouter)

module.exports = indexRouter