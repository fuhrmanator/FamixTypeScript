"
I represent a TypeScript element that is an implementation of an interface.
"
Class {
	#name : #FamixTypeScriptImplementation,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTImplementation',
	#classTraits : 'FamixTImplementation classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptImplementation class >> annotation [

	<FMClass: #Implementation super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
