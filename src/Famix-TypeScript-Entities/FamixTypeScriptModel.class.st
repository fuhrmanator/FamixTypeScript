Class {
	#name : #FamixTypeScriptModel,
	#superclass : #MooseModel,
	#category : #'Famix-TypeScript-Entities-Model'
}

{ #category : #accessing }
FamixTypeScriptModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FamixTypeScriptModel class >> annotation [
	<FMClass: #FamixTypeScriptModel super: #MooseModel>
	<package: #FamixTypeScript>
	<generated>
]

{ #category : #testing }
FamixTypeScriptModel class >> canBeImportedFromFile [
	<generated>
	^true
]
