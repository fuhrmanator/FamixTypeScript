"
One value (constant) in a Typescript enumerated type
"
Class {
	#name : #FamixTypeScriptEnumValue,
	#superclass : #FamixTypeScriptNamedEntity,
	#traits : 'FamixTEnumValue + FamixTWithComments',
	#classTraits : 'FamixTEnumValue classTrait + FamixTWithComments classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptEnumValue class >> annotation [

	<FMClass: #EnumValue super: #FamixTypeScriptNamedEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
