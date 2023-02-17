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

	method inspect.

	self deny: method isConstructor.

	method name: 'constructor'.
	self assert: method isConstructor.

]

{ #category : #tests }
FamixTypeScriptMethodTest >> testIsSetter [

	self deny: method isSetter.

	method name: 'setLogin'.
	self deny: method isSetter.

	method parameters: { FamixTypeScriptParameter new }.
	self deny: method isSetter.

	method declaredType: (FamixTypeScriptPrimitiveType named: 'string').
	self assert: method isSetter
]
