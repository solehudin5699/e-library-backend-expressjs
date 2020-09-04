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
    pagination: (query , res, data) => {
        // console.log(query)
        const page = Number(query.page);
        const limit = Number(query.limit);
        // const search = query.search
        const prevPage = page === 1 ? "" : `/?search=${query.title}&sortby=${query.sortby}&order=${query.order}&page=${page - 1}&limit=${limit}`;
        const nextPage = data.length < limit ? "" : `/?search=${query.title}&sortby=${query.sortby}&order=${query.order}&page=${page + 1}&limit=${limit}`;
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