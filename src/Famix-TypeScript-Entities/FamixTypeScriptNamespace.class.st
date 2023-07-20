Class {
	#name : #FamixTypeScriptNamespace,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTDefinedInModule + FamixTNamespace',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTNamespace classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
