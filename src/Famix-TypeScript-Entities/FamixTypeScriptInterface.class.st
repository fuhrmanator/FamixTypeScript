"
I represent a TypeScript interface.

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `attributes` | `FamixTWithAttributes` | `parentType` | `FamixTAttribute` | List of attributes declared by this type.|
| `methods` | `FamixTWithMethods` | `parentType` | `FamixTMethod` | Methods declared by this type.|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `superInheritances` | `FamixTWithInheritances` | `subclass` | `FamixTInheritance` | Superinheritance relationships, i.e. known superclasses of this type.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `implementations` | `FamixTImplementable` | `interface` | `FamixTImplementation` | Implementation relationships.|
| `subInheritances` | `FamixTWithInheritances` | `superclass` | `FamixTInheritance` | Subinheritance relationships, i.e. known subclasses of this type.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `receivingInvocations` | `FamixTInvocationsReceiver` | `receiver` | `FamixTInvocation` | List of invocations performed on this entity (considered as the receiver)|



"
Class {
	#name : #FamixTypeScriptInterface,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTImplementable + FamixTInvocationsReceiver + FamixTWithAttributes + FamixTWithInheritances + FamixTWithMethods',
	#classTraits : 'FamixTImplementable classTrait + FamixTInvocationsReceiver classTrait + FamixTWithAttributes classTrait + FamixTWithInheritances classTrait + FamixTWithMethods classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptInterface class >> annotation [

	<FMClass: #Interface super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #testing }
FamixTypeScriptInterface >> isInterface [

	<generated>
	^ true
]
