package servicecattledog

class Service {
	static searchable = true

	RecordMetadata metadata
	static embedded = ['metadata']
	
	//Service description
	String title
	String brief_description
	String full_description
	String current_version
	String licence

	//Support provision
	String support_description
	String training_description
	String service_description

	//Key resources
	static hasMany = [
		location_public_website:Location,
		location_service_desk:Location,
		location_user_mailing_list:Location,
		location_technical_mailing_list:Location,
		location_developer_resources:Location,
		location_system_overview:Location,
		location_registration_pack:Location,
		location_user_guide:Location,
		location_faq:Location,
		location_install_guide:Location,
		location_sysadmin_guide:Location,
		location_developer_guide:Location,
		location_issues_register:Location,
		location_codebase:Location,
		location_security_configuration:Location,
		location_release_notes:Location]


	static constraints = {
	}
}
