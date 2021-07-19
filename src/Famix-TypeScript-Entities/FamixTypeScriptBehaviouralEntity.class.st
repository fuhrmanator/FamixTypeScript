Class {
	#name : #FamixTypeScriptBehaviouralEntity,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTHasSignature + FamixTInvocable + FamixTTypedEntity + FamixTWithDereferencedInvocations + FamixTWithImplicitVariables + FamixTWithLocalVariables + FamixTWithParameters + FamixTWithReferences + FamixTWithStatements',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTTypedEntity classTrait + FamixTWithDereferencedInvocations classTrait + FamixTWithImplicitVariables classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FamixTWithReferences classTrait + FamixTWithStatements classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
