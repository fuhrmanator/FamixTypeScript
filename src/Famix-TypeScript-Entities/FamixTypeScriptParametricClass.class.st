"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeParameters` | `FamixTParametricEntity` | `genericEntity` | `FamixTTypeParameter` | The type parameters of this parametric entity. They can any type with the exception of primitive types|



"
Class {
	#name : 'FamixTypeScriptParametricClass',
	#superclass : 'FamixTypeScriptClass',
	#traits : 'FamixTParametricEntity',
	#classTraits : 'FamixTParametricEntity classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptParametricClass class >> annotation [

	<FMClass: #ParametricClass super: #FamixTypeScriptClass>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
]
