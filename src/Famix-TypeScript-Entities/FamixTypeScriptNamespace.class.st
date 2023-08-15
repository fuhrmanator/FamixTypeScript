Class {
	#name : #FamixTypeScriptNamespace,
	#superclass : #FamixTypeScriptScopingEntity,
	#traits : 'FamixTDefinedInModule + FamixTNamespace',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTNamespace classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixTypeScriptScopingEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
