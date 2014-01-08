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
		
		log.error(session.radio01 + "session attempt")
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
		long anarchismT = 0
		long statismT = 0
		if (radio01 > 0) {
			anarchismT += 1;
		}
		if (radio02 > 0) {
			anarchismT += 1;
		}
		if (radio01 < 0) {
			statismT += 1;
		}
		if (radio02 < 0) {
			statismT += 1;
		}
		long anarchism = radio01 + radio02
		log.error("anarchism = " + anarchism)
		log.error("statismT = " + statismT)
		String anarchismStatus
		String statismStatus
		if (anarchism >= 5){
			anarchismStatus = "Significantly"
			statismStatus = "Not apparently"
		} else if (anarchism >= 2){
			anarchismStatus = "Moderately"
			statismStatus = "Not apparently"
		} else if (anarchism >= 1){
			anarchismStatus = "Minimally"
			statismStatus = "Not apparently"
		} else if (anarchism <= -5){
			statismStatus = "Significantly"
			anarchismStatus = "Not apparently"
		} else if (anarchism <= -2){
			statismStatus = "Moderately"
			anarchismStatus = "Not apparently"
		} else if (anarchism <= -2) {
			statismStatus = "Minimally"
			anarchismStatus = "Not apparently"
		} else {
			anarchismStatus = "Not apparently"
			statismStatus = "Not apparently"
		}
		log.error("anarchismStatus is " + anarchismStatus + "; statismStatus is " + statismStatus)
		
		
		long radio03 = session.radio03
		long radio04 = session.radio04
		long authoritarianismT = 0
		if (radio03 > 0) {
			authoritarianismT += 1;
		}
		if (radio04 > 0) {
			authoritarianismT += 1;
		}
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
		long capitalismT = 0
		if (radio05 > 0) {
			capitalismT += 1;
		}
		if (radio06 > 0) {
			capitalismT += 1;
		}
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
		long conservatismT = 0
		if (radio07 > 0) {
			conservatismT += 1;
		}
		if (radio08 > 0) {
			conservatismT += 1;
		}
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
		long decentralismT = 0
		if (radio09 > 0) {
			decentralismT += 1;
		}
		if (radio10 > 0) {
			decentralismT += 1;
		}
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
		long ecologismT = 0
		if (radio11 > 0) {
			ecologismT += 1;
		}
		if (radio12 > 0) {
			ecologismT += 1;
		}
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
		long egalitarianismT = 0
		if (radio13 > 0) {
			egalitarianismT += 1;
		}
		if (radio14 > 0) {
			egalitarianismT += 1;
		}
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
		long fundamentalismT = 0
		if (radio15 > 0) {
			fundamentalismT += 1;
		}
		if (radio16 > 0) {
			fundamentalismT += 1;
		}
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
		long liberalismT = 0
		if (radio17 > 0) {
			liberalismT += 1;
		}
		if (radio18 > 0) {
			liberalismT += 1;
		}
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
		long radicalismT = 0
		if (radio19 > 0) {
			radicalismT += 1;
		}
		if (radio20 > 0) {
			radicalismT += 1;
		}
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
		long relativismT = 0
		if (radio21 > 0) {
			relativismT += 1;
		}
		if (radio22 > 0) {
			relativismT += 1;
		}
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
		long socialismT = 0
		if (radio23 > 0) {
			socialismT += 1;
		}
		if (radio24 > 0) {
			socialismT += 1;
		}
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
		long radio26 = 0
		if (request.getParameter("radio") != null){
			radio26 = request.getParameter("radio").toLong()
		} else {
			radio26 = 0;
			}
		log.error(radio26)
		long supremacismT = 0
		if (radio25 > 0) {
			supremacismT += 1;
		}
		if (radio26 > 0) {
			supremacismT += 1;
		}
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

		
		//for each slice, find t divided by the sum of all t's multiplied by 6.28
		long sumAllTValues = anarchismT + authoritarianismT + capitalismT + conservatismT + decentralismT + ecologismT + egalitarianismT + fundamentalismT + liberalismT + radicalismT + relativismT + socialismT + supremacismT
		if (sumAllTValues == 0){
			sumAllTValues = 1;
		}
		
		
		long anarchismTheta = anarchismT/sumAllTValues * 200 * Math.PI
		long authoritarianismTheta = authoritarianismT/sumAllTValues * 200 * Math.PI
		long capitalismTheta = capitalismT/sumAllTValues * 200 * Math.PI 
		long conservatismTheta = conservatismT/sumAllTValues * 200 * Math.PI
		long decentralismTheta = decentralismT/sumAllTValues * 200 * Math.PI
		long ecologismTheta = ecologismT/sumAllTValues * 200 * Math.PI
		long egalitarianismTheta = egalitarianismT/sumAllTValues * 200 * Math.PI
		long fundamentalismTheta = fundamentalismT/sumAllTValues * 200 * Math.PI
		long liberalismTheta = liberalismT/sumAllTValues * 200 * Math.PI
		long radicalismTheta = radicalismT/sumAllTValues * 200 * Math.PI
		long relativismTheta = relativismT/sumAllTValues * 200 * Math.PI
		long socialismTheta = socialismT/sumAllTValues * 200 * Math.PI
		long supremacismTheta = supremacismT/sumAllTValues * 200 * Math.PI
		
		if (anarchismTheta == 0){
			anarchismTheta = 1
		}
		if (authoritarianismTheta == 0){
			authoritarianismTheta = 1
		}
		if (capitalismTheta == 0){
			capitalismTheta = 1
		}
		if (conservatismTheta == 0){
			conservatismTheta = 1
		}
		if (decentralismTheta == 0){
			decentralismTheta = 1
		}
		if (ecologismTheta == 0){
			ecologismTheta = 1
		}
		if (egalitarianismTheta == 0){
			egalitarianismTheta = 1
		}
		if (fundamentalismTheta == 0){
			fundamentalismTheta = 1
		}
		if (liberalismTheta == 0){
			liberalismTheta = 1
		}
		if (radicalismTheta == 0){
			radicalismTheta = 1
		}
		if (relativismTheta == 0){
			relativismTheta = 1
		}
		if (socialismTheta == 0){
			socialismTheta = 1
		}
		if (supremacismTheta == 0){
			supremacismTheta = 1
		}
		
		log.error("egalitarianism theta is " + egalitarianismTheta)
		log.error("ecologism theta is " + ecologismTheta)
		
		long anarchismPercent = 0
		long authoritarianismPercent = 0
		long capitalismPercent = 0
		long conservatismPercent = 0
		long decentralismPercent = 0
		long ecologismPercent = 0
		long egalitarianismPercent = 0
		long fundamentalismPercent = 0
		long liberalismPercent = 0
		long radicalismPercent = 0
		long relativismPercent = 0
		long socialismPercent = 0
		long supremacismPercent = 0
		
		long sumOfAllPoints = (anarchism + authoritarianism + capitalism + conservatism + decentralism + ecologism + egalitarianism + fundamentalism + liberalism + radicalism + relativism + socialism + supremacism)
		
		if (sumOfAllPoints != 0) {
			anarchismPercent = anarchism / (sumOfAllPoints) * 100
			authoritarianismPercent = authoritarianism / (sumOfAllPoints) * 100
			capitalismPercent = capitalism / (sumOfAllPoints) * 100
			conservatismPercent = conservatism / (sumOfAllPoints) * 100
			decentralismPercent = decentralism / (sumOfAllPoints) * 100
			ecologismPercent = ecologism / (sumOfAllPoints) * 100
			egalitarianismPercent = egalitarianism / (sumOfAllPoints) * 100
			fundamentalismPercent = fundamentalism / (sumOfAllPoints) * 100
			liberalismPercent = liberalism / (sumOfAllPoints) * 100
			radicalismPercent = radicalism / (sumOfAllPoints) * 100
			relativismPercent = relativism / (sumOfAllPoints) * 100
			socialismPercent = socialism / (sumOfAllPoints) * 100
			supremacismPercent = supremacism / (sumOfAllPoints) * 100
			log.error("Sum of all the points is " + sumOfAllPoints)
			log.error("egalitarianismPercent is " + egalitarianismPercent)
			log.error("ecologismPercent is " + ecologismPercent)
		} else {
			anarchismPercent = 0
			authoritarianismPercent = 0
			capitalismPercent = 0
			conservatismPercent = 0
			decentralismPercent = 0
			ecologismPercent = 0
			egalitarianismPercent = 0
			fundamentalismPercent = 0
			liberalismPercent = 0
			radicalismPercent = 0
			relativismPercent = 0
			socialismPercent = 0
			supremacismPercent = 0
			}
		
		long anarchismRadius = Math.sqrt((anarchismPercent) / anarchismTheta) * 100
		long authoritarianismRadius = Math.sqrt((authoritarianismPercent) / authoritarianismTheta) * 100
		long capitalismRadius = Math.sqrt((capitalismPercent) / capitalismTheta) * 100
		long conservatismRadius = Math.sqrt((conservatismPercent) / conservatismTheta) * 100
		long decentralismRadius = Math.sqrt((decentralismPercent) / decentralismTheta) * 100
		long ecologismRadius = Math.sqrt((ecologismPercent) / ecologismTheta) * 100
		long egalitarianismRadius = Math.sqrt((egalitarianismPercent) / egalitarianismTheta) * 100
		long fundamentalismRadius = Math.sqrt((fundamentalismPercent) / fundamentalismTheta) * 100
		long liberalismRadius = Math.sqrt((liberalismPercent) / liberalismTheta) * 100
		long radicalismRadius = Math.sqrt((radicalismPercent) / radicalismTheta) * 100
		long relativismRadius = Math.sqrt((relativismPercent) / relativismTheta) * 100
		long socialismRadius = Math.sqrt((socialismPercent) / socialismTheta) * 100
		long supremacismRadius = Math.sqrt((supremacismPercent) / supremacismTheta) * 100
		
		log.error("egalitarianismRadius is " + egalitarianismRadius)
		
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
			relativismPercent:relativismPercent, socialismPercent:socialismPercent, supremacismPercent:supremacismPercent,
			anarchismTheta:anarchismTheta, authoritarianismTheta:authoritarianismTheta, capitalismTheta:capitalismTheta, conservatismTheta:conservatismTheta, decentralismTheta:decentralismTheta, 
			ecologismTheta:ecologismTheta, egalitarianismTheta:egalitarianismTheta, fundamentalismTheta:fundamentalismTheta, liberalismTheta:liberalismTheta, radicalismTheta:radicalismTheta, 
			relativismTheta:relativismTheta, socialismTheta:socialismTheta, supremacismTheta:supremacismTheta,
			anarchismRadius:anarchismRadius, authoritarianismRadius:authoritarianismRadius, capitalismRadius:capitalismRadius, conservatismRadius:conservatismRadius, decentralismRadius:decentralismRadius, 
			ecologismRadius:ecologismRadius, egalitarianismRadius:egalitarianismRadius, fundamentalismRadius:fundamentalismRadius, liberalismRadius:liberalismRadius, radicalismRadius:radicalismRadius, 
			relativismRadius:relativismRadius, socialismRadius:socialismRadius, supremacismRadius:supremacismRadius]
	}
	
}
