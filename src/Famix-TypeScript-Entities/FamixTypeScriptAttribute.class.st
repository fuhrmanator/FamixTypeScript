Class {
	#name : #FamixTypeScriptAttribute,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTAttribute + FamixTCanBeClassSide',
	#classTraits : 'FamixTAttribute classTrait + FamixTCanBeClassSide classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
