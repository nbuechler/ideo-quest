package ideology_quiz

import com.ideo.model.UsrProfile
import com.ideo.model.DimRuleMap
import com.ideo.model.StmIdMap
import com.ideo.model.StmIndicator

class IdeologyController {

    def index() { 
	}
	
	//modular question method determines which question it is
	def questionPicker = {
		def hello = "hello"
		def model = [:]
		
		def myThing = []
//		def things = ['dig', 'dug', 'down']
//		for (thing in things){
//			myThing << thing
//		}
//		myThing << request.getParameter("radio").toLong()
//		model.myThing = myThing
//		log.error(myThing)
		
		def nameTest = UsrProfile.executeQuery("select stmIndicator.stmIdMap.nameStatement from UsrProfile")
		
		model.nameTest = nameTest
		
		log.error(model.nameTest)
		
		render (view: "questionPicker", model:model)
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
		long anarchism = radio01 + radio02
		
		long radio03 = session.radio03
		long radio04 = session.radio04
		long authoritarianismT = 0
		long authoritarianism = radio03 + radio04
		
		long radio05 = session.radio05
		long radio06 = session.radio06
		long capitalismT = 0
		long capitalism = radio05 + radio06
		
		long radio07 = session.radio07
		long radio08 = session.radio08
		long conservatismT = 0
		long conservatism = radio07 + radio08
		
		long radio09 = session.radio09
		long radio10 = session.radio10
		long decentralismT = 0
		long decentralism = radio09 + radio10
		
		long radio11 = session.radio11
		long radio12 = session.radio12
		long ecologismT = 0
		long ecologism = radio11 + radio12

		long radio13 = session.radio13
		long radio14 = session.radio14
		long egalitarianismT = 0
		long egalitarianism = radio13 + radio14
		
		long radio15 = session.radio15
		long radio16 = session.radio16
		long fundamentalismT = 0
		long fundamentalism = radio15 + radio16
		
		long radio17 = session.radio17
		long radio18 = session.radio18
		long liberalismT = 0
		long liberalism = radio17 + radio18
		
		long radio19 = session.radio19
		long radio20 = session.radio20
		long radicalismT = 0
		long radicalism = radio19 + radio20
		
		long radio21 = session.radio21
		long radio22 = session.radio22
		long relativismT = 0
		long relativism = radio21 + radio22
		
		long radio23 = session.radio23
		long radio24 = session.radio24
		long socialismT = 0
		long socialism = radio23 + radio24
		
		long radio25 = session.radio25
		long radio26 = 0
		if (request.getParameter("radio") != null){
			radio26 = request.getParameter("radio").toLong()
		} else {
			radio26 = 0;
			}
		log.error(radio26)
		long supremacismT = 0
		long supremacism = radio25 + radio26

		
		//Get all of the scores for each radio button, and put it in an array
		def allQuestionScores = [radio01, radio02, radio03, radio04, radio05, radio06, radio07, radio08, radio09, radio10, radio11, radio12, radio13, radio14, radio15, radio16, radio17, radio18, radio19, radio20, radio21, radio22, radio23, radio24, radio25, radio26]
		log.error("allQuestionScores are " + allQuestionScores)
		
		//Define variables needed
		def allThetaValues = [];
		def allRadiusScores = [];
		def ideologies = [];
		def ideologiesCorrelates = [];
		def thetaDenominator = 0;
		def radiusDenominator = 0;
		
		def allThetaPercentages = [];
		def allThetaRadians = [];
		def allRadiusPercentages = [];
		def allRadiusUnits = [];
		
		//Get the scores for each ideology, which are the T values and radius values
		for (def i=0; i < allQuestionScores.size(); i+=2){
			def sumOfTwoTValues = 0
				if (allQuestionScores[i] != 0){
					sumOfTwoTValues += 1
				}
				if (allQuestionScores[i+1] != 0){
					sumOfTwoTValues += 1
				}
			def sumOfTwoQuestions =	allQuestionScores[i] + allQuestionScores[i+1]
			allRadiusScores << sumOfTwoQuestions
			
				//This logic will create the gap
				//allThetaValues << sumOfTwoTValues
				
				//This logic will remove the gap
				if ((allQuestionScores[i] + allQuestionScores[i+1]) != 0){
					allThetaValues << sumOfTwoTValues
				}
				if (allQuestionScores[i] + allQuestionScores[i+1] == 0){
					allThetaValues << 0
				}
				
		}
		log.error("allThetaValues are " + allThetaValues)
		log.error("allRadiusScores are " + allRadiusScores)
		
		//Figure out if the Radius Score is the Ideology OR the Anti-Ideology
		for (def i=0; i < allRadiusScores.size(); i++){
			if (allRadiusScores[i] > 0){
				ideologies << allRadiusScores[i]
				ideologiesCorrelates << 0
			}
			else if (allRadiusScores[i] < 0){
				ideologiesCorrelates << allRadiusScores[i].abs()
				ideologies << 0
			}
			else {
				ideologies << 0
				ideologiesCorrelates << 0
			}
		}
		log.error(ideologies + "ideologies")
		log.error(ideologiesCorrelates + "ideolgoiesCorrelates")
		
		
		//Create the actual percentage values for Thetas
		
		//Find the theta denominator
		for (def i=0; i < allThetaValues.size(); i++){
			thetaDenominator += allThetaValues[i]
		}
		log.error(thetaDenominator + " is thetaDenominator")
		
		//Build the array of Theta values as percents and radians
		for (def i=0; i < allThetaValues.size(); i++){
			allThetaPercentages << allThetaValues[i]/thetaDenominator
			allThetaRadians << allThetaValues[i]/thetaDenominator * 2 * Math.PI
		}
		log.error(allThetaPercentages + " are allThetaPercentages")
		log.error(allThetaRadians + " are allThetaRadians")
		
		
		//Create the actual percentage values for Radius'
		
		//Find the radius denominator
		for (def i=0; i < ideologies.size(); i++){
			if (ideologies[i] != 0){
				radiusDenominator += ideologies[i]
			}
			if (ideologiesCorrelates[i] != 0){
				radiusDenominator += ideologiesCorrelates[i]
			}
		}
		log.error(radiusDenominator + " is radiusDenominator")
		
		//Build the array of Radius values as percents
		for (def i=0; i < allRadiusScores.size(); i++){
			allRadiusPercentages << (allRadiusScores[i].abs())/radiusDenominator * 100
		}
		log.error(allRadiusPercentages + " are allRadiusPercentages")
		
		//Create the actual values in units for Radius'
		
		//Build the array of Radius values as percents
		for (def i=0; i < allRadiusPercentages.size(); i++){
			if(allThetaRadians[i] != 0){
				allRadiusUnits << Math.sqrt(allRadiusPercentages[i]/allThetaRadians[i])
			} else {
				allRadiusUnits << 0
			}
		}
		log.error(allRadiusUnits + " are allRadiusUnits")
		
		[ideologiesCorrelates:ideologiesCorrelates, ideologies:ideologies,
		allRadiusPercentages:allRadiusPercentages, allRadiusUnits: allRadiusUnits,
		allThetaRadians: allThetaRadians]
		
	}
	
}
