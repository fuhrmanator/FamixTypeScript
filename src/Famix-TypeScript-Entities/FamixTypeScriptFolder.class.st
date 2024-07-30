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



"
Class {
	#name : #FamixTypeScriptFolder,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTFolder',
	#classTraits : 'FamixTFolder classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFolder class >> annotation [

	<FMClass: #Folder super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
