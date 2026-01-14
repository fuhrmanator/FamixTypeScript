"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentFolder` | `FamixTFileSystemEntity` | `childrenFileSystemEntities` | `FamixTFolder` | Folder entity containing this file.|

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenFileSystemEntities` | `FamixTFolder` | `parentFolder` | `FamixTFileSystemEntity` | List of entities contained in this folder.|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixTypeScriptFolder',
	#superclass : 'FamixTypeScriptNamedEntity',
	#traits : 'FamixTFolder',
	#classTraits : 'FamixTFolder classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptFolder class >> annotation [

	<FMClass: #Folder super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
