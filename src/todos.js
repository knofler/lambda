module.exports.handler = (evt, ctx, done) => {
    const todos = [
        { id: 1, name: 'clean up', status: 'open' },
        { id: 2, name: 'cook', status: 'done'}
    ]

    done(null, {
        statusCode: 200,
        headers: {},
        body: JSON.stringify({data: todos})
    })
}