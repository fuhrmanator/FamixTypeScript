Class {
	#name : #FamixTypeScriptStructuralEntity,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTStructuralEntity + FamixTWithDereferencedInvocations',
	#classTraits : 'FamixTStructuralEntity classTrait + FamixTWithDereferencedInvocations classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptStructuralEntity class >> annotation [

	<FMClass: #StructuralEntity super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
