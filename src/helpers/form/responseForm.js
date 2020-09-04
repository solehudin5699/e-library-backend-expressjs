const formResponse = {
    success: (res, data) => {
        const response = {
            isSuccess: true,
            status: 200,
            data: data
        }
        res.json(response);
    },
    error: (res, error) => {
        const response = {
            isSuccess: false,
            status: 500,
            data: error
        }
        res.json(response);
    },
    pagination: (query, res, data, status) => {
        let page = query.page;
        let limit = 0;
        let prevPage = "";
        let nextPage = "";
        if (data.length !== 0) {
            page = Number(query.page);
            limit = Number(query.limit);
            prevPage =
                page === 1
                    ? ""
                    : `/books/?title=${query.title}&sortby=${query.sortby}&order=${query.order}&page=${page - 1}&limit=${limit}`;
            nextPage = `/books/?title=${query.title}&sortby=${query.sortby}&order=${query.order}&page=${page + 1}&limit=${limit}`;
        }
        const resObj = {
            isSuccess: true,
            status: status,
            data,
            pageInfo: {
                page,
                prevPage,
                nextPage,
            },
        };
        res.json(resObj);
    }
}

module.exports = formResponse;