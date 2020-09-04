const responseForm = require("../form/responseForm");
const _ = require("underscore");

const middleware = {
    booksMiddleware: (req, res, next) => {
        const requestPath = req.route.path
        const requestMethod = req.method
        const isBodyEmpty = _.isEmpty(req.body)
        // console.log(req.body)
        if (requestMethod === "GET" && (requestPath === "/")) {
            next()
        } else if (requestMethod === "DELETE" && requestPath === "/") {
            if (isBodyEmpty) {
                const errorMsg = "Failed to request";
                responseForm.error(res, errorMsg);
            } else {
                next()
            }
        } else if (requestMethod === "POST" && requestPath === "/") {
            if (isBodyEmpty) {
                const errorMsg = "Failed to request 404";
                responseForm.error(res, errorMsg);
            } else {
                next();
            }
        } else if (requestMethod === "PATCH" && requestPath === "/") {
            if (isBodyEmpty) {
                const errorMsg = "Failed to request";
                responseForm.error(res, errorMsg);
            } else {
                next();
            }
        } else {
            const errorMsg = "Failed to request 404";
            responseForm.error(res, errorMsg);
        }
    },
    authMiddleware: (res, req, next) => {
        const requestPath = req.route.path
        const requestMethod = req.method
        const isBodyEmpty = _.isEmpty(req.body)


        if (requestMethod === "POST" && requestPath === "/") {
            if (isBodyEmpty) {
                const errorMsg = "Failed to request";
                responseForm.error(res, errorMsg);
            } else {
                next();
            }
        } else {
            const errorMsg = "Failed to request";
            responseForm.error(res, errorMsg);
        }
    }

}

module.exports = middleware