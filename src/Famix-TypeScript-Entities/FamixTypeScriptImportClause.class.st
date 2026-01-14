"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `importingEntity` | `FamixTImport` | `imports` | `FamixTWithImports` | Importing entity|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `importedEntity` | `FamixTImport` | `incomingImports` | `FamixTImportable` | Imported entity|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|



"
Class {
	#name : 'FamixTypeScriptImportClause',
	#superclass : 'FamixTypeScriptEntity',
	#traits : 'FamixTImport',
	#classTraits : 'FamixTImport classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptImportClause class >> annotation [

	<FMClass: #ImportClause super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
