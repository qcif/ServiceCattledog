package servicecattledog

class Location {

	String title
	String location
	String description

	static constraints = { location(url:true, blank: false) }
}
