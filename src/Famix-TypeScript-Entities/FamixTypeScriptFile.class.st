"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentFolder` | `FamixTFileSystemEntity` | `childrenFileSystemEntities` | `FamixTFolder` | Folder entity containing this file.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `entities` | `FamixTFile` | `containerFiles` | `FamixTWithFiles` | List of entities defined in the file|



"
Class {
	#name : #FamixTypeScriptFile,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTFile',
	#classTraits : 'FamixTFile classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFile class >> annotation [

	<FMClass: #File super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
