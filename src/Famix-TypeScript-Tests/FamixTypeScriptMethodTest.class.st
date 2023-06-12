"
A FamixTypeScriptMethodTest is a test class for testing the behavior of FamixTypeScriptMethod
"
Class {
	#name : #FamixTypeScriptMethodTest,
	#superclass : #TestCase,
	#instVars : [
		'method'
	],
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #running }
FamixTypeScriptMethodTest >> setUp [
	super setUp.
	method := FamixTypeScriptMethod new
]

{ #category : #test }
FamixTypeScriptMethodTest >> testDefaultIsStub [
	self deny: method isStub
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsClassSide [
	| meth |
	meth := FamixTypeScriptMethod  new. 
	meth isClassSide: true.
	self assert: meth isClassSide

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
FamixTypeScriptMethodTest >> testIsGetterForBooleanAttribute [

	method name: 'isActif'.
	method declaredType: (FamixTypeScriptPrimitiveType named: 'boolean').
	self assert: method isGetter.

	method name: 'isActif'.
	method declaredType: (FamixTypeScriptClass named: 'Boolean').
	self assert: method isGetter.

	method name: 'isActif'.
	method declaredType: (FamixTypeScriptClass named: 'String').
	self deny: method isGetter
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsNotStubWhenParentIsNotStub [
	| aClass |
	aClass := FamixTypeScriptClass new.
	method parentType: aClass.
	aClass isStub: false.
	self deny: aClass isStub.
	self deny: method isStub
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsSetter [

	self deny: method isSetter.
	method beSetter.
	self assert: method isSetter
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsStubWhenParentIsStub [
	| aClass |
	aClass := FamixTypeScriptClass new.
	method parentType: aClass.
	aClass isStub: true.
	self assert: aClass isStub.
	self assert: method isStub
]

{ #category : #test }
FamixTypeScriptMethodTest >> testOverride [
	| overridenMethod c1 c2 package |
	package := FamixTypeScriptPackage new.
	c1 := FamixTypeScriptClass new
		parentPackage: package;
		yourself.
	c2 := FamixTypeScriptClass new
		parentPackage: package;
		yourself.
	overridenMethod := FamixTypeScriptMethod new
		name: 'method';
		signature: 'method()';
		parentType: c1;
		declaredType: c1;
		yourself.
	method
		name: 'method';
		signature: 'method()';
		parentType: c2;
		declaredType: c2.
	c2
		addSuperInheritance:
			(FamixTypeScriptInheritance new
				subclass: c2;
				superclass: c1).
	self assert: method isOverriding.
	self assert: overridenMethod isOverriden
]

{ #category : #test }
FamixTypeScriptMethodTest >> testSettingIsStub [
	method isStub: true.
	self assert: method isStub
]
