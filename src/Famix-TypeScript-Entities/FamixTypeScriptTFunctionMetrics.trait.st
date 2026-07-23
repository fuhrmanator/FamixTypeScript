"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `cyclomaticComplexity` | `Number` | 0 | Cyclomatic Complexity Property for Functions.|

"
Trait {
	#name : 'FamixTypeScriptTFunctionMetrics',
	#instVars : [
		'#cyclomaticComplexity => FMProperty defaultValue: 0'
	],
	#category : 'Famix-TypeScript-Entities-Traits',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixTypeScriptTFunctionMetrics classSide >> annotation [

	<FMClass: #TFunctionMetrics super: #Object>
	<package: #FamixTypeScript>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixTypeScriptTFunctionMetrics >> cyclomaticComplexity [

	<FMProperty: #cyclomaticComplexity type: #Number defaultValue: 0>
	<generated>
	<FMComment: 'Cyclomatic Complexity Property for Functions.'>
	^ cyclomaticComplexity ifNil: [ cyclomaticComplexity := 0 ]
]

{ #category : 'accessing' }
FamixTypeScriptTFunctionMetrics >> cyclomaticComplexity: anObject [
	<generated>
	cyclomaticComplexity := anObject
]
