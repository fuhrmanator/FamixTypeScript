"
file :=  'ArgoUML-0.34.mse' asFileReference readStream.

dictionary := Dictionary newFrom: (
	FamixTypeScriptEntity withAllSubclasses collect: [ :c | 
		cn := c name withoutPrefix: #FamixTypeScript.
		('FAMIX.', cn) -> ('FamixTypescript-Entities.', cn) ]).

dictionary at: 'FAMIX.TypescriptSourceLanguage' put: 'FamixTypescript-Entities.SourceLanguage'.

repo := MooseModel importFrom: file withMetamodel: FamixTypescriptGenerator metamodel translationDictionary: dictionary.

model := MooseModel new.
	model silentlyAddAll: repo elements.
	model entityStorage forRuntime.
model.
"
Class {
	#name : #FamixTypeScriptEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #FamixTypeScript>
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
