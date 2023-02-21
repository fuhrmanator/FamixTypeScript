"
I represent a TypeScript method.
"
Class {
	#name : #FamixTypeScriptMethod,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTCanBeAbstract + FamixTHasKind + FamixTHasVisibility + FamixTMethod + FamixTWithLocalVariables',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTHasKind classTrait + FamixTHasVisibility classTrait + FamixTMethod classTrait + FamixTWithLocalVariables classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptMethod class >> annotation [

	<FMClass: #Method super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
