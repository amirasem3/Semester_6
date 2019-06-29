var mongoose = require('mongoose');

var teacherSchema = new mongoose.Schema({
	salary :{
		type: Number,
		required: true
	},
	first_name: {
		type: String,
		required: true
	},
	last_name: {
		type: String,
		required: true
	},
	birthday: {
		type: Date,
		required: true
	}
})

var Teacher = mongoose.model('Teacher', teacherSchema);
module.exports = Teacher;
