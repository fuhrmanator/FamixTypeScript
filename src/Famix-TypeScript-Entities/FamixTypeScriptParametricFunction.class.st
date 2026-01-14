"
I represent a TypeScript parametric function.

## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concretizations` | `FamixTParametricEntity` | `genericEntity` | `FamixTConcretization` | Concretization relationships, i.e. the associations of known concrete entities of this type.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericization` | `FamixTParametricEntity` | `concreteEntity` | `FamixTConcretization` | Generic entity relationship, i.e. the association to the generic entity of this type.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concreteParameters` | `FamixTParametricEntity` | `concreteEntities` | `FamixTConcreteParameterType` | List of concrete parameters.|
| `genericParameters` | `FamixTParametricEntity` | `genericEntities` | `FamixTGenericParameterType` | List of generic parameters.|



"
Class {
	#name : 'FamixTypeScriptParametricFunction',
	#superclass : 'FamixTypeScriptFunction',
	#traits : 'FamixTParametricEntity',
	#classTraits : 'FamixTParametricEntity classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptParametricFunction class >> annotation [

	<FMClass: #ParametricFunction super: #FamixTypeScriptFunction>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
