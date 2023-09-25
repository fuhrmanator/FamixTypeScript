"
I represent a TypeScript type.
"
Class {
	#name : #FamixTypeScriptType,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTImportable + FamixTParameterizedTypeUser + FamixTType + FamixTWithMethods',
	#classTraits : 'FamixTImportable classTrait + FamixTParameterizedTypeUser classTrait + FamixTType classTrait + FamixTWithMethods classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptType class >> annotation [

	<FMClass: #Type super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
