Class {
	#name : #FamixTypeScriptNamespace,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTNamespace + FamixTWithGlobalVariables',
	#classTraits : 'FamixTNamespace classTrait + FamixTWithGlobalVariables classTrait',
	#instVars : [
		'#parentNamespace => FMOne type: #FamixTypeScriptNamespace opposite: #childNamespaces',
		'#childNamespaces => FMMany type: #FamixTypeScriptNamespace opposite: #parentNamespace'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixTypeScriptContainerEntity>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixTypeScriptNamespace >> addChildNamespace: anObject [
	<generated>
	^ self childNamespaces add: anObject
]

{ #category : #accessing }
FamixTypeScriptNamespace >> childNamespaces [
	"Relation named: #childNamespaces type: #FamixTypeScriptNamespace opposite: #parentNamespace"

	<generated>
	<FMComment: 'Namespaces embedded in this namespace, if any.'>
	<derived>
	^ childNamespaces
]

{ #category : #accessing }
FamixTypeScriptNamespace >> childNamespaces: anObject [

	<generated>
	childNamespaces value: anObject
]

{ #category : #accessing }
FamixTypeScriptNamespace >> parentNamespace [
	"Relation named: #parentNamespace type: #FamixTypeScriptNamespace opposite: #childNamespaces"

	<generated>
	<FMComment: 'Parent namespace embedding this namespace, if any.'>
	<container>
	^ parentNamespace
]

{ #category : #accessing }
FamixTypeScriptNamespace >> parentNamespace: anObject [

	<generated>
	parentNamespace := anObject
]

{ #category : #navigation }
FamixTypeScriptNamespace >> parentNamespaceGroup [
	<generated>
	<navigation: 'ParentNamespace'>
	^ MooseSpecializedGroup with: self parentNamespace
]
