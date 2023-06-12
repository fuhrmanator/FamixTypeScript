Class {
	#name : #FamixTypeScriptQueryTest,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'p1',
		'p2',
		'c1',
		'c2',
		'c3',
		'm1',
		'm2',
		'm3',
		'm4',
		'v1',
		'pr1',
		'pr2',
		'at1',
		'at2',
		'annotationType1',
		'annotationInstance1',
		'annotationInstanceAttribute1'
	],
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptQueryTest >> model [
	^ model
]

{ #category : #tests }
FamixTypeScriptQueryTest >> model: anObject [
	model := anObject
]

{ #category : #tests }
FamixTypeScriptQueryTest >> setUp [
	super setUp.

	p1 := FamixTypeScriptPackage new
		name: 'p1';
		stub: true;
		yourself.
	p2 := FamixTypeScriptPackage new
		name: 'p2';
		stub: true;
		yourself.

	c1 := FamixTypeScriptClass new
		stub: true;
		name: 'C1';
		parentPackage: p1;
		yourself.
	c2 := FamixTypeScriptClass new
		stub: true;
		name: 'C2';
		parentPackage: p1;
		yourself.
	c3 := FamixTypeScriptClass new
		stub: true;
		name: 'C3';
		parentPackage: p2;
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

	v1 := FamixTypeScriptLocalVariable new
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

	at1 := FamixTypeScriptAttribute new
		stub: true;
		name: 'at1';
		parentType: c1;
		declaredType: c3;
		yourself.
	at2 := FamixTypeScriptAttribute new
		stub: true;
		name: 'at2';
		parentType: c3;
		declaredType: c2;
		yourself.


	annotationType1 := FamixTypeScriptAnnotationType new
		stub: true;
		name: 'annotationType1';
		yourself.

	annotationInstance1 := FamixTypeScriptAnnotationInstance new
		stub: true;
		annotationType: annotationType1;
		annotatedEntity: at1;
		yourself.

	annotationInstanceAttribute1 := FamixTypeScriptAnnotationInstanceAttribute new
		stub: true;
		parentAnnotationInstance: annotationInstance1;
		value: 'instanceAttribute1Value';
		yourself.

	self model: (FamixJavaModel withAll: {p1 . p2 . c1 . c2 . c3 . m1 . m2 . m3 . m4 . v1 . at1 . at2 . pr1 . pr2 . annotationType1 . annotationInstance1 . annotationInstanceAttribute1})
]

{ #category : #tests }
FamixTypeScriptQueryTest >> testFamixJavaAnnotationInstanceAttributeCanHaveIncoming [
	self assert: annotationInstanceAttribute1 incomingMSEProperties isCollection 
]

{ #category : #tests }
FamixTypeScriptQueryTest >> testFamixJavaAnnotationInstanceAttributeCanHaveOutgoing [
	self assert: annotationInstanceAttribute1 outgoingMSEProperties isCollection 
]
