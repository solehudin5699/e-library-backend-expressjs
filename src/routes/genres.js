const express =require('express')

const genreControlles =require('../controllers/genres')

const genresRouter = express.Router()

genresRouter.get('/',genreControlles.getAllGenre);


module.exports=genresRouter;
