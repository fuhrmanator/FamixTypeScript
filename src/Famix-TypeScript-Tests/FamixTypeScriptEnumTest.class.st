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
	enum values: (OrderedCollection with: value).
	self assert: enum values size equals: 1.
	self assert: value parentEnum equals: enum
]
