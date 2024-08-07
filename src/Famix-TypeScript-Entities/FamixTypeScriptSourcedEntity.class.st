"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `comments` | `FamixTWithComments` | `commentedEntity` | `FamixTComment` | List of comments for the entity|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|

"
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
	<package: #FamixTypeScript>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTypeScriptSourcedEntity class >> isAbstract [

	<generated>
	^ self == FamixTypeScriptSourcedEntity
]
