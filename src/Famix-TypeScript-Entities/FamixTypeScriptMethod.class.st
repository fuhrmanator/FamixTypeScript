Class {
	#name : #FamixTypeScriptMethod,
	#superclass : #FamixTypeScriptBehaviouralEntity,
	#traits : 'FamixTCanBeAbstract + FamixTMethod + FamixTypeScriptTCanBeSynchronized',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTMethod classTrait + FamixTypeScriptTCanBeSynchronized classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptMethod class >> annotation [

	<FMClass: #Method super: #FamixTypeScriptBehaviouralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
