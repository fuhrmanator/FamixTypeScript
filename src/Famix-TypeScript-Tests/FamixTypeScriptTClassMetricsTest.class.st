"
A FamixTypeScriptTClassMetricsTest is a test class for testing the behavior of FamixTypeScriptTClassMetrics
"
Class {
	#name : #FamixTypeScriptTClassMetricsTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #tests }
FamixTypeScriptTClassMetricsTest >> testNumberOfAccessorMethods [

	| model c1 m1 |
	model := FamixTypeScriptModel new.
	c1 := FamixTypeScriptClass named: 'Class1' model: model.
	m1 := FamixTypeScriptMethod named: 'method1' model: model.
	m1 parentType: c1.
	m1 beGetter.

	self assert: c1 numberOfAccessorMethods equals: 1.
	c1 numberOfAccessorMethods: 100.
	self assert: c1 numberOfAccessorMethods equals: 100
]

{ #category : #tests }
FamixTypeScriptTClassMetricsTest >> testNumberOfConstructorMethods [

	| m1 c1 model |
	model := FamixTypeScriptModel new.
	c1 := FamixTypeScriptClass named: 'Class1' model: model.
	m1 := FamixTypeScriptMethod named: 'method1' model: model.
	m1 parentType: c1.

	m1 isConstructor: true.
	self assert: c1 numberOfConstructorMethods equals: 1.
	c1 numberOfConstructorMethods: 100.
	self assert: c1 numberOfConstructorMethods equals: 100
]

{ #category : #test }
FamixTypeScriptTClassMetricsTest >> testNumberOfPrivateMethods [

	| m1 c1 model |
	model := FamixTypeScriptModel new.
	c1 := FamixTypeScriptClass named: 'Class1' model: model.
	m1 := FamixTypeScriptMethod named: 'method1' model: model.
	m1 parentType: c1.
	m1 isPrivate: true.
	self assert: c1 numberOfPrivateMethods equals: 1.
	c1 numberOfPrivateMethods: 100.
	self assert: c1 numberOfPrivateMethods equals: 100
]

{ #category : #test }
FamixTypeScriptTClassMetricsTest >> testNumberOfPublicMethods [

	| m1 c1 model |
	model := FamixTypeScriptModel new.
	c1 := FamixTypeScriptClass named: 'Class1' model: model.
	m1 := FamixTypeScriptMethod named: 'method1' model: model.
	m1 parentType: c1.

	m1 isPublic: true.
	self assert: c1 numberOfPublicMethods equals: 1.
	c1 numberOfPublicMethods: 100.
	self assert: c1 numberOfPublicMethods equals: 100
]
