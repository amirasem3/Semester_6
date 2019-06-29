var mongoose = require('mongoose');

var Relative = require('./Relative');

mongoose.connect('mongodb://localhost/mongoose_basics', function (err) {
    if (err) throw err;

    console.log('Successfully connected');

	Relative.find({patient : '5d14af5234d6530e46d5e742'} ,function(err, relative) {
		if (err) throw err;
		console.log(relative);
	});

});
