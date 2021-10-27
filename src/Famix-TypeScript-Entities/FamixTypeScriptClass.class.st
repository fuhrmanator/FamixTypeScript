Class {
	#name : #FamixTypeScriptClass,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTCanBeClassSide + FamixTClass + FamixTWithExceptions + FamixTypeScriptTCanBeInterface',
	#classTraits : 'FamixTCanBeClassSide classTrait + FamixTClass classTrait + FamixTWithExceptions classTrait + FamixTypeScriptTCanBeInterface classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptClass class >> annotation [

	<FMClass: #Class super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^self
]
