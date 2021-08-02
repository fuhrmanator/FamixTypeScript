Class {
	#name : #FamixTypeScriptClass,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTCanBeClassSide + FamixTClass + FamixTWithExceptions + FamixTWithSourceLanguages',
	#classTraits : 'FamixTCanBeClassSide classTrait + FamixTClass classTrait + FamixTWithExceptions classTrait + FamixTWithSourceLanguages classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptClass class >> annotation [

	<FMClass: #Class super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^self
]
