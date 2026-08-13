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
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `expression` | `String` | nil | Decorators use the form @expression, where expression must evaluate to a function that will be called at runtime with information about the decorated declaration|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|

"
Class {
	#name : 'FamixTypeScriptDecorator',
	#superclass : 'FamixTypeScriptNamedEntity',
	#traits : 'FamixTCanBeStub + FamixTImportable',
	#classTraits : 'FamixTCanBeStub classTrait + FamixTImportable classTrait',
	#instVars : [
		'#decoratedEntity => FMOne type: #FamixTypeScriptNamedEntity opposite: #decorators',
		'#expression => FMProperty'
	],
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptDecorator class >> annotation [

	<FMClass: #Decorator super: #FamixTypeScriptNamedEntity>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
]

{ #category : 'accessing' }
FamixTypeScriptDecorator >> decoratedEntity [
	"Relation named: #decoratedEntity type: #FamixTypeScriptNamedEntity opposite: #decorators"

	<generated>
	^ decoratedEntity
]

{ #category : 'accessing' }
FamixTypeScriptDecorator >> decoratedEntity: anObject [

	<generated>
	decoratedEntity := anObject
]

{ #category : 'accessing' }
FamixTypeScriptDecorator >> expression [

	<FMProperty: #expression type: #String>
	<generated>
	<FMComment: 'Decorators use the form @expression, where expression must evaluate to a function that will be called at runtime with information about the decorated declaration'>
	^ expression
]

{ #category : 'accessing' }
FamixTypeScriptDecorator >> expression: anObject [
	<generated>
	expression := anObject
]
