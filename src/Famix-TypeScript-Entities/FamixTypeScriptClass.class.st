"
I represent a TypeScript class.
"
Class {
	#name : #FamixTypeScriptClass,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTCanBeAbstract + FamixTCanImplement + FamixTClass + FamixTClassMetrics + FamixTImportable + FamixTLCOMMetrics + FamixTWithAccesses + FamixTypeScriptTClassMetrics',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTCanImplement classTrait + FamixTClass classTrait + FamixTClassMetrics classTrait + FamixTImportable classTrait + FamixTLCOMMetrics classTrait + FamixTWithAccesses classTrait + FamixTypeScriptTClassMetrics classTrait',
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
