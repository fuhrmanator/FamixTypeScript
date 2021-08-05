Class {
	#name : #FamixTypeScriptAttribute,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTAttribute + FamixTWithClassScope + FamixTypeScriptTCanBeTransient + FamixTypeScriptTCanBeVolatile',
	#classTraits : 'FamixTAttribute classTrait + FamixTWithClassScope classTrait + FamixTypeScriptTCanBeTransient classTrait + FamixTypeScriptTCanBeVolatile classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
