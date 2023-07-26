Class {
	#name : #FamixTypeScriptClassTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #testing }
FamixTypeScriptClassTest >> testIsAbstract [

	| c1 |
	c1 := FamixTypeScriptClass new name: 'C'.
	"properties from Traits don't have default values"
	"self deny: c1 isAbstract."
	c1 isAbstract: true.
	self assert: c1 isAbstract
]

{ #category : #tests }
FamixTypeScriptClassTest >> testNumberOfAccessorMethods [

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
FamixTypeScriptClassTest >> testNumberOfConstructorMethods [

	| m1 c1 model |
	model := FamixTypeScriptModel new.
	c1 := FamixTypeScriptClass named: 'Class1' model: model.
	m1 := FamixTypeScriptMethod named: 'method1' model: model.
	m1 parentType: c1.
	
	m1 isConstructor: true.
	self assert: c1 numberOfConstructorMethods equals: 1.
	c1 numberOfConstructorMethods: 100.
	self assert: c1 numberOfConstructorMethods equals: 100.

]
