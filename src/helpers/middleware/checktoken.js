const jwt = require('jsonwebtoken')
const responseForm = require("../form/responseForm")

const checkToken = {
    checkTokenAdmin: (req, res, next) => {
        const bearerToken = req.header("x-access-token")
        if (!bearerToken) {
            res.json({
                msg: "Login first !"
            })
        }
        try {
            const token = bearerToken.split(" ")[1]
            const decoded = jwt.verify(token, process.env.SECRET_KEY)
            console.log(decoded)
            if (decoded.level_id === 1) {
                req.decodedToken = decoded
                next()
            } else {
                res.json({
                    msg: "Wrong level token"
                })
            }
        } catch (e) {
            responseForm.error(res, e)
        }
    },
    checkTokenUser: (req, res, next) => {
        const bearerToken = req.header("x-access-token")
        if (!bearerToken) {
            res.json({
                msg: "Login first !"
            })
        }
        try {
            const token = bearerToken.split(" ")[1]
            const decoded = jwt.verify(token, process.env.SECRET_KEY)
            // console.log(decoded)
            req.decodedToken = decoded
            next()

        } catch (e) {
            responseForm.error(res, e)
        }
    },

}
module.exports = checkToken