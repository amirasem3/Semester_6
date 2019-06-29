var mongoose = require('mongoose');

var Teacher = require('./Teacher');
var Room = require('./Room');

var reserveSchema = new mongoose.Schema({
	starting_date : {
		type: Date
	},
	state: {
		type: String,
		enum: [
			'Rejected',
			'Approved',
			'New',
			'Pending',
			'Finished'
		],
		default: 'New'
	},
	finishing_date: {
		type: Date,
		required: true
	},
	teacher : {
		type: mongoose.Schema.Types.ObjectId,
		ref: Teacher,
		required: true,
		index: true
	},
	room:{
		type: mongoose.Schema.Types.ObjectId,
		ref: Room,
		required: true,
		index: true
	},
	rate:{
		type: Number,
		min: 1,
		max: 5
	}
}, {timestamps : true})

var Reserve = mongoose.model('Reserve', reserveSchema);
module.exports = Reserve;
