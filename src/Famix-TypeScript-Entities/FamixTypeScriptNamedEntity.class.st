Class {
	#name : #FamixTypeScriptNamedEntity,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTInvocationsReceiver + FamixTNamedEntity',
	#classTraits : 'FamixTInvocationsReceiver classTrait + FamixTNamedEntity classTrait',
	#instVars : [
		'#decorator => FMMany type: #FamixTypeScriptDecorator opposite: #namedEntity'
	],
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

{ #category : #adding }
FamixTypeScriptNamedEntity >> addDecorator: anObject [
	<generated>
	^ self decorator add: anObject
]

{ #category : #accessing }
FamixTypeScriptNamedEntity >> decorator [
	"Relation named: #decorator type: #FamixTypeScriptDecorator opposite: #namedEntity"

	<generated>
	<derived>
	^ decorator
]

{ #category : #accessing }
FamixTypeScriptNamedEntity >> decorator: anObject [

	<generated>
	decorator value: anObject
]
