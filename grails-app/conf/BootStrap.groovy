import servicecattledog.Location
import servicecattledog.Service
import servicecattledog.Category
import servicecattledog.LocationType
import grails.util.Environment

class BootStrap {

	def init = { servletContext ->
		
		//Base categories
		new Category(title:"Security").save(failOnError: true)
		new Category(title:"Analysis").save(failOnError: true)
		new Category(title:"Management").save(failOnError: true)
		new Category(title:"Workflow").save(failOnError: true)
		new Category(title:"Spatial").save(failOnError: true)
		new Category(title:"Other").save(failOnError: true)
		
		//Base location types
		new LocationType(title:"Public website").save(failOnError: true)
		new LocationType(title:"Service desk").save(failOnError: true)
		new LocationType(title:"User mailing list").save(failOnError: true)
		new LocationType(title:"Technical mailing list").save(failOnError: true)
		new LocationType(title:"Developer resources").save(failOnError: true)
		new LocationType(title:"System overview").save(failOnError: true)
		new LocationType(title:"Registration pack").save(failOnError: true)
		new LocationType(title:"FAQ/Knowledge base").save(failOnError: true)
		new LocationType(title:"Installation guide").save(failOnError: true)
		new LocationType(title:"System requirements").save(failOnError: true)
		new LocationType(title:"Administration guide").save(failOnError: true)
		new LocationType(title:"Developer guide").save(failOnError: true)
		new LocationType(title:"Issues register").save(failOnError: true)
		new LocationType(title:"Codebase").save(failOnError: true)
		new LocationType(title:"Security configuration").save(failOnError: true)
		new LocationType(title:"Technical background").save(failOnError: true)
		new LocationType(title:"Release/version details").save(failOnError: true)
		
		switch(Environment.current){
			case Environment.DEVELOPMENT:
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
				service.addToCategories(Category.findByTitle("Management"))
				service.addToLocations(new Location(url:"http://www.redboxresearchdata.com.au/", type:LocationType.findByTitle("Public website")))
				
				service.save(failOnError:true)
				
				
			//service.addToLocationServiceDesk(new Location(url:"http://www.qcif.edu.au/services/redbox"))

				//service.save(failOnError: true)
				break
		}
	}

	def destroy = {
	}
}
