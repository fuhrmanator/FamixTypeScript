"
I represent a TypeScript function.
"
Class {
	#name : #FamixTypeScriptFunction,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTDefinedInModule + FamixTFunction + FamixTInvocable',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTFunction classTrait + FamixTInvocable classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFunction class >> annotation [

	<FMClass: #Function super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
