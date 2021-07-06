Class {
	#name : #FamixTypeScriptType,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTParameterizedTypeUser + FamixTType + FamixTWithMethods + FamixTWithTypeAliases',
	#classTraits : 'FamixTParameterizedTypeUser classTrait + FamixTType classTrait + FamixTWithMethods classTrait + FamixTWithTypeAliases classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptType class >> annotation [

	<FMClass: #Type super: #FamixTypeScriptContainerEntity>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
	^self
]
