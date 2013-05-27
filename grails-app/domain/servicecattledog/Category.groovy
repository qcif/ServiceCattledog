package servicecattledog

class Category {

	String title
	String description = "No description provided"
	
    static constraints = {
		title blank:false
    }
}
