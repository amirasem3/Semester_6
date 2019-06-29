var mongoose = require('mongoose');

var Teacher = require('./Teacher');
var Reserve = require('./Reserve');

mongoose.connect('mongodb://localhost/mongoose_basics', function (err) {
    if (err) throw err;

    console.log('Successfully connected');

    Reserve.find({state: 'Rejected'}, function(err, reserve) {
        if (err) throw err;

        console.log(reserve);
    });

});
