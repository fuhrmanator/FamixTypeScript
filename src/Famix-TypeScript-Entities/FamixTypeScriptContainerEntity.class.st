Class {
	#name : #FamixTypeScriptContainerEntity,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTWithAnnotationTypes + FamixTWithClasses + TOODependencyQueries',
	#classTraits : 'FamixTWithAnnotationTypes classTrait + FamixTWithClasses classTrait + TOODependencyQueries classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptContainerEntity class >> annotation [

	<FMClass: #ContainerEntity super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
