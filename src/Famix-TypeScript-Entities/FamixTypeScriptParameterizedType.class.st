Class {
	#name : #FamixTypeScriptParameterizedType,
	#superclass : #FamixTypeScriptClass,
	#traits : 'FamixTParameterizedType + FamixTWithInheritances + FamixTWithParameterizedTypeUsers',
	#classTraits : 'FamixTParameterizedType classTrait + FamixTWithInheritances classTrait + FamixTWithParameterizedTypeUsers classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptParameterizedType class >> annotation [

	<FMClass: #ParameterizedType super: #FamixTypeScriptClass>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
