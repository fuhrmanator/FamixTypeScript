Class {
	#name : #FamixTypeScriptStructuralEntity,
	#superclass : #FamixTypeScriptLeafEntity,
	#traits : 'FamixTStructuralEntity + FamixTWithDereferencedInvocations',
	#classTraits : 'FamixTStructuralEntity classTrait + FamixTWithDereferencedInvocations classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptStructuralEntity class >> annotation [

	<FMClass: #StructuralEntity super: #FamixTypeScriptLeafEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
