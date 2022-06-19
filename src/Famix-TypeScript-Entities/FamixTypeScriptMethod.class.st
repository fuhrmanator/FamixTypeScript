Class {
	#name : #FamixTypeScriptMethod,
	#superclass : #FamixTypeScriptBehaviouralEntity,
	#traits : 'FamixTCanBeAbstract + FamixTHasKind + FamixTHasVisibility + FamixTMethod + FamixTypeScriptTCanBeSynchronized',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTHasKind classTrait + FamixTHasVisibility classTrait + FamixTMethod classTrait + FamixTypeScriptTCanBeSynchronized classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptMethod class >> annotation [

	<FMClass: #Method super: #FamixTypeScriptBehaviouralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
