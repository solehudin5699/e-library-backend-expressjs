const express = require('express')

const authRouter = express.Router()
const uploadBridge = require('../helpers/middleware/imgUpload')
const authController = require('../controllers/auth')
const middleware = require("../helpers/middleware/middleware")

authRouter.post('/register', middleware.authMiddleware, uploadBridge.uploadImgAvatar, authController.register)
authRouter.post('/login', middleware.authMiddleware, authController.login)


module.exports = authRouter