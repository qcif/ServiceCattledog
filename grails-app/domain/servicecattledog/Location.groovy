package servicecattledog

class Location {

	static belongsTo = [service: Service]
	
	String title = ""
	LocationType type
	String url
	String description = ""

	static constraints = { 
		url blank: false, url:true
		type blank:false
	}
	
	String toString(){
		return "$type: $url"
	}
}
