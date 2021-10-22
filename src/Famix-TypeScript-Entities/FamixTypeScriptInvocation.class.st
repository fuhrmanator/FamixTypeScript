Class {
	#name : #FamixTypeScriptInvocation,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTHasSignature + FamixTInvocation',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocation classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
