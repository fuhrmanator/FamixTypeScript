"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `functions` | `FamixTWithFunctions` | `functionOwner` | `FamixTFunction` | Functions defined in the container, if any.|
| `localVariables` | `FamixTWithLocalVariables` | `parentBehaviouralEntity` | `FamixTLocalVariable` | Variables locally defined by this behaviour.|
| `types` | `FamixTWithTypes` | `typeContainer` | `FamixTType` | Types contained (declared) in this entity, if any. #types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.|



"
Class {
	#name : #FamixTypeScriptContainerEntity,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTWithClasses + FamixTWithFunctions + FamixTWithLocalVariables + FamixTypeScriptTWithInterfaces',
	#classTraits : 'FamixTWithClasses classTrait + FamixTWithFunctions classTrait + FamixTWithLocalVariables classTrait + FamixTypeScriptTWithInterfaces classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptContainerEntity class >> annotation [

	<FMClass: #ContainerEntity super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
