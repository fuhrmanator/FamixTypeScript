Class {
	#name : #FamixTypeScriptSourceAnchor,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptSourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTypeScriptSourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixTypeScriptSourceAnchor
]
