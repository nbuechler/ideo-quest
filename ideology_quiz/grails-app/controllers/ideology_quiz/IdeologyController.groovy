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
	
	
	def q04 = {
		
		log.error(session.radio02 + "session attempt")
		def radio03 = request.getParameter("radio")
		log.error(radio03)
		session.radio03 = radio03
		[radio03:radio03]
	 }
	
	
	def q05 = {
		
		log.error(session.radio03 + "session attempt")
		def radio04 = request.getParameter("radio")
		log.error(radio04)
		session.radio04 = radio04
		[radio04:radio04]
	 }
	
	
	def q06 = {
		
		log.error(session.radio04 + "session attempt")
		def radio05 = request.getParameter("radio")
		log.error(radio05)
		session.radio05 = radio05
		[radio05:radio05]
	 }
	
	
	def q07 = {
		
		log.error(session.radio05 + "session attempt")
		def radio06 = request.getParameter("radio")
		log.error(radio06)
		session.radio06 = radio06
		[radio06:radio06]
	 }
	
	
	def q08 = {
		
		log.error(session.radio06 + "session attempt")
		def radio07 = request.getParameter("radio")
		log.error(radio07)
		session.radio07 = radio07
		[radio07:radio07]
	 }
	
	
	def q09 = {
		
		log.error(session.radio07 + "session attempt")
		def radio08 = request.getParameter("radio")
		log.error(radio08)
		session.radio08 = radio08
		[radio08:radio08]
	 }
	
	
	def q10 = {
		
		log.error(session.radio08 + "session attempt")
		def radio09 = request.getParameter("radio")
		log.error(radio09)
		session.radio09 = radio09
		[radio09:radio09]
	 }
	
	
	def q11 = {
		
		log.error(session.radio09 + "session attempt")
		def radio10 = request.getParameter("radio")
		log.error(radio10)
		session.radio10 = radio10
		[radio10:radio10]
	 }
	
	
	def q12 = {
		
		log.error(session.radio10 + "session attempt")
		def radio11 = request.getParameter("radio")
		log.error(radio11)
		session.radio11 = radio11
		[radio11:radio11]
	 }
	
	
	def q13 = {
		
		log.error(session.radio11 + "session attempt")
		def radio12 = request.getParameter("radio")
		log.error(radio12)
		session.radio12 = radio12
		[radio12:radio12]
	 }
	
	
	def q14 = {
		
		log.error(session.radio12 + "session attempt")
		def radio13 = request.getParameter("radio")
		log.error(radio13)
		session.radio13 = radio13
		[radio13:radio13]
	 }
	
	
	def q15 = {
		
		log.error(session.radio13 + "session attempt")
		def radio14 = request.getParameter("radio")
		log.error(radio14)
		session.radio14 = radio14
		[radio14:radio14]
	 }
	
	
	def q16 = {
		
		log.error(session.radio14 + "session attempt")
		def radio15 = request.getParameter("radio")
		log.error(radio15)
		session.radio15 = radio15
		[radio15:radio15]
	 }
	
	
	def q17 = {
		
		log.error(session.radio15 + "session attempt")
		def radio16 = request.getParameter("radio")
		log.error(radio16)
		session.radio16 = radio16
		[radio16:radio16]
	 }
	
	
	def q18 = {
		
		log.error(session.radio16 + "session attempt")
		def radio17 = request.getParameter("radio")
		log.error(radio17)
		session.radio17 = radio17
		[radio17:radio17]
	 }
	
	
	def q19 = {
		
		log.error(session.radio17 + "session attempt")
		def radio18 = request.getParameter("radio")
		log.error(radio18)
		session.radio18 = radio18
		[radio18:radio18]
	 }
	
	
	def q20 = {
		
		log.error(session.radio18 + "session attempt")
		def radio19 = request.getParameter("radio")
		log.error(radio19)
		session.radio19 = radio19
		[radio19:radio19]
	 }
	
	
	def q21 = {
		
		log.error(session.radio19 + "session attempt")
		def radio20 = request.getParameter("radio")
		log.error(radio20)
		session.radio20 = radio20
		[radio20:radio20]
	 }
	
	
	def q22 = {
		
		log.error(session.radio20 + "session attempt")
		def radio21 = request.getParameter("radio")
		log.error(radio21)
		session.radio21 = radio21
		[radio21:radio21]
	 }
	
	
	def q23 = {
		
		log.error(session.radio21 + "session attempt")
		def radio22 = request.getParameter("radio")
		log.error(radio22)
		session.radio22 = radio22
		[radio22:radio22]
	 }
	
	
	def q24 = {
		
		log.error(session.radio22 + "session attempt")
		def radio23 = request.getParameter("radio")
		log.error(radio23)
		session.radio23 = radio23
		[radio23:radio23]
	 }
	
	
	def q25 = {
		
		log.error(session.radio23 + "session attempt")
		def radio24 = request.getParameter("radio")
		log.error(radio24)
		session.radio24 = radio24
		[radio24:radio24]
	 }
	
	def q26 = {
		
		log.error(session.radio24 + "session attempt")
		def radio25 = request.getParameter("radio")
		log.error(radio25)
		session.radio25 = radio25
		[radio25:radio25]
	 }
		
	def end = {
		def radio01 = session.radio01
		def radio02 = session.radio02
		def radio03 = session.radio03
		def radio04 = session.radio04
		def radio05 = session.radio05
		def radio06 = session.radio06
		def radio07 = session.radio07
		def radio08 = session.radio08
		def radio09 = session.radio09
		def radio10 = session.radio10
		def radio11 = session.radio11
		def radio12 = session.radio12
		def radio13 = session.radio13
		def radio14 = session.radio14
		def radio15 = session.radio15
		def radio16 = session.radio16
		def radio17 = session.radio17
		def radio18 = session.radio18
		def radio19 = session.radio19
		def radio20 = session.radio20
		def radio21 = session.radio21
		def radio22 = session.radio22
		def radio23 = session.radio23
		def radio24 = session.radio24
		def radio25 = session.radio25
		def radio26 = request.getParameter("radio")
		log.error(radio26)
		[radio01:radio01, radio02:radio02, radio03:radio03, radio04:radio04, radio05:radio05, radio06:radio06, radio07:radio07, radio08:radio08, radio09:radio09, radio10:radio10, radio11:radio11, radio12:radio12, radio13:radio13, radio14:radio14, radio15:radio15, radio16:radio16, radio17:radio17, radio18:radio18, radio19:radio19, radio20:radio20, radio21:radio21, radio22:radio22, radio23:radio23, radio24:radio24, radio25:radio25, radio26:radio26]
	 }
	
}
