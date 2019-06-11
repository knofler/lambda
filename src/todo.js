module.exports.handler = (evt, ctx, done) => {
    console.log(JSON.stringify(evt, null, 2))
    done(null, {
        statusCode: 200,
        headers: {},
        body: JSON.stringify({data:{
            id: 1,
            name: 'clean up',
            status: 'open'
        }})
    })
}