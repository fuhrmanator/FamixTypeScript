"
I represent a TypeScript method.
"
Class {
	#name : #FamixTypeScriptMethod,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTCanBeAbstract + FamixTHasKind + FamixTHasVisibility + FamixTMethod + FamixTWithLocalVariables',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTHasKind classTrait + FamixTHasVisibility classTrait + FamixTMethod classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#isClassSide'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptMethod class >> annotation [

	<FMClass: #Method super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #testing }
FamixTypeScriptMethod >> isClassSide [

	<FMProperty: #isClassSide type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Entity can be declared class side i.e. static'>
	^ isClassSide ifNil: [ isClassSide := false ]
]

{ #category : #testing }
FamixTypeScriptMethod >> isClassSide: anObject [
	<generated>
	isClassSide := anObject
]

{ #category : #accessing }
FamixTypeScriptMethod >> isOverriden [
	"If we have a stub and we don't have the container, we can't have the information"

	<FMProperty: #isOverriden type: #Boolean>
	<derived>
	<FMComment: 'The method is overrided in a sub class'>
	(self parentType isNil and: [ self isStub ])
		ifTrue: [ ^ false ].
	^ self parentType subclassHierarchyGroup
		anySatisfy: [ :each | each hasMethodWithSignature: self signature ]
]

{ #category : #accessing }
FamixTypeScriptMethod >> isOverriding [
	<FMProperty: #isOverriding type: #Boolean>
	<derived>
	<FMComment: 'The method is overrinding a method defined in a super class'>
	^ self parentType directSuperclasses
		anySatisfy:
			[ :each | each isInterface not and: [ each understands: self signature ] ]
]
