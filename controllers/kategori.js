const categoryModel = require('../models/kategori')
const responseForm = require("../helpers/form/responseForm");


const categoryController = {
    getAllCategory: (_, res) => {
        categoryModel.getAllCategory()
            .then((data) => {
                responseForm.success(res, data);
            }).catch((err) => {
                responseForm.error(res, err);
            })
    },
}
module.exports = categoryController;