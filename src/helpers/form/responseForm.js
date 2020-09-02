const formResponse = {
    success: (res, data, status) => {
        const response = {
            isSuccess: true,
            status: status,
            data: data
        }
        res.json(response);
    },
    error: (res, error, status) => {
        const response = {
            isSuccess: false,
            status: status,
            data: error
        }
        res.json(response);
    },
    pagination: ({ query }, res, data) => {
        const page = Number(query.page);
        const limit = Number(query.limit);
        const prevPage = page === 1 ? "" : `/?page=${page - 1}&limit=${limit}`;
        const nextPage = data.length < limit ? "" : `/?page=${page + 1}&limit=${limit}`;
        const responseObject = {
            success: true,
            status: 200,
            data,
            pageInfo: {
                currentPage: query.page,
                limit: query.limit,
                prevPage,
                nextPage,
            },
        };
        res.json(responseObject);
    }
}

module.exports = formResponse;