package ideology_quiz

class IdeologyController {

    def index() { 
		
	}
	
	def q02 = {
		
		def radio01 = request.getParameter("radio")
		log.error(radio01)
		session.radio01 = radio01
		[radio01:radio01]
	 }
	
	def q03 = {
		
		log.error(session.radio01 + "session attempt")
		def radio02 = request.getParameter("radio")
		log.error(radio02)
		session.radio02 = radio02
		[radio02:radio02]
	 }
	
	def end = {
		def radio01 = session.radio01
		def radio02 = session.radio02
		def radio03 = request.getParameter("radio")
		log.error(radio03)
		[radio01:radio01, radio02:radio02, radio03:radio03]
	 }
	
}
