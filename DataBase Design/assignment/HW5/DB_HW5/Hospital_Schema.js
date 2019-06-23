let Doctor = new Schema({
	first_name: {
		type: String,
		required: true,
		maxlength: 30
	},
	last_name: {
		type: String,
		required: true,
		maxlength: 30
	},
	profession : {
		type: Number,
		required: true
	}
})

let Medicine = new Schema({
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

let Nurse = new Schema({
	first_name: {
		type: String,
		required: true,
		maxlength: 30
	},
	last_name: {
		type: String,
		required: true,
		maxlength: 30
	},
	shift : {
		type: Number,
		required: true
	}
})

let Patient = new Schema({
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

let Relative = new Schema({
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

let Room = new Schema({
	room_number : {
		type : Number,
		required: true,
		unique: true,
		index: true
	},
	type: {
		type: Number,
		required: true
	}
})

let Supervision = new Schema({
	nurse: {
		type: mongoose.Schema.Types.ObjectId,
		ref: Nurse,
		required: true,
		index: true
	},
	room : {
		type: mongoose.Schema.Types.ObjectId,
		ref: Room,
		required: true,
		index: true	
	},
	date: {
		type: Date
	}
})

let Visit = new Schema({
	doctor: {
		type: mongoose.Schema.Types.ObjectId,
		ref: Doctor,
		required: true,
		index: true	
	},
	patient: {
		type: mongoose.Schema.Types.ObjectId,
		ref: Patient,
		required: true,
		index: true	
	},
	room_number : {
		type: Number,
		index: true
	},
	date : {
		type : Date
	}
})

let Prescription = new Schema({
	medicine : {
		type: mongoose.Schema.Types.ObjectId,
		ref: Medicine,
		required: true,
		index: true
	},
	visit : {
		type: mongoose.Schema.Types.ObjectId,
		ref: Visit,
		required: true,
		index: true
	}
})
Prescription.index({ medicine: 1, visit: 1 }, { unique: true });