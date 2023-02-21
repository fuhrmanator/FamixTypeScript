"
I represent a TypeScript method.
"
Class {
	#name : #FamixTypeScriptMethod,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTCanBeAbstract + FamixTHasKind + FamixTHasVisibility + FamixTMethod + FamixTWithLocalVariables',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTHasKind classTrait + FamixTHasVisibility classTrait + FamixTMethod classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#isConstructor => FMProperty defaultValue: false',
		'#isGetter => FMProperty defaultValue: false',
		'#isSetter => FMProperty defaultValue: false'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptMethod class >> annotation [

	<FMClass: #Method super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]

{ #category : #initialization }
FamixTypeScriptMethod >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	isConstructor := false.
	isGetter := false.
	isSetter := false.

]

{ #category : #accessing }
FamixTypeScriptMethod >> isConstructor [

	<FMProperty: #isConstructor type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Method is a constructor (class initilizer)'>
	^ isConstructor
]

{ #category : #accessing }
FamixTypeScriptMethod >> isConstructor: anObject [
	<generated>
	isConstructor := anObject
]

{ #category : #accessing }
FamixTypeScriptMethod >> isGetter [

	<FMProperty: #isGetter type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Method is a getter'>
	^ isGetter
]

{ #category : #accessing }
FamixTypeScriptMethod >> isGetter: anObject [
	<generated>
	isGetter := anObject
]

{ #category : #accessing }
FamixTypeScriptMethod >> isSetter [

	<FMProperty: #isSetter type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Method is a setter'>
	^ isSetter
]

{ #category : #accessing }
FamixTypeScriptMethod >> isSetter: anObject [
	<generated>
	isSetter := anObject
]
