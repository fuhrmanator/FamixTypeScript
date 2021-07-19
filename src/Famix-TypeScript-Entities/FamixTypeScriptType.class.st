Class {
	#name : #FamixTypeScriptType,
	#superclass : #FamixTypeScriptContainerEntity,
	#traits : 'FamixTParameterizedTypeUser + FamixTTraitUser + FamixTType + FamixTWithAttributes + FamixTWithInheritances + FamixTWithMethods + FamixTWithTypeAliases',
	#classTraits : 'FamixTParameterizedTypeUser classTrait + FamixTTraitUser classTrait + FamixTType classTrait + FamixTWithAttributes classTrait + FamixTWithInheritances classTrait + FamixTWithMethods classTrait + FamixTWithTypeAliases classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptType class >> annotation [

	<FMClass: #Type super: #FamixTypeScriptContainerEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
