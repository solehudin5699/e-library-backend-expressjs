const authModel = require('../models/auth')
const responseForm = require('../helpers/form/responseForm')


const authController = {
    register: (req, res) => {
        authModel.postNewUser(req.body)
            .then((data) => {
                const responseObj = {
                    msg: "register success"
                }
                responseForm.success(res, responseObj, data);
            })
            .catch((err) => {
                responseForm.error(res, err)
            })
    },
    login: (req, res) => {
        authModel.loginUser(req.body)
            .then((data) => {
                responseForm.success(res, data)
            })
            .catch((err) => {
                responseForm.error(res, err)
            })
    }
}

module.exports = authController