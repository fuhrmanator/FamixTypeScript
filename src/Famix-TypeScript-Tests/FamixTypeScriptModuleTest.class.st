Class {
	#name : 'FamixTypeScriptModuleTest',
	#superclass : 'TestCase',
	#category : 'Famix-TypeScript-Tests',
	#package : 'Famix-TypeScript-Tests'
}

{ #category : 'tests' }
FamixTypeScriptModuleTest >> testIsAmbient [
	| m1 m2 model |
	model := FamixTypeScriptModel new.
	m1 := FamixTypeScriptModule named: 'module1' model: model.
	m2 := FamixTypeScriptModule named: 'module2' model: model.
	
	m1 isAmbient: true.
	self assert: m1 isAmbient equals: true.
	
	m1 isAmbient: false.
	self assert: m1 isAmbient equals: false.
]

{ #category : 'tests' }
FamixTypeScriptModuleTest >> testIsModule [
	| m1 m2 model |
	model := FamixTypeScriptModel new.
	m1 := FamixTypeScriptModule named: 'module1' model: model.
	m2 := FamixTypeScriptModule named: 'module2' model: model.
	
	m1 isModule: true.
	self assert: m1 isModule equals: true.
	
	m1 isModule: false.
	self assert: m1 isModule equals: false.
]

{ #category : 'tests' }
FamixTypeScriptModuleTest >> testIsNamespace [
	| m1 m2 model |
	model := FamixTypeScriptModel new.
	m1 := FamixTypeScriptModule named: 'module1' model: model.
	m2 := FamixTypeScriptModule named: 'module2' model: model.
	
	m1 isNamespace: true.
	self assert: m1 isNamespace equals: true.
	
	m1 isNamespace: false.
	self assert: m1 isNamespace equals: false.
]
