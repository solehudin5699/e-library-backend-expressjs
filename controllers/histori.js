const historyModel = require("../models/histori");

const historyController = {
    showAllHistory: (_,res) => {
        historyModel.showAllHistory()
        .then((data) => {
            res.json(data);
        })
        .catch((err) => {
            res.status(500).json(err);
        })
    },
    searchHistoryByInvoice: (req,res) => {
        historyModel.searchHistoryByInvoice(req.params.tagihan)
        .then((data) => {
            res.status(200).json(data);
        })
        .catch((err) => {
            res.status(500).json(err);
        })
    }
}

module.exports = historyController;