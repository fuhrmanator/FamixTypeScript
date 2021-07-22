Class {
	#name : #FamixTypeScriptFile,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTFile',
	#classTraits : 'FamixTFile classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFile class >> annotation [

	<FMClass: #File super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
