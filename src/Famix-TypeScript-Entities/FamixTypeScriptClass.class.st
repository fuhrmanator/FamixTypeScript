Class {
	#name : #FamixTypeScriptClass,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTCanBeAbstract + FamixTClass + FamixTLCOMMetrics + FamixTypeScriptTClassMetrics',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTClass classTrait + FamixTLCOMMetrics classTrait + FamixTypeScriptTClassMetrics classTrait',
	#instVars : [
		'#isInterface => FMProperty'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptClass class >> annotation [

	<FMClass: #Class super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^self
]

{ #category : #accessing }
FamixTypeScriptClass >> isInterface [

	<FMProperty: #isInterface type: #Boolean>
	<generated>
	<FMComment: 'Entity can be an abstraction representing an implementationless interface (language dependent)'>
	^ isInterface
]

{ #category : #accessing }
FamixTypeScriptClass >> isInterface: anObject [
	<generated>
	isInterface := anObject
]
