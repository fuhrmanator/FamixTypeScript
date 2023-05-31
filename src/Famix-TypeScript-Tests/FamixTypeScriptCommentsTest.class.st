Class {
	#name : #FamixTypeScriptCommentsTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptCommentsTest >> testClassWithComment [

	| typeScriptClass |
	typeScriptClass := FamixTypeScriptClass new.
	FamixTypeScriptComment new commentedEntity: typeScriptClass.
	self assert: typeScriptClass numberOfComments equals: 1
]
