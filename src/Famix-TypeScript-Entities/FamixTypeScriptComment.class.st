Class {
	#name : #FamixTypeScriptComment,
	#superclass : #FamixTypeScriptSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptComment class >> annotation [

	<FMClass: #Comment super: #FamixTypeScriptSourcedEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
