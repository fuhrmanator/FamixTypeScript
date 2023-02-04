Class {
	#name : #FamixTypeScriptMethod,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTCanBeAbstract + FamixTHasKind + FamixTHasVisibility + FamixTMethod',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTHasKind classTrait + FamixTHasVisibility classTrait + FamixTMethod classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptMethod class >> annotation [

	<FMClass: #Method super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
