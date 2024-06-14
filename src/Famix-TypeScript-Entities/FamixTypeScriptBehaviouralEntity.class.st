"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parameters` | `FamixTWithParameters` | `parentBehaviouralEntity` | `FamixTParameter` | List of formal parameters declared by this behaviour.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `declaredType` | `FamixTTypedEntity` | `typedEntities` | `FamixTType` | Type of the entity, if any|



"
Class {
	#name : #FamixTypeScriptBehaviouralEntity,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTTypedEntity + FamixTWithParameters',
	#classTraits : 'FamixTTypedEntity classTrait + FamixTWithParameters classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
