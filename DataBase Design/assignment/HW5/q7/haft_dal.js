var mongoose = require('mongoose');

var Teacher = require('./Teacher');
var Reserve = require('./Reserve');

mongoose.connect('mongodb://localhost/mongoose_basics', function (err) {
    if (err) throw err;

    console.log('Successfully connected');

    Teacher.find().sort({"birthday":1}).limit(1).exec(function(err, olds) {
        if (err) throw err;
        olds.forEach(function(old) {
            Reserve.find({teacher : old._id}, function(err, reserve) {
                if (err) throw err;
                console.log(reserve);
            });
        });
    });

});
