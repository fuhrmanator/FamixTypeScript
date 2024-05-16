"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accesses` | `FamixTWithAccesses` | `accessor` | `FamixTAccess` | Accesses to variables made by this behaviour.|
| `outgoingInvocations` | `FamixTWithInvocations` | `sender` | `FamixTInvocation` | Outgoing invocations sent by this behaviour.|



"
Class {
	#name : #FamixTypeScriptScopingEntity,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptScopingEntity class >> annotation [

	<FMClass: #ScopingEntity super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
