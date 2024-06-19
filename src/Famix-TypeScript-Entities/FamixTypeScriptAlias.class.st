"
## Relations
======================

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingImports` | `FamixTImportable` | `importedEntity` | `FamixTImport` | List of imports of this entity|



"
Class {
	#name : #FamixTypeScriptAlias,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTImportable',
	#classTraits : 'FamixTImportable classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptAlias class >> annotation [

	<FMClass: #Alias super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
