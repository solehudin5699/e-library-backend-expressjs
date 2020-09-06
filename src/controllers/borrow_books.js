const borrowedModels = require('../models/borrow_books');
const formResponse = require('../helpers/form/responseForm');

const borrowedControllers = {
  getAllBorrowed: (req, res) => {
    // console.log("dska")
    borrowedModels
      .getAllBorrowed(req.query)
      .then((data) => {
        formResponse.pagination(req.query, res, data, 200);
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
  }
}

module.exports = borrowedControllers;

