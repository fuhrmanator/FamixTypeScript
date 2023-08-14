Class {
	#name : #FamixTypeScriptScopingEntity,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptScopingEntity class >> annotation [

	<FMClass: #ScopingEntity super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
