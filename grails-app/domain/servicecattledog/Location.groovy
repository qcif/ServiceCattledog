package servicecattledog

class Location {

	static belongsTo = [service: Service]
	
	String title = ""
	LocationType type
	String url
	String description = ""

	//static constraints = { url(blank: false) }
}
