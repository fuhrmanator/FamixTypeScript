Class {
	#name : #FamixTypeScriptNamedEntity,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
