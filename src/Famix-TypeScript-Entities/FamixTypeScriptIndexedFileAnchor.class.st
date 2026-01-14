"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `correspondingFile` | `FamixTFile` | nil | File associated to this source anchor|
| `encoding` | `String` | nil | A string representing the encoding of a file|
| `endPos` | `Number` | nil | Stop position in the source|
| `fileName` | `String` | nil | Name of the source file|
| `startPos` | `Number` | nil | Start position in the source|

"
Class {
	#name : 'FamixTypeScriptIndexedFileAnchor',
	#superclass : 'FamixTypeScriptSourceAnchor',
	#traits : 'FamixTIndexedFileNavigation',
	#classTraits : 'FamixTIndexedFileNavigation classTrait',
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptIndexedFileAnchor class >> annotation [

	<FMClass: #IndexedFileAnchor super: #FamixTypeScriptSourceAnchor>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
