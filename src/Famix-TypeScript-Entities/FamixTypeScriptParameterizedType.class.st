Class {
	#name : #FamixTypeScriptParameterizedType,
	#superclass : #FamixTypeScriptType,
	#traits : 'FamixTCanImplement + FamixTImplementable + FamixTParameterizedType + FamixTWithInheritances + FamixTWithParameterizedTypeUsers',
	#classTraits : 'FamixTCanImplement classTrait + FamixTImplementable classTrait + FamixTParameterizedType classTrait + FamixTWithInheritances classTrait + FamixTWithParameterizedTypeUsers classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptParameterizedType class >> annotation [

	<FMClass: #ParameterizedType super: #FamixTypeScriptType>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
