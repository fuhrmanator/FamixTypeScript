"
## Relations
======================

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingImports` | `FamixTImportable` | `importedEntity` | `FamixTImport` | List of imports of this entity|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `decorators` | `FamixTypeScriptNamedEntity` | `decoratedEntity` | `FamixTypeScriptDecorator` | |
| `receivingInvocations` | `FamixTInvocationsReceiver` | `receiver` | `FamixTInvocation` | List of invocations performed on this entity (considered as the receiver)|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixTypeScriptNamedEntity,
	#superclass : #FamixTypeScriptSourcedEntity,
	#traits : 'FamixTImportable + FamixTInvocationsReceiver + FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTImportable classTrait + FamixTInvocationsReceiver classTrait + FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#decorators => FMMany type: #FamixTypeScriptDecorator opposite: #decoratedEntity'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixTypeScriptSourcedEntity>
	<package: #FamixTypeScript>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTypeScriptNamedEntity class >> isAbstract [

	<generated>
	^ self == FamixTypeScriptNamedEntity
]

{ #category : #adding }
FamixTypeScriptNamedEntity >> addDecorator: anObject [
	<generated>
	^ self decorators add: anObject
]

{ #category : #accessing }
FamixTypeScriptNamedEntity >> decorators [
	"Relation named: #decorators type: #FamixTypeScriptDecorator opposite: #decoratedEntity"

	<generated>
	<derived>
	^ decorators
]

{ #category : #accessing }
FamixTypeScriptNamedEntity >> decorators: anObject [

	<generated>
	decorators value: anObject
]

{ #category : #testing }
FamixTypeScriptNamedEntity >> isNamedEntity [

	<generated>
	^ true
]
