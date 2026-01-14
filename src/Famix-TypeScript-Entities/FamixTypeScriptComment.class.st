"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `commentedEntity` | `FamixTComment` | `comments` | `FamixTWithComments` | Source code commented by the comment|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isJSDoc` | `Boolean` | false | Comments can have the form of JSDoc.|

"
Class {
	#name : 'FamixTypeScriptComment',
	#superclass : 'FamixTypeScriptSourcedEntity',
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#instVars : [
		'#isJSDoc => FMProperty defaultValue: false'
	],
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptComment class >> annotation [

	<FMClass: #Comment super: #FamixTypeScriptSourcedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixTypeScriptComment >> isJSDoc [

	<FMProperty: #isJSDoc type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Comments can have the form of JSDoc.'>
	^ isJSDoc ifNil: [ isJSDoc := false ]
]

{ #category : 'accessing' }
FamixTypeScriptComment >> isJSDoc: anObject [
	<generated>
	isJSDoc := anObject
]
