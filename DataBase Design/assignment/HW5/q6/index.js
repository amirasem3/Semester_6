var mongoose = require('mongoose');

var Doctor = require('./Doctor');
var Patient = require('./Patient');
var Medicine = require('./Medicine');

mongoose.connect('mongodb://localhost/mongoose_basics', function (err) {
    if (err) throw err;

    console.log('Successfully connected');

    var patient1 = new Patient({
        first_name: "ali", last_name:"jahani"
    });

    patient1.save(function(err) {
        if (err) throw err;

        console.log('patient1 successfully saved.');
    });

    var relative1 = new Relative({
		last_name:"jahani",
		patient : '5d14af5234d6530e46d5e742',
		date : "2019-06-27T10:32"
	});

	relative1.save(function(err) {
		if (err) throw err;

		console.log('relative1 successfully saved.');
	});

	var relative2 = new Relative({
		last_name:"akbari",
		patient : '5d14af5234d6530e46d5e742',
		date : "2019-06-27T10:32"
	});

	relative2.save(function(err) {
		if (err) throw err;

		console.log('relative2 successfully saved.');
	});

    var medicine1 = new Medicine( {
        name: 'med1',
        company : 'hesabi',
        price: '123'
    });
    medicine1.save(function(err) {
        if(err) throw err;

        console.log('medicine1 successfully saved');
    });

    var medicine2 = new Medicine( {
        name: 'med2',
        company : 'hesabi',
        price: '124'
    });
    medicine2.save(function(err) {
        if(err) throw err;

        console.log('medicine2 successfully saved');
    });

    var medicine3 = new Medicine( {
        name: 'med3',
        company : 'hesabi',
        price: '125'
    });
    medicine3.save(function(err) {
        if(err) throw err;

        console.log('medicine3 successfully saved');
    });

    var medicine4 = new Medicine( {
        name: 'med4',
        company : 'hesabi',
        price: '126'
    });
    medicine4.save(function(err) {
        if(err) throw err;

        console.log('medicine4 successfully saved');
    });

    var medicine5 = new Medicine( {
        name: 'med5',
        company : 'hesabi',
        price: '127'
    });
    medicine5.save(function(err) {
        if(err) throw err;

        console.log('medicine5 successfully saved');
    });
    var medicine6 = new Medicine( {
        name: 'med6',
        company : 'hesabi',
        price: '128'
    });
    medicine6.save(function(err) {
        if(err) throw err;

        console.log('medicine6 successfully saved');
    });
    var medicine7 = new Medicine( {
        name: 'med7',
        company : 'hesabi',
        price: '224'
    });
    medicine7.save(function(err) {
        if(err) throw err;

        console.log('medicine7 successfully saved');
    });

    var medicine8 = new Medicine( {
        name: 'med8',
        company : 'hesabi',
        price: '225'
    });
    medicine8.save(function(err) {
        if(err) throw err;

        console.log('medicine8 successfully saved');
    });

    var medicine9 = new Medicine( {
        name: 'med9',
        company : 'hesabi',
        price: '226'
    });
    medicine9.save(function(err) {
        if(err) throw err;

        console.log('medicine9 successfully saved');
    });

    var medicine10 = new Medicine( {
        name: 'med10',
        company : 'hesabi',
        price: '227'
    });
    medicine10.save(function(err) {
        if(err) throw err;

        console.log('medicine10 successfully saved');
    });
    var medicine11 = new Medicine( {
        name: 'med11',
        company : 'hesabi',
        price: '228'
    });
    medicine11.save(function(err) {
        if(err) throw err;

        console.log('medicine11 successfully saved');
    });
});
