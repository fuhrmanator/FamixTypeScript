Class {
	#name : #FamixTypeScriptNamespace,
	#superclass : #FamixTypeScriptScopingEntity,
	#traits : 'FamixTNamespace',
	#classTraits : 'FamixTNamespace classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixTypeScriptScopingEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
