"
I represent One value (constant) in a Typescript enumerated type

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentEnum` | `FamixTEnumValue` | `enumValues` | `FamixTWithEnumValues` | The Enum declaring this value. It offers the implementation of belongsTo|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingAccesses` | `FamixTAccessible` | `variable` | `FamixTAccess` | All Famix accesses pointing to this structural entity|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `declaredType` | `FamixTTypedEntity` | `typedEntities` | `FamixTType` | Type of the entity, if any|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixTypeScriptEnumValue,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTEnumValue',
	#classTraits : 'FamixTEnumValue classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptEnumValue class >> annotation [

	<FMClass: #EnumValue super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
