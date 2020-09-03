const express =require('express')

const historyControllers =require('../controllers/history')

const historyRouter = express.Router()

historyRouter.get('/',historyControllers.getAllHistory)
historyRouter.post('/',historyControllers.postNewHistory)

module.exports=historyRouter;