Class {
	#name : #FamixTypeScriptScriptEntity,
	#superclass : #FamixTypeScriptScopingEntity,
	#traits : 'FamixTWithStatements',
	#classTraits : 'FamixTWithStatements classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptScriptEntity class >> annotation [

	<FMClass: #ScriptEntity super: #FamixTypeScriptScopingEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
