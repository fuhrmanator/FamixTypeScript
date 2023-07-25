"
A FamixTypeScriptContainerEntityTest is a test class for testing the behavior of FamixTypeScriptContainerEntity
"
Class {
	#name : #FamixTypeScriptContainerEntityTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #test }
FamixTypeScriptContainerEntityTest >> testAddInterface [

	| interface container |
	interface := FamixTypeScriptInterface new.
	container := FamixTypeScriptContainerEntity new.

	self assert: container interfaces size equals: 0.
	
	container addInterface: interface.
	self assert: container interfaces size equals: 1.
]
