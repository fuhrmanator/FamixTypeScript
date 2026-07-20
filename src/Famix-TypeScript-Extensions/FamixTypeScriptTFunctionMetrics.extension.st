Extension { #name : 'FamixTypeScriptTFunctionMetrics' }

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTFunctionMetrics >> cyclomaticComplexity [
	<FMProperty: #cyclomaticComplexity type: #Number>
	<FMComment: 'The number of linear-independent paths through a method.'>
	^ self lookUpPropertyNamed: #cyclomaticComplexity computedAs: [ self computeCyclomaticComplexity ]
]

{ #category : '*Famix-TypeScript-Extensions' }
FamixTypeScriptTFunctionMetrics >> cyclomaticComplexity: aNumber [
	self cacheAt: #cyclomaticComplexity put: aNumber
]
