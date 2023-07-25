"
I represent a TypeScript primitive type (string, number, boolean).
"
Class {
	#name : #FamixTypeScriptPrimitiveType,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTPrimitiveType',
	#classTraits : 'FamixTPrimitiveType classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptPrimitiveType class >> annotation [

	<FMClass: #PrimitiveType super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #testing }
FamixTypeScriptPrimitiveType >> isPrimitiveType [

	<generated>
	^ true
]
