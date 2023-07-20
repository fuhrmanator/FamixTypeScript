Class {
	#name : #FamixTypeScriptContainerEntity,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTWithAnnotationTypes + FamixTWithClasses + FamixTWithFunctions + FamixTWithLocalVariables + FamixTypeScriptTWithInterfaces',
	#classTraits : 'FamixTWithAnnotationTypes classTrait + FamixTWithClasses classTrait + FamixTWithFunctions classTrait + FamixTWithLocalVariables classTrait + FamixTypeScriptTWithInterfaces classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptContainerEntity class >> annotation [

	<FMClass: #ContainerEntity super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
