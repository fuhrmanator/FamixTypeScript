"
I represent a TypeScript class property.

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentType` | `FamixTAttribute` | `attributes` | `FamixTWithAttributes` | Type declaring the attribute. belongsTo implementation|

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
| `isClassSide` | `Boolean` | false | Entity can be declared class side i.e. static|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|
| `visibility` | `String` | nil | Visibility of the entity|

"
Class {
	#name : #FamixTypeScriptProperty,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTAttribute + FamixTCanBeClassSide + FamixTHasVisibility',
	#classTraits : 'FamixTAttribute classTrait + FamixTCanBeClassSide classTrait + FamixTHasVisibility classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptProperty class >> annotation [

	<FMClass: #Property super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
