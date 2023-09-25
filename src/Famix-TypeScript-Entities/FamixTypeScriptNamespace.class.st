Class {
	#name : #FamixTypeScriptNamespace,
	#superclass : #FamixTypeScriptScopingEntity,
	#traits : 'FamixTDefinedInModule + FamixTImportable + FamixTNamespace',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTImportable classTrait + FamixTNamespace classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixTypeScriptScopingEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
