"
I represent a TypeScript function.
"
Class {
	#name : #FamixTypeScriptFunction,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTDefinedInModule + FamixTFunction + FamixTInvocable + FamixTWithLocalVariables',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTFunction classTrait + FamixTInvocable classTrait + FamixTWithLocalVariables classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFunction class >> annotation [

	<FMClass: #Function super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
