"
I represent a TypeScript Decorator

## Relations
======================

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingImports` | `FamixTImportable` | `importedEntity` | `FamixTImport` | List of imports of this entity|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `decoratedEntity` | `FamixTypeScriptDecorator` | `decorators` | `FamixTypeScriptNamedEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `expression` | `String` | nil | Decorators use the form @expression, where expression must evaluate to a function that will be called at runtime with information about the decorated declaration|

"
Class {
	#name : #FamixTypeScriptDecorator,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTImportable',
	#classTraits : 'FamixTImportable classTrait',
	#instVars : [
		'#expression => FMProperty',
		'#decoratedEntity => FMOne type: #FamixTypeScriptNamedEntity opposite: #decorators'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptDecorator class >> annotation [

	<FMClass: #Decorator super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #accessing }
FamixTypeScriptDecorator >> decoratedEntity [
	"Relation named: #decoratedEntity type: #FamixTypeScriptNamedEntity opposite: #decorators"

	<generated>
	^ decoratedEntity
]

{ #category : #accessing }
FamixTypeScriptDecorator >> decoratedEntity: anObject [

	<generated>
	decoratedEntity := anObject
]

{ #category : #accessing }
FamixTypeScriptDecorator >> expression [

	<FMProperty: #expression type: #String>
	<generated>
	<FMComment: 'Decorators use the form @expression, where expression must evaluate to a function that will be called at runtime with information about the decorated declaration'>
	^ expression
]

{ #category : #accessing }
FamixTypeScriptDecorator >> expression: anObject [
	<generated>
	expression := anObject
]
