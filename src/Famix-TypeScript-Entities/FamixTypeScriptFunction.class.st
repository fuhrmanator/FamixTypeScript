Class {
	#name : #FamixTypeScriptFunction,
	#superclass : #FamixTypeScriptBehaviouralEntity,
	#traits : 'FamixTDefinedInModule + FamixTFunction',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTFunction classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptFunction class >> annotation [

	<FMClass: #Function super: #FamixTypeScriptBehaviouralEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
