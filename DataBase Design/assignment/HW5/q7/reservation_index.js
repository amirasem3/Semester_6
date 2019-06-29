var mongoose = require('mongoose');

var Room = require('./Room');
var Reserve = require('./Reserve');
var Teacher = require('./Teacher');

mongoose.connect('mongodb://localhost/mongoose_basics', function (err) {
    if (err) throw err;

    console.log('Successfully connected');

    var room1 = new Room({
        room_number:'12',
        price:'123',
        capacity:'5'
    });

    room1.save(function(err) {
        if (err) throw err;

        console.log('room1 successfully saved.');
    });


    var room2 = new Room({
        room_number:'13',
        price:'126',
        capacity:'3'
    });

    room2.save(function(err) {
        if (err) throw err;

        console.log('room2 successfully saved.');
    });

    var room3 = new Room({
        room_number:'2',
        price:'423',
        capacity:'6'
    });

    room3.save(function(err) {
        if (err) throw err;

        console.log('room3 successfully saved.');
    });

    var reserve1 = new Reserve({
        starting_date:"2019-06-27",
        state:'Approved',
        finishing_date:"2019-06-29",
        teacher: '5d15b9bc9d4492af5900b7f3',
        room: '5d15b5a840ab51248a8c71f0',
        rate: '2'
    });

    reserve1.save(function(err) {
        if (err) throw err;

        console.log('reserve1 successfully saved.');
    });


    var reserve2 = new Reserve({
        starting_date:"2019-08-27",
        state:'Rejected',
        finishing_date:"2019-08-29",
        teacher: '5d15b9bc9d4492af5900b7f3',
        room: '5d15b5a840ab51248a8c71ef',
        rate: '3'
    });

    reserve2.save(function(err) {
        if (err) throw err;

        console.log('reserve2 successfully saved.');
    });

    var reserve3 = new Reserve({
        starting_date:"2018-06-27",
        state:'Approved',
        finishing_date:"2018-07-29",
        teacher: '5d15b9bc9d4492af5900b7f1',
        room: '5d15b5a840ab51248a8c71f0',
        rate: '2'
    });

    reserve3.save(function(err) {
        if (err) throw err;

        console.log('reserve3 successfully saved.');
    });


    var reserve4 = new Reserve({
        starting_date:"2018-08-27",
        state:'Rejected',
        finishing_date:"2018-09-09",
        teacher: '5d15b9bc9d4492af5900b7f2',
        room: '5d15b5a840ab51248a8c71ef',
        rate: '3'
    });

    reserve4.save(function(err) {
        if (err) throw err;

        console.log('reserve4 successfully saved.');
    });


    var teacher1 = new Teacher({
        salary:'1234',
        first_name:'alireza',
        last_name:'vaziri',
        birthday:"1979-06-27"
    });

    teacher1.save(function(err) {
        if (err) throw err;

        console.log('teacher1 successfully saved.');
    });

    var teacher2 = new Teacher({
        salary:'4734',
        first_name:'reza',
        last_name:'vahidi',
        birthday:"1989-06-27"
    });

    teacher2.save(function(err) {
        if (err) throw err;

        console.log('teacher2 successfully saved.');
    });

    var teacher3 = new Teacher({
        salary:'9324',
        first_name:'hamid',
        last_name:'kashani',
        birthday:"1963-06-27"
    });

    teacher3.save(function(err) {
        if (err) throw err;

        console.log('teacher3 successfully saved.');
    });

});
