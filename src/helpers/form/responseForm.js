const responseForm = {
    success: function (res, data) {
        const responseObj = {
            isSuccess: true,
            status: 200,
            data: data
        }
        res.json(responseObj);
    },
    error: function (res, err) {
        const responseObj = {
            isSuccess: false,
            status: 500,
            data: err
        }
        res.json(responseObj);
    }
}

module.exports = responseForm;