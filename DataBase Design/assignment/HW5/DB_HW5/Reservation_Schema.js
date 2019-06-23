let Reserve = new Schema({
	starting_date : {
		type: Date
	},
	state: {
		type: string,
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
	}
	rate : {
		type: Number,
		min: 1,
		max: 5
	}
}, {timestamps : true})

let Room = new Schema({
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

let Teacher = new Schema({
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

let Teacher = new Schema({
	salary :{
		type: Number,
		required: true
	},
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
	birthday: {
		type: Date
	}
})

