package ideology_quiz

class ReadingController {

	def ideoList = [];
	
    def index() {
		this.ideoListMaker()
		[ideoList:ideoList]
	}
	
	def ideoListMaker() {
		ideoList << "anarchism"
		ideoList << "anthropocentrism"
		ideoList << "authoritarianism"
		ideoList << "capitalism"
		ideoList << "centralism"
		ideoList << "conservatism"
		ideoList << "corporatism"
		ideoList << "decentralism"
		ideoList << "democratism"
		ideoList << "ecologism"
		ideoList << "egalitarianism"
		ideoList << "elitism"
		ideoList << "ethnocentrism"
		ideoList << "fascism"
		ideoList << "fundamentalism"
		ideoList << "liberalism"
		ideoList << "loyalism"
		ideoList << "marxism"
		ideoList << "pluralism"
		ideoList << "progressivism"
		ideoList << "radicalism"
		ideoList << "relativism"
		ideoList << "republicanism"
		ideoList << "socialism"
		ideoList << "statism"
		ideoList << "supremacism"
	}
	
	def anarchism() {
		this.ideoListMaker()
		[ideoList:ideoList]
		render template: 'anarchism',
			contentType: 'text/plain'
	}
	
	def anthropocentrism() {
		this.ideoListMaker()
		[ideoList:ideoList]
		render template: 'anthropocentrism',
			contentType: 'text/plain'
	}
	
	def authoritarianism() {
		render template: 'authoritarianism',
			contentType: 'text/plain'
	}
	
	def capitalism() {
		render template: 'capitalism',
			contentType: 'text/plain'
	}
	
	def centralism() {
		render template: 'centralism',
			contentType: 'text/plain'
	}
	
	def conservatism() {
		render template: 'conservatism',
			contentType: 'text/plain'
	}
	
	def corporatism() {
		render template: 'corporatism',
			contentType: 'text/plain'
	}
	
	def decentralism() {
		render template: 'decentralism',
			contentType: 'text/plain'
	}
	
	def democratism() {
		render template: 'democratism',
			contentType: 'text/plain'
	}
	
	def ecologism() {
		render template: 'ecologism',
			contentType: 'text/plain'
	}
	
	def egalitarianism() {
		render template: 'egalitarianism',
			contentType: 'text/plain'
	}
	
	def elitism() {
		render template: 'elitism',
			contentType: 'text/plain'
	}
	
	def ethnocentrism() {
		render template: 'ethnocentrism',
			contentType: 'text/plain'
	}
	
	def fascism() {
		render template: 'fascism',
			contentType: 'text/plain'
	}
	
	def fundamentalism() {
		render template: 'fundamentalism',
			contentType: 'text/plain'
	}
	
	def liberalism() {
		render template: 'liberalism',
			contentType: 'text/plain'
	}
	
	def loyalism() {
		render template: 'loyalism',
			contentType: 'text/plain'
	}
	
	def marxism() {
		render template: 'marxism',
			contentType: 'text/plain'
	}
	
	def pluralism() {
		render template: 'pluralism',
			contentType: 'text/plain'
	}
	
	def progressivism() {
		render template: 'progressivism',
			contentType: 'text/plain'
	}
	
	def radicalism() {
		render template: 'radicalism',
			contentType: 'text/plain'
	}
	
	def relativism() {
		render template: 'relativism',
			contentType: 'text/plain'
	}
	
	def republicanism() {
		render template: 'republicanism',
			contentType: 'text/plain'
	}
	
	def socialism() {
		render template: 'socialism',
			contentType: 'text/plain'
	}
	
	def statism() {
		this.ideoListMaker()
		[ideoList:ideoList]
		render template: 'statism',
			contentType: 'text/plain'
	}
	
	def supremacism() {
		render template: 'supremacism',
			contentType: 'text/plain'
	}
	
	
}
