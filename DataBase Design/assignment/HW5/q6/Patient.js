var mongoose = require('mongoose');


var patientSchema = new mongoose.Schema({
	first_name: {
		type: String,
		required: true,
		maxlength: 30
	},
	last_name: {
		type: String,
		required: true,
		maxlength: 30
	}
})

var Patient = mongoose.model('Patient', patientSchema);
module.exports = Patient;
