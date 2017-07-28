gym = {
	weight_room: {
		num_exercises: 4,
		exercise_name: [
			"arm curl", "leg curl", "tricep dip", "dumbbells"
		]
	},
	cardio: {
		num_exercises: 3,
		exercise_name: [
			"treadmill", "ellyptical", "stationary bike"
		]
	},
	gymnasium: {
		num_exercises: 2,
		exercise_name: [
			"basketball", "track and field", "racetrack"
		]
	},
	pool: {
		num_exercises: 2,
		exercise_name:[
		"pool", "hot tub"
		]
	}
}
p gym[:weight_room][:exercise_name]

p gym[:pool][:num_exercises]

p gym[:cardio][:exercise_name].push('row machine')

p gym[:gymnasium][:exercise_name][1]

p gym[:gymnasium][:exercise_name].delete('racetrack')

p gym[:weight_room][:num_exercises]