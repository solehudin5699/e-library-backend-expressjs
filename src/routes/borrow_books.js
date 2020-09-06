const express =require('express')

const borrowedControllers =require('../controllers/borrow_books')

const borrowedRouter = express.Router()

borrowedRouter.get('/',borrowedControllers.getAllBorrowed)
borrowedRouter.post('/',borrowedControllers.postNewBorrowed)
borrowedRouter.delete('/',borrowedControllers.deleteBorrowed)

module.exports = borrowedRouter;