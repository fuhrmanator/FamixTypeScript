Class {
	#name : #FamixTypeScriptInvocation,
	#superclass : #FamixTypeScriptAssociation,
	#traits : 'FamixTHasSignature + FamixTInvocation',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocation classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixTypeScriptAssociation>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
