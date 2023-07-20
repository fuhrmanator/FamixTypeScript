"
A FamixTypeScriptTWithInterfacesTest is a test class for testing the behavior of FamixTypeScriptTWithInterfaces
"
Class {
	#name : #FamixTypeScriptTWithInterfacesTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Traits'
}

{ #category : #'as yet unclassified' }
FamixTypeScriptTWithInterfacesTest >> testInterfaces [

	| class interface |
	interface := FamixTypeScriptInterface new.
	class := FamixTypeScriptClass new.

	self assert: class interfaces size equals: 0.

	class addInterface: interface.

	self
		assertCollection: class interfaces asArray
		hasSameElements: { interface }
]
