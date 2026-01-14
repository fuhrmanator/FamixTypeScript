"
I represent a Typescript enumerated type

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeContainer` | `FamixTType` | `types` | `FamixTWithTypes` | Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).|

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `enumValues` | `FamixTWithEnumValues` | `parentEnum` | `FamixTEnumValue` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingImports` | `FamixTImportable` | `importedEntity` | `FamixTImport` | List of imports of this entity|
| `incomingReferences` | `FamixTReferenceable` | `referredEntity` | `FamixTReference` | References to this entity by other entities.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|
| `typedEntities` | `FamixTType` | `declaredType` | `FamixTTypedEntity` | Entities that have this type as declaredType|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixTypeScriptEnum',
	#superclass : 'FamixTypeScriptType',
	#traits : 'FamixTEnum + FamixTImportable',
	#classTraits : 'FamixTEnum classTrait + FamixTImportable classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptEnum class >> annotation [

	<FMClass: #Enum super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
