"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourcedEntities` | `FamixTSourceLanguage` | `declaredSourceLanguage` | `FamixTWithSourceLanguages` | References to the entities saying explicitly that are written in this language.|



"
Class {
	#name : #FamixTypeScriptSourceLanguage,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTSourceLanguage',
	#classTraits : 'FamixTSourceLanguage classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptSourceLanguage class >> annotation [

	<FMClass: #SourceLanguage super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
