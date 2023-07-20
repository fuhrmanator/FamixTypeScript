"
I represent a TypeScript function.
"
Class {
	#name : #FamixTypeScriptFunction,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTDefinedInModule + FamixTFunction + FamixTInvocable + FamixTWithLocalVariables',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTFunction classTrait + FamixTInvocable classTrait + FamixTWithLocalVariables classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFunction class >> annotation [

	<FMClass: #Function super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #adding }
FamixTypeScriptFunction >> addDecorator: anObject [
	<generated>
	^ self decorator add: anObject
]

{ #category : #accessing }
FamixTypeScriptFunction >> decorator [
	"Relation named: #decorator type: #FamixTypeScriptDecorator opposite: #function"

	<generated>
	<derived>
	^ decorator
]

{ #category : #accessing }
FamixTypeScriptFunction >> decorator: anObject [

	<generated>
	decorator value: anObject
]
