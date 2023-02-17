Class {
	#name : #FamixTypeScriptField,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTAttribute + FamixTCanBeClassSide + FamixTHasVisibility',
	#classTraits : 'FamixTAttribute classTrait + FamixTCanBeClassSide classTrait + FamixTHasVisibility classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptField class >> annotation [

	<FMClass: #Attribute super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
