const transactionModel = require("../models/transaksi");
const responseForm = require("../helpers/form/responseForm");

const transactionController = {
    addTransaction: (req, res) => {
        transactionModel.addTransaction(req.body)
            .then((data) => {
                responseForm.success(res, data);
            })
            .catch((err) => {
                responseForm.error(res, err);
            })
    }
}

module.exports = transactionController;