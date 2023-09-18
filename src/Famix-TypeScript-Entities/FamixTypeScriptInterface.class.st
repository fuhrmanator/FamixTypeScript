"
I represent a TypeScript interface.
"
Class {
	#name : #FamixTypeScriptInterface,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTImplementable + FamixTInvocationsReceiver + FamixTWithAttributes + FamixTWithComments + FamixTWithInheritances + FamixTWithMethods',
	#classTraits : 'FamixTImplementable classTrait + FamixTInvocationsReceiver classTrait + FamixTWithAttributes classTrait + FamixTWithComments classTrait + FamixTWithInheritances classTrait + FamixTWithMethods classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptInterface class >> annotation [

	<FMClass: #Interface super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #testing }
FamixTypeScriptInterface >> isInterface [

	<generated>
	^ true
]
