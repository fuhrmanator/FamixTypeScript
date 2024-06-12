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
FamixTypeScriptMethodTest >> testAllOverridingMethods [

	| signature overridingMethod otherOverridingMethod localClass subclass subSubclass |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overridingMethod := FamixTypeScriptMethod new signature: signature.
	otherOverridingMethod := FamixTypeScriptMethod new signature: signature.

	localClass := FamixTypeScriptClass new.
	subclass := FamixTypeScriptClass new.
	subSubclass := FamixTypeScriptClass new.

	localClass addMethod: method.
	subclass addMethod: overridingMethod.
	subSubclass addMethod: otherOverridingMethod.

	FamixTypeScriptInheritance new
		superclass: localClass;
		subclass: subclass.
	FamixTypeScriptInheritance new
		superclass: subclass;
		subclass: subSubclass.

	self
		assertCollection: method overridingMethods
		hasSameElements: {
				overridingMethod.
				otherOverridingMethod }
]

{ #category : #test }
FamixTypeScriptMethodTest >> testAllOverridingMethodsInInterface [

	| signature overridingMethod otherOverridingMethod i subclass subSubclass |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overridingMethod := FamixTypeScriptMethod new signature: signature.
	otherOverridingMethod := FamixTypeScriptMethod new signature: signature.

	i := FamixTypeScriptInterface new.
	subclass := FamixTypeScriptClass new.
	subSubclass := FamixTypeScriptClass new.

	i addMethod: method.
	subclass addMethod: overridingMethod.
	subSubclass addMethod: otherOverridingMethod.

	FamixTypeScriptImplementation new
		interface: i;
		implementingClass: subclass.
	FamixTypeScriptInheritance new
		superclass: subclass;
		subclass: subSubclass.

	self assertCollection: method overridingMethods hasSameElements: {
			overridingMethod.
			otherOverridingMethod }
]

{ #category : #test }
FamixTypeScriptMethodTest >> testAllOverridingMethodsInInterfaceWithExtendingInterface [

	| signature overridingMethod otherOverridingMethod i subclass subSubclass i2 |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overridingMethod := FamixTypeScriptMethod new signature: signature.
	otherOverridingMethod := FamixTypeScriptMethod new signature: signature.

	i := FamixTypeScriptInterface new
		     name: 'i';
		     yourself.
	i2 := FamixTypeScriptInterface new
		      name: 'i2';
		      yourself.

	subclass := FamixTypeScriptClass new.
	subSubclass := FamixTypeScriptClass new.

	i addMethod: method.
	subclass addMethod: overridingMethod.
	subSubclass addMethod: otherOverridingMethod.

	FamixTypeScriptInheritance new
		superclass: i;
		subclass: i2.
	FamixTypeScriptImplementation new
		interface: i2;
		implementingClass: subclass.

	FamixTypeScriptInheritance new
		superclass: subclass;
		subclass: subSubclass.

	self assertCollection: method overridingMethods hasSameElements: {
			overridingMethod.
			otherOverridingMethod }
]

{ #category : #test }
FamixTypeScriptMethodTest >> testDefaultIsStub [
	self deny: method isStub
]

{ #category : #test }
FamixTypeScriptMethodTest >> testFirstOverridingMethods [

	| signature overridingMethod otherOverridingMethod localClass subclass subSubclass |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overridingMethod := FamixTypeScriptMethod new signature: signature.
	otherOverridingMethod := FamixTypeScriptMethod new signature: signature.

	localClass := FamixTypeScriptClass new.
	subclass := FamixTypeScriptClass new.
	subSubclass := FamixTypeScriptClass new.

	localClass addMethod: method.
	subclass addMethod: overridingMethod.
	subSubclass addMethod: otherOverridingMethod.

	FamixTypeScriptInheritance new
		superclass: localClass;
		subclass: subclass.
	FamixTypeScriptInheritance new
		superclass: subclass;
		subclass: subSubclass.

	self
		assertCollection: method firstOverridingMethods
		hasSameElements: { overridingMethod }
]

{ #category : #test }
FamixTypeScriptMethodTest >> testIsClassSide [
	
	method isClassSide: true.
	self assert: method isClassSide .
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

	method name: 'getLogin'.
	method declaredType: (FamixTypeScriptClass named: 'String').
	self assert: method isGetter.

	method name: 'getLogin'.
	method declaredType: (FamixTypeScriptPrimitiveType named: 'void').
	self deny: method isGetter
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

	method name: 'setLogin'.
	self deny: method isSetter.

	method parameters: { FamixTypeScriptParameter new }.
	self deny: method isSetter.

	method declaredType: (FamixTypeScriptPrimitiveType named: 'void').
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
FamixTypeScriptMethodTest >> testOverriddenMethod [

	| signature overriddenMethod localClass superclass |
	signature := 'javaMethod()'.
	method signature: signature.
	overriddenMethod := FamixTypeScriptMethod new signature: signature.

	localClass := FamixTypeScriptClass named: #LocalClass.
	superclass := FamixTypeScriptClass named: #Superclass.

	localClass addMethod: method.
	superclass addMethod: overriddenMethod.

	FamixTypeScriptInheritance new
		superclass: superclass;
		subclass: localClass.

	self assert: method overriddenMethod equals: overriddenMethod
]

{ #category : #test }
FamixTypeScriptMethodTest >> testOverriddenMethodFromInterface [

	| signature interfaceOverriddenMethod localClass interface |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	interfaceOverriddenMethod := FamixTypeScriptMethod new signature: signature.

	localClass := FamixTypeScriptClass named: #LocalClass.
	interface := FamixTypeScriptInterface named: #Interface.

	localClass addMethod: method.
	interface addMethod: interfaceOverriddenMethod.

	FamixTypeScriptImplementation new
		interface: interface;
		implementingClass: localClass.

	self assert: method overriddenMethod equals: interfaceOverriddenMethod
]

{ #category : #test }
FamixTypeScriptMethodTest >> testOverriddenMethodOnlyOneLevel [

	| signature overriddenMethod localClass superclass superSuperclass otherOverriddenMethod |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overriddenMethod := FamixTypeScriptMethod new signature: signature.
	otherOverriddenMethod := FamixTypeScriptMethod new signature: signature.

	localClass := FamixTypeScriptClass named: #LocalClass.
	superclass := FamixTypeScriptClass named: #Superclass.
	superSuperclass := FamixTypeScriptClass named: #SuperSuperclass.

	localClass addMethod: method.
	superclass addMethod: overriddenMethod.
	superSuperclass addMethod: otherOverriddenMethod.

	FamixTypeScriptInheritance new
		superclass: superclass;
		subclass: localClass.
	FamixTypeScriptInheritance new
		superclass: superSuperclass;
		subclass: superclass.

	self assert: method overriddenMethod equals: overriddenMethod
]

{ #category : #test }
FamixTypeScriptMethodTest >> testOverride [
	| overriddenMethod c1 c2  |
	c1 := FamixTypeScriptClass new
		yourself.
	c2 := FamixTypeScriptClass new
		yourself.
	overriddenMethod := FamixTypeScriptMethod new
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
	self assert: overriddenMethod isOverridden 
]

{ #category : #test }
FamixTypeScriptMethodTest >> testOverridingMethods [

	| signature overridingMethod c1 c2 |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overridingMethod := FamixJavaMethod new signature: signature.

	c1 := FamixTypeScriptClass new.
	c2 := FamixTypeScriptClass new.

	c1 addMethod: method.
	c2 addMethod: overridingMethod.

	FamixTypeScriptInheritance new
		superclass: c1;
		subclass: c2.

	self
		assertCollection: method overridingMethods
		hasSameElements: { overridingMethod }
]

{ #category : #test }
FamixTypeScriptMethodTest >> testOverridingMethodsInInterface [

	| signature overridingMethod i c |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overridingMethod := FamixTypeScriptMethod new signature: signature.

	i := FamixTypeScriptInterface new.
	c := FamixTypeScriptClass new.

	i addMethod: method.
	c addMethod: overridingMethod.

	FamixTypeScriptImplementation new
		interface: i;
		implementingClass: c.

	self
		assertCollection: method overridingMethods
		hasSameElements: { overridingMethod }
]

{ #category : #test }
FamixTypeScriptMethodTest >> testOverridingMethodsInterfaceExtendsInterface [

	| signature overridingMethod i i2 overridingMethod2 i3 |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overridingMethod := FamixTypeScriptMethod new signature: signature.
	overridingMethod2 := FamixTypeScriptMethod new signature: signature.

	i := FamixTypeScriptInterface new.
	i2 := FamixTypeScriptInterface new.
	i3 := FamixTypeScriptInterface new.
	i addMethod: method.
	i2 addMethod: overridingMethod.
	i3 addMethod: overridingMethod2.

	FamixTypeScriptInheritance new
		superclass: i;
		subclass: i2.
	
	FamixTypeScriptInheritance new
		superclass: i2;
		subclass: i3.
	
	self assertCollection: method overridingMethods hasSameElements: {
			overridingMethod.
			overridingMethod2 }
]

{ #category : #test }
FamixTypeScriptMethodTest >> testSettingIsStub [
	method isStub: true.
	self assert: method isStub
]

{ #category : #test }
FamixTypeScriptMethodTest >> testSeveralOverridingMethods [

	| signature overridingMethod otherOverridingMethod localClass subclass otherSubclass |
	signature := 'typeScriptMethod()'.
	method signature: signature.
	overridingMethod := FamixTypeScriptMethod new signature: signature.
	otherOverridingMethod := FamixTypeScriptMethod new signature: signature.

	localClass := FamixTypeScriptClass new.
	subclass := FamixTypeScriptClass new.
	otherSubclass := FamixTypeScriptClass new.

	localClass addMethod: method.
	subclass addMethod: overridingMethod.
	otherSubclass addMethod: otherOverridingMethod.

	FamixTypeScriptInheritance new
		superclass: localClass;
		subclass: subclass.
	FamixTypeScriptInheritance new
		superclass: localClass;
		subclass: otherSubclass.

	self assertCollection: method overridingMethods hasSameElements: {
			overridingMethod.
			otherOverridingMethod }
]
