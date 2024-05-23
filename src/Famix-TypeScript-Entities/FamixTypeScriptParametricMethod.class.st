"
I represent a TypeScript parametric Method.

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
	#name : #FamixTypeScriptParametricMethod,
	#superclass : #FamixTypeScriptMethod,
	#traits : 'FamixTParametricEntity',
	#classTraits : 'FamixTParametricEntity classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptParametricMethod class >> annotation [

	<FMClass: #ParametricMethod super: #FamixTypeScriptMethod>
	<package: #FamixTypeScript>
	<generated>
	^ self
]