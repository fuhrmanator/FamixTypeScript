Class {
	#name : #FamixTypeScriptSourcedEntity,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTSourceEntity + FamixTWithComments',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithComments classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixTypeScriptEntity>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
	^self
]
