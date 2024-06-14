"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentModule` | `FamixTDefinedInModule` | `moduleEntities` | `FamixTModule` | Module that contains the definition of this entity|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingImports` | `FamixTImportable` | `importedEntity` | `FamixTImport` | List of imports of this entity|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixTypeScriptNamespace,
	#superclass : #FamixTypeScriptScopingEntity,
	#traits : 'FamixTDefinedInModule + FamixTImportable + FamixTNamespace',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTImportable classTrait + FamixTNamespace classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixTypeScriptScopingEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
