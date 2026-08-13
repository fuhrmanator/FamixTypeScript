"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `outgoingConcretizations` | `FamixTTypeArgument` | `typeArgument` | `FamixTConcretization` | Concretizations where this type is the type argument.|
| `superInheritances` | `FamixTWithInheritances` | `subclass` | `FamixTInheritance` | Superinheritance relationships, i.e. known superclasses of this type.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concretizations` | `FamixTTypeParameter` | `typeParameter` | `FamixTConcretization` | Known concretizations of this type parameter.|
| `subInheritances` | `FamixTWithInheritances` | `superclass` | `FamixTInheritance` | Subinheritance relationships, i.e. known subclasses of this type.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericEntity` | `FamixTTypeParameter` | `typeParameters` | `FamixTParametricEntity` | Generic entity that declares this type parameter.|



"
Class {
	#name : 'FamixTypeScriptParameterType',
	#superclass : 'FamixTypeScriptType',
	#traits : 'FamixTTypeArgument + FamixTTypeParameter + FamixTWithInheritances',
	#classTraits : 'FamixTTypeArgument classTrait + FamixTTypeParameter classTrait + FamixTWithInheritances classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptParameterType class >> annotation [

	<FMClass: #ParameterType super: #FamixTypeScriptType>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
]
