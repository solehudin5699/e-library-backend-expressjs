const borrowedModels = require('../models/borrow_books');
const formResponse = require('../helpers/form/responseForm');

const borrowedControllers = {
  getAllBorrowed: (req, res) => {
    borrowedModels
      .getAllBorrowed(req.query)
      .then((data) => {
        formResponse.success(res, data, 200);
      })
      .catch((error) => {
        formResponse.error(res, error, 500);
      })
  },
  postNewBorrowed: (req, res) => {
    borrowedModels
      .postNewBorrowed(req.body)
      .then((data) => {
        formResponse.success(res, req.body, data, 200);
      }).catch((error) => {
        formResponse.error(res, error, 500);
      })
  },
  deleteBorrowed: (req, res) => {
    borrowedModels
      .deleteBorrowed(req.query)
      .then((data) => {
        formResponse.success(res, req.query, data, 200);
      }).catch((error) => {
        formResponse.error(res, error, 500);
      })
  }
}

module.exports = borrowedControllers;

