Class {
	#name : #FamixTypeScriptClassTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #testing }
FamixTypeScriptClassTest >> testIsAbstract [

	| c1 |
	c1 := FamixTypeScriptClass new name: 'C'.
	"properties from Traits don't have default values"
	"self deny: c1 isAbstract."
	c1 isAbstract: false.
	self assert: c1 isAbstract
]
