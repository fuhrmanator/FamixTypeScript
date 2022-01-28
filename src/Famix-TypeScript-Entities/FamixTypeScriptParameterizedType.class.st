Class {
	#name : #FamixTypeScriptParameterizedType,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTParameterizedType + FamixTWithInheritances + FamixTWithParameterizedTypeUsers',
	#classTraits : 'FamixTParameterizedType classTrait + FamixTWithInheritances classTrait + FamixTWithParameterizedTypeUsers classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptParameterizedType class >> annotation [

	<FMClass: #ParameterizedType super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^self
]
