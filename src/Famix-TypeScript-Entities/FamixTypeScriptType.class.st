"
I represent a TypeScript type.
"
Class {
	#name : #FamixTypeScriptType,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTParameterizedTypeUser + FamixTType + FamixTWithMethods',
	#classTraits : 'FamixTParameterizedTypeUser classTrait + FamixTType classTrait + FamixTWithMethods classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptType class >> annotation [

	<FMClass: #Type super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
