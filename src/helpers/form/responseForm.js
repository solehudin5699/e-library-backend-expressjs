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
    pagination: (query, res, data) => {
        // console.log(query)
        const page = Number(query.page);
        const limit = Number(query.limit);
        if (query.title === undefined && query.sortby === undefined && query.order === undefined ) {
            const prevPage = page === 1 ? "" : `/books/?page=${page - 1}&limit=${limit}`;
            const nextPage = data.length < limit ? "" : `/books/?page=${page + 1}&limit=${limit}`;
            const responseObj = {
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
            res.json(responseObj);
        } 
        
        else if (query.sortby === undefined && query.order === undefined ) {
            if (data.length === 0) {
                const msg = {
                    massage: `Sorry, ${query.title} is not found`
                }
                res.json(msg)
            } else {
                const prevPage = page === 1 ? "" : `/books/?title=${query.title}&page=${page - 1}&limit=${limit}`;
                const nextPage = data.length === 0 ? "" : `/books/?title=${query.title}&page=${page + 1}&limit=${limit}`;
                const responseObj = {
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
                res.json(responseObj);
            }
        }

        else if (query.order === undefined ) {
            if (data.length === 0) {
                const msg = {
                    massage: `Sorry, ${query.title} is not found`
                }
                res.json(msg)
            } else {
                const prevPage = page === 1 ? "" : `/books/?title=${query.title}&sortby=${query.sortby}&page=${page - 1}&limit=${limit}`;
                const nextPage = data.length === 0 ? "" : `/books/?title=${query.title}&sortby=${query.sortby}&page=${page + 1}&limit=${limit}`;
                const responseObj = {
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
                res.json(responseObj);
            }
        }

        else if (query.sortby === undefined ) {
            if (data.length === 0) {
                const msg = {
                    massage: `Sorry, ${query.title} is not found`
                }
                res.json(msg)
            } else {
                const prevPage = page === 1 ? "" : `/books/?title=${query.title}&order=${query.order}&page=${page - 1}&limit=${limit}`;
                const nextPage = data.length === 0 ? "" : `/books/?title=${query.title}&order=${query.order}&page=${page + 1}&limit=${limit}`;
                const responseObj = {
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
                res.json(responseObj);
            }
        }

        else {
            if (data.length === 0) {
                const msg = {
                    massage: `Sorry, ${query.title} is not found`
                }
                res.json(msg)
            } else {
                const prevPage = page === 1 ? "" : `/books/?genre_id=${query.genre_id}&release_year=${query.release_year}&title=${query.title}&sortby=${query.sortby}&order=${query.order}&page=${page - 1}&limit=${limit}`;
                const nextPage = data.length === 0 ? "" : `/books/?genre_id=${query.genre_id}&release_year=${query.release_year}&title=${query.title}&sortby=${query.sortby}&order=${query.order}&page=${page + 1}&limit=${limit}`;
                const responseObj = {
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
                res.json(responseObj);
            }
        }
    }
}

module.exports = formResponse;