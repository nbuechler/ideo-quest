package ideology_quiz

class IdeologyController {

    def index() { 
		
	}
	
//	def save = {
//		
//		def question01 = request.getParameter("radio");
//		log.debug("This is a test:" + question01)
//		
//		render(view: "results")
//	}
	
	def results = {
		def username = request.getParameter("radio")
		log.debug("!!!" + username)
	 }
	
}
