Class {
	#name : #FamixTypeScriptMethod,
	#superclass : #FamixTypeScriptBehaviouralEntity,
	#traits : 'FamixTMethod + FamixTWithCaughtExceptions + FamixTWithDeclaredExceptions + FamixTWithSourceLanguages + FamixTWithThrownExceptions + FamixTypeScriptTCanBeSynchronized',
	#classTraits : 'FamixTMethod classTrait + FamixTWithCaughtExceptions classTrait + FamixTWithDeclaredExceptions classTrait + FamixTWithSourceLanguages classTrait + FamixTWithThrownExceptions classTrait + FamixTypeScriptTCanBeSynchronized classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptMethod class >> annotation [

	<FMClass: #Method super: #FamixTypeScriptBehaviouralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
