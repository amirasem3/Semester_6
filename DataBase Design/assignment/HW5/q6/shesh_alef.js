var mongoose = require('mongoose');

var Patient = require('./Patient');

mongoose.connect('mongodb://localhost/mongoose_basics', function (err) {
    if (err) throw err;

    console.log('Successfully connected');

	Patient.updateOne({_id : '5d14af5234d6530e46d5e742'} ,{first_name : 'reza', last_name : 'akbari'}, function(err, patient) {
		if (err) throw err;
		console.log(patient);
	});
});
