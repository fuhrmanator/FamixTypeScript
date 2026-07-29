"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accessor` | `FamixTAccess` | `accesses` | `FamixTWithAccesses` | Behavioural entity making the access to the variable. from-side of the association|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `candidates` | `FamixTAccess` | `incomingAccesses` | `FamixTAccessible` | Variables that cas be the accessed variable. to-side of the association. Most of the time it will be only one variable, but some languages might have candidates such as Python.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isWrite` | `Boolean` | false | Write access|

"
Class {
	#name : 'FamixTypeScriptAccess',
	#superclass : 'FamixTypeScriptEntity',
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptAccess class >> annotation [

	<FMClass: #Access super: #FamixTypeScriptEntity>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
]
