var mongoose = require('mongoose');

var medicineSchema = new mongoose.Schema({
	name : {
		type: String,
		required: true,
		maxlength: 30
	},
	company:{
		type: String,
		required: true,
		maxlength: 30
	},
	price: {
		type: Number,
		required: true
	}
})


var Medicine = mongoose.model('Medicine', medicineSchema);
module.exports = Medicine;
