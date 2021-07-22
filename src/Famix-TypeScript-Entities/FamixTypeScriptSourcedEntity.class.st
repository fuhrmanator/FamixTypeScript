Class {
	#name : #FamixTypeScriptSourcedEntity,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTSourceEntity + FamixTWithComments + FamixTWithFiles',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithComments classTrait + FamixTWithFiles classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
