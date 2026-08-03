Class {
	#name : 'FamixTypeScriptTFunctionMetricsTest',
	#superclass : 'TestCase',
	#category : 'Famix-TypeScript-Tests-Entities',
	#package : 'Famix-TypeScript-Tests',
	#tag : 'Entities'
}

{ #category : 'tests' }
FamixTypeScriptTFunctionMetricsTest >> testCyclomaticComplexityPresence [
	| af1 f1 model |
	model := FamixTypeScriptModel new.
	f1 := FamixTypeScriptFunction named: 'func1' model: model.
	af1 := FamixTypeScriptArrowFunction named: 'arrowFunc1' model: model.
	
	f1 cyclomaticComplexity: 100.
	self assert: f1 cyclomaticComplexity equals: 100.
	
	af1 cyclomaticComplexity: 100.
	self assert: af1 cyclomaticComplexity equals: 100.

	
]
