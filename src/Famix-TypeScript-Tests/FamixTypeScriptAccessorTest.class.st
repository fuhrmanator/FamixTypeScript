Class {
	#name : 'FamixTypeScriptAccessorTest',
	#superclass : 'TestCase',
	#instVars : [
		'setterAccessor',
		'getterAccessor'
	],
	#category : 'Famix-TypeScript-Tests',
	#package : 'Famix-TypeScript-Tests'
}

{ #category : 'initialization' }
FamixTypeScriptAccessorTest >> setUp [
	super setUp.
	setterAccessor := FamixTypeScriptMethod new.
	setterAccessor beSetter.
	getterAccessor := FamixTypeScriptMethod new.
	getterAccessor beGetter.
	
]

{ #category : 'tests' }
FamixTypeScriptAccessorTest >> testIsGetter [
	self assert: getterAccessor isGetter.
	self deny: setterAccessor isGetter.
]

{ #category : 'tests' }
FamixTypeScriptAccessorTest >> testIsSetter [
	self assert: setterAccessor isSetter.
	self deny: getterAccessor isSetter.
]
