module.exports.handler = (evt, ctx, done) => {
    console.log(JSON.stringify(evt))
    done(null, {
        statusCode: 200,
        headers: {},
        body: JSON.stringify({
            id: 2,
            name: 'cook',
            status: 'done'
        })
    })
}