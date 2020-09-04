//IMPORT FILE PATH
const bookModels = require('../models/books');
const formResponse = require('../helpers/form/responseForm');

const bookControllers = {
  getAllBooks: (req, res) => {
    bookModels
      .getAllBooks(req.query)
      .then((data) => {
        formResponse.pagination(req.query, res, data, 200);

      })
      .catch((error) => {
        // console.log(req.query)
        formResponse.error(res, error, 500);
      })
  },
  postNewBooks: (req, res) => {
    bookModels
      .postNewBooks(req.body)
      .then((data) => {
        const responseObj = {
          id: data.insertId,
          ...req.body
        }
        formResponse.success(res, responseObj, data);
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
        formResponse.success(res, req.query, 200);
      }).catch((error) => {
        formResponse.error(res, error, 500);
      })
  }
}

module.exports = bookControllers;