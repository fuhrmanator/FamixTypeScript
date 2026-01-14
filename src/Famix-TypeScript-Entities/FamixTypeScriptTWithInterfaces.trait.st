"
I can contain interfaces (Packages, Methods, Classes...)

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `types` | `FamixTWithTypes` | `typeContainer` | `FamixTType` | Types contained (declared) in this entity, if any. #types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.|



"
Trait {
	#name : 'FamixTypeScriptTWithInterfaces',
	#traits : 'FamixTWithTypes',
	#classTraits : 'FamixTWithTypes classTrait',
	#category : 'Famix-TypeScript-Entities-Traits',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixTypeScriptTWithInterfaces classSide >> annotation [

	<FMClass: #TWithInterfaces super: #Object>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
