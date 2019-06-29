var mongoose = require('mongoose');

var Medicine = require('./Medicine');

mongoose.connect('mongodb://localhost/mongoose_basics', function (err) {
    if (err) throw err;

    console.log('Successfully connected');

	Medicine.find().sort({'price': -1}).skip(5).limit(5).exec(function(err, meds) {
        if (err) throw err;
        meds.forEach(function(med) {
            console.log(med);
        });
    }) ;
});
