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

	//Support provision
	String supportDescription
	String trainingDescription
	String serviceDescription

	//Key resources
	static hasMany = [
		locationPublicWebsite:Location,
		locationServiceDesk:Location,
		locationUserMailingList:Location,
		locationTechnicalMailingList:Location,
		locationDeveloperResources:Location,
		locationSystemOverview:Location,
		locationRegistrationPack:Location,
		locationUserGuide:Location,
		locationFaq:Location,
		locationInstallGuide:Location,
		locationAdminGuide:Location,
		locationDeveloperGuide:Location,
		locationIssuesRegister:Location,
		locationCodebase:Location,
		locationSecurityConfiguration:Location,
		locationReleaseNotes:Location]


	static constraints = {
		title(blank:false)
		briefDescription(blank:false, size: 1..255)
		fullDescription(blank:false, size: 1..1000)
		creatorName(blank:false)
		creatorEmail(blank:false, email:true)
	}

	static searchable = [only: ['title', 'briefdescription', 'fulldescription'],
		spellCheck: "include"]

}
