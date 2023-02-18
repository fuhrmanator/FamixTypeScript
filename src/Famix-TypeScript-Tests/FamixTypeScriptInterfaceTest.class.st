Class {
	#name : #FamixTypeScriptInterfaceTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptInterfaceTest >> testClassContainInterface [

	| interface class |
	interface := FamixTypeScriptInterface new.
	class := FamixTypeScriptClass new.
	class addInterface: interface. 


	self
		assertCollection: class interfaces
		hasSameElements: { interface }.

]
