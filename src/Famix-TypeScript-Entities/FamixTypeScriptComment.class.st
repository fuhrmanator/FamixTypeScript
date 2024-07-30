"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `commentedEntity` | `FamixTComment` | `comments` | `FamixTWithComments` | Source code commented by the comment|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `content` | `String` | nil | Content of the comment as a String|
| `isJSDoc` | `Boolean` | false | Comments can have the form of JSDoc.|

"
Class {
	#name : #FamixTypeScriptComment,
	#superclass : #FamixTypeScriptSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#instVars : [
		'#isJSDoc => FMProperty defaultValue: false'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptComment class >> annotation [

	<FMClass: #Comment super: #FamixTypeScriptSourcedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #accessing }
FamixTypeScriptComment >> isJSDoc [

	<FMProperty: #isJSDoc type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Comments can have the form of JSDoc.'>
	^ isJSDoc ifNil: [ isJSDoc := false ]
]

{ #category : #accessing }
FamixTypeScriptComment >> isJSDoc: anObject [
	<generated>
	isJSDoc := anObject
]
