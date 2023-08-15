Class {
	#name : #FamixTypeScriptModule,
	#superclass : #FamixTypeScriptScriptEntity,
	#traits : 'FamixTWithLocalVariables',
	#classTraits : 'FamixTWithLocalVariables classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptModule class >> annotation [

	<FMClass: #Module super: #FamixTypeScriptScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
