Class {
	#name : #FamixTypeScriptClassTest,
	#superclass : #TestCase,
	#category : #'Famix-TypeScript-Tests-Entities'
}

{ #category : #tests }
FamixTypeScriptClassTest >> testInheritanceAnnotationType [
	| testAnnotation testAnnotationSub inheritance |
	testAnnotation := FamixTypeScriptAnnotationType new name: 'Test'.
	testAnnotationSub := FamixTypeScriptAnnotationType new name: 'SubTest'.
	inheritance := FamixTypeScriptInheritance new subclass: testAnnotationSub; superclass: testAnnotation.
	self assertCollection: testAnnotation subInheritances hasSameElements: { inheritance } .
	self assertCollection: testAnnotation superInheritances hasSameElements: {  } .
	self assertCollection: testAnnotationSub subInheritances hasSameElements: {  } .
	self assertCollection: testAnnotationSub superInheritances hasSameElements: { inheritance } .
	self assert: testAnnotationSub superclass equals: testAnnotation.
]

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
FamixTypeScriptClassTest >> testIsClassSide [
	| famixClass |
	famixClass := FamixTypeScriptClass new. 
	famixClass isClassSide: true.
	self assert: famixClass isClassSide
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
