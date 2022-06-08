Class {
	#name : #FamixTypeScriptSourcedEntity,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTSourceEntity + FamixTWithFiles',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithFiles classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
