const historyModels = require('../models/history');
const formResponse = require('../helpers/form/responseForm');

const historyControllers = {
  getAllHistory: (_, res) => {
    // console.log("dska")
    historyModels
      .getAllHistory()
      .then((data) => {
        formResponse.success( res, data, 200);
      })
      .catch((error) => {
        formResponse.error(res, error, 500);
      })
  },
  postNewHistory: (req, res) => {
    historyModels
      .postNewHistory(req.body)
      .then((data) => {
        formResponse.success(res, req.body, 200);
      }).catch((error) => {
        formResponse.error(res, error, 500);
      })
  }
}

module.exports = historyControllers;

