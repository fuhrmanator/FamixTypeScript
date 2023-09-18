"
I represent a TypeScript variable.
"
Class {
	#name : #FamixTypeScriptVariable,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTImportable + FamixTLocalVariable',
	#classTraits : 'FamixTImportable classTrait + FamixTLocalVariable classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptVariable class >> annotation [

	<FMClass: #Variable super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
