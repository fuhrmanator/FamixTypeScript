Class {
	#name : #FamixTypeScriptIndexedFileAnchor,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTIndexedFileNavigation + FamixTSourceAnchor',
	#classTraits : 'FamixTIndexedFileNavigation classTrait + FamixTSourceAnchor classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptIndexedFileAnchor class >> annotation [

	<FMClass: #IndexedFileAnchor super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
