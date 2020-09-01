const menuModel = require('../models/menu')
const responseForm = require("../helpers/form/responseForm");

const menuController = {
    getAllMenu: (_, res) => {
        menuModel.getAllMenu()
            .then((data) => {
                responseForm.success(res, data);
            }).catch((err) => {
                responseForm.error(res, err);
            })
    },
    postMenu: (req, res) => {
        menuModel.postMenu(req.body)
            .then((data) => {
                const responseObj = {
                    id: data.insertId,
                    ...req.body
                }
                responseForm.success(res, responseObj, data);
            }).catch((err) => {
                responseForm.error(res, err);
            })
    },
    patchMenu: (req, res) => {
        menuModel.patchMenu(req.body)
            .then((data) => {
                const responseObj = {
                    id: data.insertId,
                    ...req.body
                }
                responseForm.success(res, responseObj, data);
            }).catch((err) => {
                responseForm.error(res, err);
            })
    },
    deleteMenu: (req, res) => {
        menuModel.deleteMenu(req.params.id)
            .then((data) => {
                const responseObj = {
                    msg: "delete success"
                }
                responseForm.success(res, responseObj, data);
            }).catch((err) => {
                responseForm.error(res, err);
            })
    },
    sort: (req, res) => {
        menuModel.sort(req.query)
            .then((data) => {
                responseForm.success(res, data);
            }).catch((err) => {
                responseForm.error(res, err);
            })
    },
    getPaginatedMenu: (req, res) => {
        const { page, limit } = req.query
        menuModel
            .getPaginatedMenu(page, limit)
            .then((data) => {
                responseForm.pagination(req, res, data);
            })
            .catch((err) => {
                responseForm.error(res, err);
            });
    },
    getPaginatedSearchSort: (req, res) => {
        const { nama_produk, by, order, page, limit } = req.query
        menuModel
            .getPaginatedSearchSort(nama_produk, by, order, page, limit)
            .then((data) => {
                responseForm.paginationSearchSort(req, res, data);
            })
            .catch((err) => {
                responseForm.error(res, err);
            });
    }
}
module.exports = menuController;