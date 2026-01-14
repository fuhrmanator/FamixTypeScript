Class {
	#name : 'FamixTypeScriptDecoratorTest',
	#superclass : 'TestCase',
	#instVars : [
		'model',
		'accessor1',
		'decorator3',
		'decorator4'
	],
	#category : 'Famix-TypeScript-Tests',
	#package : 'Famix-TypeScript-Tests'
}

{ #category : 'tests' }
FamixTypeScriptDecoratorTest >> model [
	^ model
]

{ #category : 'tests' }
FamixTypeScriptDecoratorTest >> model: anObject [
	model := anObject
]

{ #category : 'tests' }
FamixTypeScriptDecoratorTest >> setUp [
	| ns1 ns2 c1 c2 c3 m1 m2 m3 m4 v1 pr1 pr2 at1 at2 decorator1 f1 decorator2 accessor2  decorator5 |
	super setUp.

	ns1 := FamixTypeScriptNamespace  new
		name: 'p1';
		stub: true;
		yourself.
	ns2 := FamixTypeScriptNamespace new
		name: 'p2';
		stub: true;
		yourself.
		
	accessor2 := FamixTypeScriptAccessor new 
		name:'accessor2';
		stub:true;
		yourself.
			
	f1 := FamixTypeScriptFunction new stub: true; name: 'F1'; yourself.

	c1 := FamixTypeScriptClass new
		stub: true;
		name: 'C1';
		yourself.
	c2 := FamixTypeScriptClass new
		stub: true;
		name: 'C2';
		yourself.
	c3 := FamixTypeScriptClass new
		stub: true;
		name: 'C3';
		yourself.

	m1 := FamixTypeScriptMethod new
		stub: true;
		name: 'm1';
		signature: 'm1()';
		parentType: c1;
		declaredType: c2;
		yourself.
	m2 := FamixTypeScriptMethod new
		stub: true;
		name: 'm2';
		signature: 'm2()';
		parentType: c2;
		declaredType: c3;
		yourself.
	m3 := FamixTypeScriptMethod new
		stub: true;
		name: 'm3';
		signature: 'm3(C2,C3)';
		parentType: c2;
		declaredType: c1;
		yourself.
	m4 := FamixTypeScriptMethod new
		stub: true;
		name: 'm4';
		signature: 'm4()';
		parentType: c3;
		declaredType: c3;
		yourself.

	v1 := FamixTypeScriptVariable new
		stub: true;
		name: 'v1';
		parentBehaviouralEntity: m2;
		declaredType: c1;
		yourself.

	pr1 := FamixTypeScriptParameter new
		stub: true;
		name: 'pr1';
		parentBehaviouralEntity: m3;
		declaredType: c2;
		yourself.
	pr2 := FamixTypeScriptParameter new
		stub: true;
		name: 'pr2';
		parentBehaviouralEntity: m3;
		declaredType: c3;
		yourself.

	at1 := FamixTypeScriptProperty new
		stub: true;
		name: 'at1';
		parentType: c1;
		declaredType: c3;
		yourself.
	at2 := FamixTypeScriptProperty new
		stub: true;
		name: 'at2';
		parentType: c3;
		declaredType: c2;
		yourself.

	"class decorator"
	decorator1 := FamixTypeScriptDecorator  new
		stub: true;
		name: 'decorator1';
		decoratedEntity: c1;
		expression: 'F1';
		yourself.

	"method decorator"
	decorator2 := FamixTypeScriptDecorator  new
		stub: true;
		name: 'decorator2';
		decoratedEntity: m1;
		expression: 'F2';
		yourself.
		
	" accessor decorator"
	decorator3:=FamixTypeScriptDecorator new 
		stub: true;
		name: 'decorator3';
		decoratedEntity: accessor2;
		expression: 'F3';
		yourself.
		
	" parameter decorator"
	decorator4:=FamixTypeScriptDecorator new 
		stub: true;
		name: 'decorator4';
		decoratedEntity: pr1;
		expression: 'F4';
		yourself.
	" property decorator"
	decorator5:=FamixTypeScriptDecorator new 
		stub: true;
		name: 'decorator5';
		decoratedEntity: at1;
		expression: 'F5';
		yourself.

	self model: (FamixTypeScriptModel withAll: {ns1 . ns2 . f1. c1 . c2 . c3 . m1 . m2 . m3 . m4 . v1 . at1 . at2 . pr1 . pr2 . decorator1 . decorator2 . accessor2 })
]

{ #category : 'tests' }
FamixTypeScriptDecoratorTest >> testDecoratorForAccessor [
	| acc1 |
	acc1 := model allMethods detect: [:acc | acc name = 'accessor2']. "peut être il faut créer allAccessors mais j'ai utilisé allMethods pour le moment parce qu'on a supposé que l'accesseur hérite de la méthode"
	self deny: acc1 isNil.
	self assert: acc1 decorators size equals: 1.
	self assert: acc1 decorators anyOne expression equals: 'F3'
]

{ #category : 'tests' }
FamixTypeScriptDecoratorTest >> testDecoratorForClass [
	| c1|
	c1 := model allClasses detect: [:c| c name = 'C1'].
	self deny: c1 isNil.
	self assert: c1 decorators size equals: 1.
	self assert: c1 decorators anyOne expression equals: 'F1'
]

{ #category : 'tests' }
FamixTypeScriptDecoratorTest >> testDecoratorForMethod [
	| m1 |
	m1 := model allMethods detect: [:m | m name = 'm1'].
	self deny: m1 isNil.
	self assert: m1 decorators size equals: 1.
	self assert: m1 decorators anyOne expression equals: 'F2'
]

{ #category : 'tests' }
FamixTypeScriptDecoratorTest >> testDecoratorForParameter [
	| pr1|
	pr1 := model allParameters detect: [:p| p name = 'pr1'].
	self deny: pr1 isNil.
	self assert: pr1 decorators size equals: 1.
	self assert: pr1 decorators anyOne expression equals: 'F4'
]

{ #category : 'tests' }
FamixTypeScriptDecoratorTest >> testDecoratorForProperty [ 
	| at1|
	at1 := model allAttributes  detect: [:at| at name = 'at1'].
	self deny: at1 isNil.
	self assert: at1 decorators size equals: 1.
	self assert: at1 decorators anyOne expression equals: 'F5'
]
