import servicecattledog.Location
import servicecattledog.Service

class BootStrap {

	def init = { servletContext ->

		def service = new Service(title:"ReDBox",
		briefDescription:"ReDBox is an organisational metadata catalog for the tracking of research data holdings. Mint is an associated name authority service.",
		fullDescription:"""
The ReDBox (Research Data Box) system provides organisations with the ability to describe research data and make these descriptions (metadata) available to national/global registers. 
These registers allow researchers from around the world to locate and access research data. 
Primarily a research data registry, ReDBox provides workflows and interfaces for the creation of metadata. 
It is assumed that the actual research data (which can be very large) is hosted via another service. 
However, ReDBox does allow for the upload of data as well as supporting evidence files (e.g licences or IP statements).
Mint is a name authority and vocabulary system that provides services to web applications (such as ReDBox). 
The benefit of using a name authority is in the broad identification of people, groups, projects, services, etc. 
By providing a linked data approach to identification, Mint helps make your identifiers globally unique -  a must for sharing information.
		""",
		licence:"GPL v2",
		creatorName:"Duncan Dickinson",
		creatorEmail:"d.dickinson@qcif.edu.au",
		currentVersion: "1.6.1",
		serviceDescription: "http://support.researchdatabox.com.au",
		supportDescription: "Available via QCIF",
		trainingDescription: "As needed - user pays")
		
	
		
		service.save(failOnError: true)
	}

	def destroy = {
	}
}
