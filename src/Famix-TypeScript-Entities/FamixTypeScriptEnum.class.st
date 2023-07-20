"
Typescript enumerated type
"
Class {
	#name : #FamixTypeScriptEnum,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTEnum + FamixTImportable + FamixTWithComments',
	#classTraits : 'FamixTEnum classTrait + FamixTImportable classTrait + FamixTWithComments classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptEnum class >> annotation [

	<FMClass: #Enum super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
