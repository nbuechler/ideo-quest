package ideology_quiz

class IdeologyController {

    def index() { 
		
	}
	
	def q02 = {
		
		long radio01 = request.getParameter("radio").toLong()
		log.error(radio01)
		session.radio01 = radio01
		[radio01:radio01]
	 }
	
	def q03 = {
		
		log.error(session.radio01 + "session attempt11")
		def radio02 = request.getParameter("radio").toLong()
		log.error(radio02)
		session.radio02 = radio02
		[radio02:radio02]
	 }
	
	
	def q04 = {
		
		log.error(session.radio02 + "session attempt")
		long radio03 = request.getParameter("radio").toLong()
		log.error(radio03.toString())
		session.radio03 = radio03
		[radio03:radio03]
	 }
	
	
	def q05 = {
		
		log.error(session.radio03 + "session attempt")
		long radio04 = request.getParameter("radio").toLong()
		log.error(radio04)
		session.radio04 = radio04
		[radio04:radio04]
	 }
	
	
	def q06 = {
		
		log.error(session.radio04 + "session attempt")
		long radio05 = request.getParameter("radio").toLong()
		log.error(radio05)
		session.radio05 = radio05
		[radio05:radio05]
	 }
	
	
	def q07 = {
		
		log.error(session.radio05 + "session attempt")
		long radio06 = request.getParameter("radio").toLong()
		log.error(radio06)
		session.radio06 = radio06
		[radio06:radio06]
	 }
	
	
	def q08 = {
		
		log.error(session.radio06 + "session attempt")
		long radio07 = request.getParameter("radio").toLong()
		log.error(radio07)
		session.radio07 = radio07
		[radio07:radio07]
	 }
	
	
	def q09 = {
		
		log.error(session.radio07 + "session attempt")
		long radio08 = request.getParameter("radio").toLong()
		log.error(radio08)
		session.radio08 = radio08
		[radio08:radio08]
	 }
	
	
	def q10 = {
		
		log.error(session.radio08 + "session attempt")
		long radio09 = request.getParameter("radio").toLong()
		log.error(radio09)
		session.radio09 = radio09
		[radio09:radio09]
	 }
	
	
	def q11 = {
		
		log.error(session.radio09 + "session attempt")
		long radio10 = request.getParameter("radio").toLong()
		log.error(radio10)
		session.radio10 = radio10
		[radio10:radio10]
	 }
	
	
	def q12 = {
		
		log.error(session.radio10 + "session attempt")
		long radio11 = request.getParameter("radio").toLong()
		log.error(radio11)
		session.radio11 = radio11
		[radio11:radio11]
	 }
	
	
	def q13 = {
		
		log.error(session.radio11 + "session attempt")
		long radio12 = request.getParameter("radio").toLong()
		log.error(radio12)
		session.radio12 = radio12
		[radio12:radio12]
	 }
	
	
	def q14 = {
		
		log.error(session.radio12 + "session attempt")
		long radio13 = request.getParameter("radio").toLong()
		log.error(radio13)
		session.radio13 = radio13
		[radio13:radio13]
	 }
	
	
	def q15 = {
		
		log.error(session.radio13 + "session attempt")
		long radio14 = request.getParameter("radio").toLong()
		log.error(radio14)
		session.radio14 = radio14
		[radio14:radio14]
	 }
	
	
	def q16 = {
		
		log.error(session.radio14 + "session attempt")
		long radio15 = request.getParameter("radio").toLong()
		log.error(radio15)
		session.radio15 = radio15
		[radio15:radio15]
	 }
	
	
	def q17 = {
		
		log.error(session.radio15 + "session attempt")
		long radio16 = request.getParameter("radio").toLong()
		log.error(radio16)
		session.radio16 = radio16
		[radio16:radio16]
	 }
	
	
	def q18 = {
		
		log.error(session.radio16 + "session attempt")
		long radio17 = request.getParameter("radio").toLong()
		log.error(radio17)
		session.radio17 = radio17
		[radio17:radio17]
	 }
	
	
	def q19 = {
		
		log.error(session.radio17 + "session attempt")
		long radio18 = request.getParameter("radio").toLong()
		log.error(radio18)
		session.radio18 = radio18
		[radio18:radio18]
	 }
	
	
	def q20 = {
		
		log.error(session.radio18 + "session attempt")
		long radio19 = request.getParameter("radio").toLong()
		log.error(radio19)
		session.radio19 = radio19
		[radio19:radio19]
	 }
	
	
	def q21 = {
		
		log.error(session.radio19 + "session attempt")
		long radio20 = request.getParameter("radio").toLong()
		log.error(radio20)
		session.radio20 = radio20
		[radio20:radio20]
	 }
	
	
	def q22 = {
		
		log.error(session.radio20 + "session attempt")
		long radio21 = request.getParameter("radio").toLong()
		log.error(radio21)
		session.radio21 = radio21
		[radio21:radio21]
	 }
	
	
	def q23 = {
		
		log.error(session.radio21 + "session attempt")
		long radio22 = request.getParameter("radio").toLong()
		log.error(radio22)
		session.radio22 = radio22
		[radio22:radio22]
	 }
	
	
	def q24 = {
		
		log.error(session.radio22 + "session attempt")
		long radio23 = request.getParameter("radio").toLong()
		log.error(radio23)
		session.radio23 = radio23
		[radio23:radio23]
	 }
	
	
	def q25 = {
		
		log.error(session.radio23 + "session attempt")
		long radio24 = request.getParameter("radio").toLong()
		log.error(radio24)
		session.radio24 = radio24
		[radio24:radio24]
	 }
	
	def q26 = {
		
		log.error(session.radio24 + "session attempt")
		long radio25 = request.getParameter("radio").toLong()
		log.error(radio25)
		session.radio25 = radio25
		[radio25:radio25]
	 }
		
	def end = {
		long radio01 = session.radio01
		long radio02 = session.radio02
		long anarchism = radio01 + radio02
		log.error("anarchism = " + anarchism)
		String anarchismStatus
		if (anarchism >= 5){
			anarchismStatus = "Significantly"
		} else if (anarchism >= 2){
			anarchismStatus = "Moderately"
		} else {
			anarchismStatus = "Minimally"
		}
		
		long radio03 = session.radio03
		long radio04 = session.radio04
		long authoritarianism = radio03 + radio04
		log.error("authoritarianism = " + authoritarianism)
		String authoritarianismStatus
		if (authoritarianism >= 5){
			authoritarianismStatus = "Significantly"
		} else if (authoritarianism >= 2){
			authoritarianismStatus = "Moderately"
		} else {
			authoritarianismStatus = "Minimally"
		}
		
		long radio05 = session.radio05
		long radio06 = session.radio06
		long capitalism = radio05 + radio06
		log.error("capitalism = " + capitalism)
		String capitalismStatus
		if (capitalism >= 5){
			capitalismStatus = "Significantly"
		} else if (capitalism >= 2){
			capitalismStatus = "Moderately"
		} else {
			capitalismStatus = "Minimally"
		}
		
		long radio07 = session.radio07
		long radio08 = session.radio08
		long conservatism = radio07 + radio08
		log.error("conservatism = " + conservatism)
		String conservatismStatus
		if (conservatism >= 5){
			conservatismStatus = "Significantly"
		} else if (conservatism >= 2){
			conservatismStatus = "Moderately"
		} else {
			conservatismStatus = "Minimally"
		}
		
		long radio09 = session.radio09
		long radio10 = session.radio10
		long decentralism = radio09 + radio10
		log.error("decentralism = " + decentralism)
		String decentralismStatus
		if (decentralism >= 5){
			decentralismStatus = "Significantly"
		} else if (decentralism >= 2){
			decentralismStatus = "Moderately"
		} else {
			decentralismStatus = "Minimally"
		}
		
		long radio11 = session.radio11
		long radio12 = session.radio12
		long ecologism = radio11 + radio12
		log.error("ecologism = " + ecologism)
		String ecologismStatus
		if (ecologism >= 5){
			ecologismStatus = "Significantly"
		} else if (ecologism >= 2){
			ecologismStatus = "Moderately"
		} else {
			ecologismStatus = "Minimally"
		}
		
		long radio13 = session.radio13
		long radio14 = session.radio14
		long egalitarianism = radio13 + radio14
		log.error("egalitarianism = " + egalitarianism)
		String egalitarianismStatus
		if (egalitarianism >= 5){
			egalitarianismStatus = "Significantly"
		} else if (egalitarianism >= 2){
			egalitarianismStatus = "Moderately"
		} else {
			egalitarianismStatus = "Minimally"
		}
		
		long radio15 = session.radio15
		long radio16 = session.radio16
		long fundamentalism = radio15 + radio16
		log.error("fundamentalism = " + fundamentalism)
		String fundamentalismStatus
		if (fundamentalism >= 5){
			fundamentalismStatus = "Significantly"
		} else if (fundamentalism >= 2){
			fundamentalismStatus = "Moderately"
		} else {
			fundamentalismStatus = "Minimally"
		}
		
		long radio17 = session.radio17
		long radio18 = session.radio18
		long liberalism = radio17 + radio18
		log.error("liberalism = " + liberalism)
		String liberalismStatus
		if (liberalism >= 5){
			liberalismStatus = "Significantly"
		} else if (liberalism >= 2){
			liberalismStatus = "Moderately"
		} else {
			liberalismStatus = "Minimally"
		}
		
		long radio19 = session.radio19
		long radio20 = session.radio20
		long radicalism = radio19 + radio20
		log.error("radicalism = " + radicalism)
		String radicalismStatus
		if (radicalism >= 5){
			radicalismStatus = "Significantly"
		} else if (radicalism >= 2){
			radicalismStatus = "Moderately"
		} else {
			radicalismStatus = "Minimally"
		}
		
		long radio21 = session.radio21
		long radio22 = session.radio22
		long relativism = radio21 + radio22
		log.error("relativism = " + relativism)
		String relativismStatus
		if (relativism >= 5){
			relativismStatus = "Significantly"
		} else if (relativism >= 2){
			relativismStatus = "Moderately"
		} else {
			relativismStatus = "Minimally"
		}
		
		long radio23 = session.radio23
		long radio24 = session.radio24
		long socialism = radio23 + radio24
		log.error("socialism = " + socialism)
		String socialismStatus
		if (socialism >= 5){
			socialismStatus = "Significantly"
		} else if (socialism >= 2){
			socialismStatus = "Moderately"
		} else {
			socialismStatus = "Minimally"
		}
		
		long radio25 = session.radio25
		long radio26 = request.getParameter("radio").toLong()
		long supremacism = radio25 + radio26
		log.error("supremacism = " + supremacism)
		String supremacismStatus
		if (supremacism >= 5){
			supremacismStatus = "Significantly"
		} else if (supremacism >= 2){
			supremacismStatus = "Moderately"
		} else {
			supremacismStatus = "Minimally"
		}

		long anarchismPercent = anarchism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long authoritarianismPercent = authoritarianism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long capitalismPercent = capitalism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long conservatismPercent = conservatism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long decentralismPercent = decentralism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long ecologismPercent = ecologism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long egalitarianismPercent = egalitarianism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long fundamentalismPercent = fundamentalism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long liberalismPercent = liberalism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long radicalismPercent = radicalism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long relativismPercent = relativism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long socialismPercent = socialism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		long supremacismPercent = supremacism / (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism) * 100
		
		
		
		log.error(radio26)
		[radio01:radio01, radio02:radio02, radio03:radio03, radio04:radio04, radio05:radio05, radio06:radio06, radio07:radio07, 
			radio08:radio08, radio09:radio09, radio10:radio10, radio11:radio11, radio12:radio12, radio13:radio13, radio14:radio14, 
			radio15:radio15, radio16:radio16, radio17:radio17, radio18:radio18, radio19:radio19, radio20:radio20, radio21:radio21, 
			radio22:radio22, radio23:radio23, radio24:radio24, radio25:radio25, radio26:radio26, 
			anarchism:anarchism, authoritarianism:authoritarianism, capitalism:capitalism, conservatism:conservatism, decentralism:decentralism, 
			ecologism:ecologism, egalitarianism:egalitarianism, fundamentalism:fundamentalism, liberalism:liberalism, radicalism:radicalism, 
			relativism:relativism, socialism:socialism, supremacism:supremacism, 
			anarchismStatus:anarchismStatus, authoritarianismStatus:authoritarianismStatus, capitalismStatus:capitalismStatus, conservatismStatus:conservatismStatus, decentralismStatus:decentralismStatus, 
			ecologismStatus:ecologismStatus, egalitarianismStatus:egalitarianismStatus, fundamentalismStatus:fundamentalismStatus, liberalismStatus:liberalismStatus, radicalismStatus:radicalismStatus, 
			relativismStatus:relativismStatus, socialismStatus:socialismStatus, supremacismStatus:supremacismStatus,
			anarchismPercent:anarchismPercent, authoritarianismPercent:authoritarianismPercent, capitalismPercent:capitalismPercent, conservatismPercent:conservatismPercent, decentralismPercent:decentralismPercent, 
			ecologismPercent:ecologismPercent, egalitarianismPercent:egalitarianismPercent, fundamentalismPercent:fundamentalismPercent, liberalismPercent:liberalismPercent, radicalismPercent:radicalismPercent, 
			relativismPercent:relativismPercent, socialismPercent:socialismPercent, supremacismPercent:supremacismPercent]
	}
	
}
