"
I represent a TypeScript function.
"
Class {
	#name : #FamixTypeScriptFunction,
	#superclass : #FamixTypeScriptBehaviouralEntity,
	#traits : 'FamixTDefinedInModule + FamixTFunction + FamixTImportable + FamixTInvocable',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTFunction classTrait + FamixTImportable classTrait + FamixTInvocable classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFunction class >> annotation [

	<FMClass: #Function super: #FamixTypeScriptBehaviouralEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
