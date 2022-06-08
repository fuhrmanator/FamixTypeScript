Class {
	#name : #FamixTypeScriptFunction,
	#superclass : #FamixTypeScriptBehaviouralEntity,
	#traits : 'FamixTDefinedInModule + FamixTFunction + FamixTInvocable + FamixTWithLocalVariables',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTFunction classTrait + FamixTInvocable classTrait + FamixTWithLocalVariables classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFunction class >> annotation [

	<FMClass: #Function super: #FamixTypeScriptBehaviouralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
