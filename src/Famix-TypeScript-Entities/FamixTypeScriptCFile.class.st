Class {
	#name : #FamixTypeScriptCFile,
	#superclass : #FamixTypeScriptFile,
	#traits : 'FamixTWithFileIncludes',
	#classTraits : 'FamixTWithFileIncludes classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptCFile class >> annotation [

	<FMClass: #CFile super: #FamixTypeScriptFile>
	<package: #FamixTypeScript>
	<generated>
	^self
]
