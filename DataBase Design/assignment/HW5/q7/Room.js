var mongoose = require('mongoose');

var roomSchema = new mongoose.Schema({
	room_number : {
		type: Number,
		required: true,
		unique: true,
		index: true
	},
	price: {
		type: Number,
		required: true
	},
	capacity : {
		type: Number,
		required: true
	}
})

var Room = mongoose.model('Room', roomSchema);
module.exports = Room;
