"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `cyclomaticComplexity` | `Number` | false | Cyclomatic Complexity Property for Functions.|

"
Trait {
	#name : 'FamixTypeScriptTFunctionMetrics',
	#instVars : [
		'#cyclomaticComplexity => FMProperty defaultValue: false'
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

	<FMProperty: #cyclomaticComplexity type: #Number defaultValue: false>
	<generated>
	<FMComment: 'Cyclomatic Complexity Property for Functions.'>
	^ cyclomaticComplexity ifNil: [ cyclomaticComplexity := false ]
]

{ #category : 'accessing' }
FamixTypeScriptTFunctionMetrics >> cyclomaticComplexity: anObject [
	<generated>
	cyclomaticComplexity := anObject
]
