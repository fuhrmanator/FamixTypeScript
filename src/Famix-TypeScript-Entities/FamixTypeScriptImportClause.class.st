"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `importingEntity` | `FamixTImport` | `outgoingImports` | `FamixTWithImports` | Importing entity|

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


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|

"
Class {
	#name : #FamixTypeScriptImportClause,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTImport',
	#classTraits : 'FamixTImport classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptImportClause class >> annotation [

	<FMClass: #ImportClause super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
