"
A FamixTypeScriptMethodTest is a test class for testing the behavior of FamixTypeScriptMethod
"
Class {
	#name : #FamixTypeScriptMethodTest,
	#superclass : #TestCase,
	#instVars : [
		'method'
	],
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #running }
FamixTypeScriptMethodTest >> setUp [
	super setUp.
	method := FamixTypeScriptMethod new
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsConstructor [

	self deny: method isConstructor.
	method beConstructor.
	self assert: method isConstructor
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsGetter [

	self deny: method isGetter.
	method beGetter.
	self assert: method isGetter
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsSetter [

	self deny: method isSetter.
	method beSetter.
	self assert: method isSetter
]
