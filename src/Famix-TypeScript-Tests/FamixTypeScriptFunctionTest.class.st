Class {
	#name : #FamixTypeScriptFunctionTest,
	#superclass : #TestCase,
	#instVars : [
		'function'
	],
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #initialization }
FamixTypeScriptFunctionTest >> setUp [
	super setUp.
	function := FamixTypeScriptFunction  new
]

{ #category : #tests }
FamixTypeScriptFunctionTest >> testDefaultIsStub [
	self deny: function isStub
]
