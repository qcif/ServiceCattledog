package servicecattledog

import java.util.Date;

class Service {
	String creatorName
	String creatorEmail
	Date dateCreated
	Date lastUpdated

	//Service description
	String title
	String briefDescription
	String fullDescription
	String currentVersion
	String licence
	String website

	//Support provision
	String supportDescription
	String trainingDescription
	String serviceDescription

	//Key resources
	static hasMany = [
		categories: Category,
		locations: Location]


	static constraints = {
		title blank:false
		briefDescription blank:false, size: 1..255
		fullDescription blank:false, size: 1..1000
		creatorName blank:false
		creatorEmail blank:false, email:true
		categories blank:false
		website url:true
	}

	static searchable = [only: ['title', 'briefDescription', 'fullDescription'],
		spellCheck: "include"]
	
	String toString(){
		return "$title"
	}

}
