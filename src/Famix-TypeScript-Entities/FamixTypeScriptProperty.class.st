"
I represent a TypeScript class property.
"
Class {
	#name : #FamixTypeScriptProperty,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTAttribute + FamixTCanBeClassSide + FamixTHasVisibility',
	#classTraits : 'FamixTAttribute classTrait + FamixTCanBeClassSide classTrait + FamixTHasVisibility classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptProperty class >> annotation [

	<FMClass: #Property super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
