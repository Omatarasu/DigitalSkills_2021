exports.appSettings = {
    db: (function(){
        return process.env.MONGODB_CONNECTION || 'mongodb://172.16.0.4:27017/contentdb';
    })()
};
