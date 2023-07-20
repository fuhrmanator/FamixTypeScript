Class {
	#name : #FamixTypeScriptEnumValueTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptEnumValueTest >> testParentEnum [
	| enum value |
	enum := FamixTypeScriptEnum new.
	value := FamixTypeScriptEnumValue new.
	value parentEnum: enum.
	
	self assert: enum enumValues size equals: 1.
	self assert: value parentEnum equals: enum
]
