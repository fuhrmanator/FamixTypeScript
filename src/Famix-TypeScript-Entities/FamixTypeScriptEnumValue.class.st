"
One value (constant) in a Typescript enumerated type
"
Class {
	#name : #FamixTypeScriptEnumValue,
	#superclass : #FamixTypeScriptStructuralEntity,
	#traits : 'FamixTEnumValue + FamixTWithComments',
	#classTraits : 'FamixTEnumValue classTrait + FamixTWithComments classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptEnumValue class >> annotation [

	<FMClass: #EnumValue super: #FamixTypeScriptStructuralEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
