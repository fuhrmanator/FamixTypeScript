Class {
	#name : #FamixTypeScriptSourceLanguage,
	#superclass : #FamixTypeScriptEntity,
	#traits : 'FamixTSourceLanguage',
	#classTraits : 'FamixTSourceLanguage classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptSourceLanguage class >> annotation [

	<FMClass: #SourceLanguage super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : #testing }
FamixTypeScriptSourceLanguage >> isTypeScript [
	^ true
]

{ #category : #testing }
FamixTypeScriptSourceLanguage >> isUnknown [
	^ false
]

{ #category : #testing }
FamixTypeScriptSourceLanguage >> name [
	
	<FMProperty: #name type: #String> 
	<derived>
	<FMComment: 'The name of the language'>
	
	^ 'TypeScript'
]
