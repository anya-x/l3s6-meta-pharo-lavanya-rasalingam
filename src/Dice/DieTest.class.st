Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testCreationIsOkay [

	| d |
	d := Die withFaces: 20.
	self assert: d faces equals: 20
]

{ #category : #tests }
DieTest >> testInitialisedCorrectly [
	
	| d |
	d := Die new.
	self assert: d faces equals: 6
]

{ #category : #tests }
DieTest >> testRolling [

	| d |
	d := Die new.
	100 timesRepeat: 
		[ self assert: (d roll between: 1 and: 6 ) ]
]
