"
I represent a TypeScript interface.
"
Class {
	#name : #FamixTypeScriptInterface,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTImplementable + FamixTImportable + FamixTInvocationsReceiver + FamixTWithAttributes + FamixTWithComments + FamixTWithImports + FamixTWithInheritances + FamixTWithMethods',
	#classTraits : 'FamixTImplementable classTrait + FamixTImportable classTrait + FamixTInvocationsReceiver classTrait + FamixTWithAttributes classTrait + FamixTWithComments classTrait + FamixTWithImports classTrait + FamixTWithInheritances classTrait + FamixTWithMethods classTrait',
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
