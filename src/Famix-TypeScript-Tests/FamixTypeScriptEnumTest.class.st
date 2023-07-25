Class {
	#name : #FamixTypeScriptEnumTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #accessing }
FamixTypeScriptEnumTest >> testValues [
	| enum value |
	enum := FamixTypeScriptEnum new.
	value := FamixTypeScriptEnumValue new.
	enum enumValues: (OrderedCollection with: value).

	self assert: enum enumValues size equals: 1.
	self assert: value parentEnum equals: enum
]
