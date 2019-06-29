var mongoose = require('mongoose');

var Patient = require('./Patient');

var relativeSchema = new mongoose.Schema({
	last_name: {
		type: String,
		required: true,
		maxlength: 30
	},
	patient: {
		type: mongoose.Schema.Types.ObjectId,
		ref: Patient,
		required: true,
		index: true
	},
	date : {
		type : Date
	}
})

var Relative = mongoose.model('Relative', relativeSchema);
module.exports = Relative;
