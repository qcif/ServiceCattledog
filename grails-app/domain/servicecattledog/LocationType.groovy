package servicecattledog

class LocationType {

	String title
	String description = "No description provided"

	static constraints = { title blank:false }
	
	String toString(){
		return title
	}
}
