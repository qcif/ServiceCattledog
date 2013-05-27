package servicecattledog

class LocationType {

	String title
	String description = "No description provided"
	Boolean tier0 = false
	Boolean tier1 = false
	Boolean tier2 = false

	static constraints = { title blank:false }
	
	String toString(){
		return title
	}
}
