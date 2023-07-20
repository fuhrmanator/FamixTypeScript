"
I represent a TypeScript class.
"
Class {
	#name : #FamixTypeScriptClass,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTCanBeAbstract + FamixTCanImplement + FamixTClass + FamixTClassMetrics + FamixTImportable + FamixTLCOMMetrics + FamixTWithImports + FamixTypeScriptTClassMetrics + FamixTWithComments',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTCanImplement classTrait + FamixTClass classTrait + FamixTClassMetrics classTrait + FamixTImportable classTrait + FamixTLCOMMetrics classTrait + FamixTWithImports classTrait + FamixTypeScriptTClassMetrics classTrait + FamixTWithComments classTrait',
	#instVars : [
		'#isClassSide'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptClass class >> annotation [

	<FMClass: #Class super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #testing }
FamixTypeScriptClass >> isClass [

	<generated>
	^ true
]

{ #category : #accessing }
FamixTypeScriptClass >> isClassSide [

	<FMProperty: #isClassSide type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Entity can be declared class side i.e. static'>
	^ isClassSide ifNil: [ isClassSide := false ]
]

{ #category : #accessing }
FamixTypeScriptClass >> isClassSide: anObject [
	<generated>
	isClassSide := anObject
]
