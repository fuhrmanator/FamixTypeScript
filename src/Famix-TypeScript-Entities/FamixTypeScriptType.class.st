"
I represent a TypeScript type.

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeContainer` | `FamixTType` | `types` | `FamixTWithTypes` | Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).|

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `methods` | `FamixTWithMethods` | `parentType` | `FamixTMethod` | Methods declared by this type.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `generics` | `FamixTConcreteParameterType` | `concreteParameter` | `FamixTParameterConcretization` | Generic relationships, i.e. known genericParameter of this type.|
| `incomingImports` | `FamixTImportable` | `importedEntity` | `FamixTImport` | List of imports of this entity|
| `incomingReferences` | `FamixTReferenceable` | `referredEntity` | `FamixTReference` | References to this entity by other entities.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concreteEntities` | `FamixTConcreteParameterType` | `concreteParameters` | `FamixTParametricEntity` | The concrete entities that use me.|
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
	#name : 'FamixTypeScriptType',
	#superclass : 'FamixTypeScriptContainerEntity',
	#traits : 'FamixTConcreteParameterType + FamixTImportable + FamixTType + FamixTWithMethods',
	#classTraits : 'FamixTConcreteParameterType classTrait + FamixTImportable classTrait + FamixTType classTrait + FamixTWithMethods classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptType class >> annotation [

	<FMClass: #Type super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
