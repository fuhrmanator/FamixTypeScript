Class {
	#name : #FamixTypeScriptClass,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTCanBeAbstract + FamixTCanBeClassSide + FamixTCanBeFinal + FamixTClass + FamixTHasVisibility + FamixTLCOMMetrics + FamixTWithExceptions',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTCanBeClassSide classTrait + FamixTCanBeFinal classTrait + FamixTClass classTrait + FamixTHasVisibility classTrait + FamixTLCOMMetrics classTrait + FamixTWithExceptions classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptClass class >> annotation [

	<FMClass: #Class super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^self
]
