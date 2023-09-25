Class {
	#name : #FamixTypeScriptModule,
	#superclass : #FamixTypeScriptScriptEntity,
	#traits : 'FamixTImportable + FamixTWithImports + FamixTWithLocalVariables',
	#classTraits : 'FamixTImportable classTrait + FamixTWithImports classTrait + FamixTWithLocalVariables classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptModule class >> annotation [

	<FMClass: #Module super: #FamixTypeScriptScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
