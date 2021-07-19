Class {
	#name : #FamixTypeScriptScopingEntity,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTWithGlobalVariables',
	#classTraits : 'FamixTWithGlobalVariables classTrait',
	#instVars : [
		'#parentScope => FMOne type: #FamixTypeScriptScopingEntity opposite: #childScopes',
		'#childScopes => FMMany type: #FamixTypeScriptScopingEntity opposite: #parentScope'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptScopingEntity class >> annotation [

	<FMClass: #ScopingEntity super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]

{ #category : #adding }
FamixTypeScriptScopingEntity >> addChildScope: anObject [
	<generated>
	^ self childScopes add: anObject
]

{ #category : #accessing }
FamixTypeScriptScopingEntity >> childScopes [
	"Relation named: #childScopes type: #FamixTypeScriptScopingEntity opposite: #parentScope"

	<generated>
	<FMComment: 'Child scopes embedded in this scope, if any.'>
	<derived>
	^ childScopes
]

{ #category : #accessing }
FamixTypeScriptScopingEntity >> childScopes: anObject [

	<generated>
	childScopes value: anObject
]

{ #category : #accessing }
FamixTypeScriptScopingEntity >> parentScope [
	"Relation named: #parentScope type: #FamixTypeScriptScopingEntity opposite: #childScopes"

	<generated>
	<FMComment: 'Parent scope embedding this scope, if any.'>
	<container>
	^ parentScope
]

{ #category : #accessing }
FamixTypeScriptScopingEntity >> parentScope: anObject [

	<generated>
	parentScope := anObject
]

{ #category : #navigation }
FamixTypeScriptScopingEntity >> parentScopeGroup [
	<generated>
	<navigation: 'ParentScope'>
	^ MooseSpecializedGroup with: self parentScope
]
