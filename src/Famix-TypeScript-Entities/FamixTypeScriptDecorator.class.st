"
I represent a TypeScript Decorator
"
Class {
	#name : #FamixTypeScriptDecorator,
	#superclass : #FamixTypeScriptNamedEntity,
	#instVars : [
		'#function => FMOne type: #FamixTypeScriptFunction opposite: #decorator',
		'#namedEntity => FMOne type: #FamixTypeScriptNamedEntity opposite: #decorator'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptDecorator class >> annotation [

	<FMClass: #Decorator super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #accessing }
FamixTypeScriptDecorator >> function [
	"Relation named: #function type: #FamixTypeScriptFunction opposite: #decorator"

	<generated>
	^ function
]

{ #category : #accessing }
FamixTypeScriptDecorator >> function: anObject [

	<generated>
	function := anObject
]

{ #category : #accessing }
FamixTypeScriptDecorator >> namedEntity [
	"Relation named: #namedEntity type: #FamixTypeScriptNamedEntity opposite: #decorator"

	<generated>
	^ namedEntity
]

{ #category : #accessing }
FamixTypeScriptDecorator >> namedEntity: anObject [

	<generated>
	namedEntity := anObject
]
