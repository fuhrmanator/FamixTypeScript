Class {
	#name : #FamixTypeScriptParameter,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTCanBeFinal + FamixTParameter',
	#classTraits : 'FamixTCanBeFinal classTrait + FamixTParameter classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptParameter class >> annotation [

	<FMClass: #Parameter super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
