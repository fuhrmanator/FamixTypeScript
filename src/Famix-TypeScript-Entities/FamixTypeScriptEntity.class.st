Class {
	#name : #FamixTypeScriptEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixTypeScriptEntity class >> metamodel [

	<generated>
	^ FamixTypeScriptModel metamodel
]

{ #category : #testing }
FamixTypeScriptEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixTypeScriptEntity >> isType [

	<generated>
	^ false
]
