"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `element` | `FamixTSourceAnchor` | `sourceAnchor` | `FamixTSourceEntity` | Enable the accessibility to the famix entity that this class is a source pointer for|



"
Class {
	#name : #FamixTypeScriptSourceAnchor,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptSourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTypeScriptSourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixTypeScriptSourceAnchor
]
