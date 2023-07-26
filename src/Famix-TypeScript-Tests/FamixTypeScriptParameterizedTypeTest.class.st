Class {
	#name : #FamixTypeScriptParameterizedTypeTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'Famix-TypeScript-Tests'
}

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> setUp [	
	super setUp.
	model := FamixTypeScriptModel new.
		
	model
		importFromMSEStream:
			'(
		(FamixTypeScript.Class (id: 2) (name ''ClassA''))
		
		(FamixTypeScript.ParameterizableClass (id: 3) (name ''ParameterizableClassA''))
		(FamixTypeScript.ParameterType (id: 5) (name ''A'') (typeContainer (ref: 3)))
		(FamixTypeScript.ParameterType (id: 6) (name ''B'') (typeContainer (ref: 3)))
		(FamixTypeScript.ParameterType (id: 7) (name ''C'') (typeContainer (ref: 3)))
		
		(FamixTypeScript.Type (id: 4) (name ''TypeB''))
		(FamixTypeScript.Type (id: 5) (name ''TypeC''))		
				
		(FamixTypeScript.ParameterizedType (id: 6) (parameterizableClass (ref: 3)) (arguments (ref: 4)))
		(FamixTypeScript.ParameterizedType (id: 7) (parameterizableClass (ref: 3)) (arguments (ref: 4) (ref: 5)))
		
		(FamixTypeScript.Method (id: 10) (name ''methodA1'') (parentType (ref: 2)) (declaredType (ref: 6)))
		(FamixTypeScript.Method (id: 11) (name ''methodA2'') (parentType (ref: 2)) (declaredType (ref: 7)))
		
		(FamixTypeScript.Parameter (id: 12) (name ''parameterMtdA1'') (parentBehaviouralEntity (ref: 10)) (declaredType (ref: 6)))
		(FamixTypeScript.Parameter (id: 13) (name ''parameterMtdA2'') (parentBehaviouralEntity (ref: 11)) (declaredType (ref: 7)))
		
)' readStream
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testArgumentTypes [
	| fmxEntity fmxMethod declaredType typeB typeC parameterizedTypeA parameterizedTypeB parameterizableClassA |
	parameterizedTypeB := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	parameterizedTypeA := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB>'.
	parameterizableClassA := (model entities select: [ :each | each name = 'ParameterizableClassA' ]) at: 1.
	typeB := (model entities select: [ :each | each name = 'TypeB' ]) at: 1.
	typeC := (model entities select: [ :each | each name = 'TypeC' ]) at: 1.
	fmxEntity := model allAttributes entityNamed: #'ClassA.attributeA1'.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := model allAttributes entityNamed: #'ClassA.attributeA2'.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxMethod := (model allMethods select: [ :each | each name = 'methodA1' ]) at: 1.
	declaredType := fmxMethod declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := (fmxMethod parameters select: [ :each | each name = 'parameterMtdA1' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := (fmxMethod localVariables select: [ :each | each name = 'localVariableMtdA1' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxMethod := (model allMethods select: [ :each | each name = 'methodA2' ]) at: 1.
	declaredType := fmxMethod declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxEntity := (fmxMethod parameters select: [ :each | each name = 'parameterMtdA2' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxEntity := (fmxMethod localVariables select: [ :each | each name = 'localVariableMtdA2' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testArguments [
	| parameterizableType |
	parameterizableType := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	self denyEmpty: parameterizableType arguments.
	self assert: parameterizableType arguments size equals: 2
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testArgumentsConstruction [
	| parameterizableType argument1 argument2 |
	parameterizableType := FamixTypeScriptParameterizedType new.
	argument1 := FamixTypeScriptClass new.
	argument2 := FamixTypeScriptClass new.
	parameterizableType arguments: {argument1}.
	parameterizableType arguments add: argument2.
	self assert: parameterizableType arguments size equals: 2.
	self assert: argument1 argumentsInParameterizedTypes size equals: 1.
	self assert: argument1 argumentsInParameterizedTypes first equals: parameterizableType.
	self assert: argument2 argumentsInParameterizedTypes size equals: 1.
	self assert: argument2 argumentsInParameterizedTypes first equals: parameterizableType
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testModelSize [

	self assert: model entities size equals: 13.
	self assert: model allParameterizedTypes size equals: 2
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testMooseName [
	| parameterizableType |
	parameterizableType := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	self assert: parameterizableType isNotNil
]

{ #category : #tests }
FamixTypeScriptParameterizedTypeTest >> testParameterizableClass [
	self assert: model allParameterizableClasses anyOne parameterizedTypes size equals: 2
]
