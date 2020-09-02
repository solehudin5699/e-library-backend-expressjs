//IMPORT FILE PATH
const bookModels = require('../models/books');
const formResponse = require('../helpers/form/responseForm');

const bookControllers = {
  getAllBooks: (req, res) => {
    const { page, limit } = req.query
    bookModels
      .getAllBooks(page, limit)
      .then((data) => {
        formResponse.pagination(req, res, data, 200);
      })
      .catch((error) => {
        formResponse.error(res, error, 500);
      })
  },
  postNewBooks: (req, res) => {
    bookModels
      .postNewBooks(req.body)
      .then((data) => {
        formResponse.success(res, req.body, 200);
      }).catch((error) => {
        formResponse.error(res, error, 500);
      })
  },
  updateBooks: (req, res) => {
    bookModels
      .patchBooks(req.body)
      .then((data) => {
        formResponse.success(res, req.body, 200);
      }).catch((error) => {
        console.log(error)
        formResponse.error(res, error, 500);
      })
  },
  deleteBooks: (req, res) => {
    bookModels
      .deleteBooks(req.query)
      .then((data) => {
        formResponse.success(res, data, 200);
      }).catch((error) => {
        formResponse.error(res, error, 500);
      })
  },
  searchBookByTitle: (req, res) => {
    const { title, by, order, page, limit } = req.query;
    bookModels
      .searchBookByTitle(title, by, order, page, limit)
      .then((data) => {
        formResponse.pagination(req, res, data, 200);
      }).catch((error) => {
        formResponse.error(res, error, 500);
      })
  }
}

module.exports = bookControllers;