Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #Counter
}

{ #category : #'as yet unclassified' }
CounterTest >> testAllMethods [

	| c |
	c := Counter startingAt: 5.
	self assert: (c increment; count) equals: 6
]

{ #category : #accessing }
CounterTest >> testCounterIsSetAndRead [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #'as yet unclassified' }
CounterTest >> testDecrement [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| c |
	c := Counter new.
	c count: 7.
	c decrement; decrement.
	self assert: c count equals: 5
]

{ #category : #'as yet unclassified' }
CounterTest >> testIncrement [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| c |
	c := Counter new.
	c count: 7.
	c increment; increment.
	self assert: c count equals: 9
]

{ #category : #'as yet unclassified' }
CounterTest >> testInitialization [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| c |
	c := Counter new.
	self assert: c count equals: 0
]

{ #category : #'as yet unclassified' }
CounterTest >> testStartingAtFive [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| c |
	c := Counter startingAt: 5.
	self assert: c count equals: 5
]
