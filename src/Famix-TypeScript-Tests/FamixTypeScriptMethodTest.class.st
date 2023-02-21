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
	method isConstructor: true.
	self assert: method isConstructor
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsGetter [

	self deny: method isGetter.
	method isGetter: true.
	self assert: method isGetter
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsSetter [

	self deny: method isSetter.
	method isSetter: true.
	self assert: method isSetter
]
