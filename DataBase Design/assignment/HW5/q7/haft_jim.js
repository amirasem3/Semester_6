var mongoose = require('mongoose');

var Room = require('./Room');

mongoose.connect('mongodb://localhost/mongoose_basics', function (err) {
    if (err) throw err;

    console.log('Successfully connected');

    Room.find({capacity: {$gt: 4}}, function(err, room) {
        if (err) throw err;
		console.log(room);
    });
});
