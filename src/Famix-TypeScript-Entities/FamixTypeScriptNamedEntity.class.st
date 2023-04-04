Class {
	#name : #FamixTypeScriptNamedEntity,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTInvocationsReceiver + FamixTNamedEntity',
	#classTraits : 'FamixTInvocationsReceiver classTrait + FamixTNamedEntity classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTypeScriptNamedEntity class >> isAbstract [

	<generated>
	^ self == FamixTypeScriptNamedEntity
]
