Class {
	#name : 'FamixTypeScriptParametricTest',
	#superclass : 'TestCase',
	#instVars : [
		'parametricClass',
		'model',
		'stringClass',
		'listTypeParameter',
		'genericListClass'
	],
	#category : 'Famix-TypeScript-Tests',
	#package : 'Famix-TypeScript-Tests'
}

{ #category : 'running' }
FamixTypeScriptParametricTest >> setUp [

	super setUp.
	self skip.

	parametricClass := FamixTypeScriptParametricClass new name: 'ParametricClass'.
	
	model := FamixTypeScriptModel new.

	stringClass := model newClassNamed: 'String'.

	listTypeParameter := model newParameterType
		                     name: 'E';
		                     yourself.
	genericListClass := model newParametricClass
		                    name: 'List';
		                    addTypeParameter: listTypeParameter
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> test1 [
	"TODO: These comments are not examples of Parametric Methods or Functions"
	"testMethod(list: Array<any>): Array<any>{}"
	"testFunction(list: Array<any>): Array<any>{}"
	"const testArrowFunction = (list: Array<any>): Array<any> => {}"

	| method parameter list function parameterConcretisation parametricArrowFunction |
	method := FamixTypeScriptParametricMethod new name: 'testMethod'.
	function := FamixTypeScriptParametricFunction new name: 'testFunction'.
	parametricArrowFunction := FamixTypeScriptParametricArrowFunction new name: 'testArrowFunction'.
	parameter := FamixTypeScriptParameter new name: 'list'.
	list := FamixTypeScriptParametricClass new name: 'Array'.
	parameterConcretisation := FamixTypeScriptType new name: 'any'.
	"list addConcreteParameter: parameterConcretisation."
	parameter typing: (FamixTypeScriptEntityTyping new declaredType: list).
	method addParameter: parameter.
	method typing: (FamixTypeScriptEntityTyping new declaredType: list).
	function addParameter: parameter.
	function typing: (FamixTypeScriptEntityTyping new declaredType: list).
	parametricArrowFunction addParameter: parameter.
	parametricArrowFunction typing: (FamixTypeScriptEntityTyping new declaredType: list).
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> test2 [
	"genericMethod<T extends Building>(t: T): T {}"
	"function genericFunction<T extends Building>(t: T): T {}"
	"const genericArrowFunction = <T extends Building>(t: T): T => {}"

	| m p return f parameterType af |
	m := FamixTypeScriptParametricMethod new name: 'genericMethod'.
	f := FamixTypeScriptParametricFunction new name: 'genericFunction'.
	af := FamixTypeScriptParametricArrowFunction new name: 'genericArrowFunction'.
	p := FamixTypeScriptParameter new name: 't'.
	parameterType := FamixTypeScriptParameterType named: 'T'.
	p typing: (FamixTypeScriptEntityTyping new declaredType: parameterType).
	m addParameter: p.
	f addParameter: p.
	af addParameter: p.
	return := parameterType.
	FamixTypeScriptInheritance new
		subclass: return;
		superclass: (FamixTypeScriptClass new name: 'Building').
	m typing: (FamixTypeScriptEntityTyping new declaredType: return).
	f typing: (FamixTypeScriptEntityTyping new declaredType: return).
	af typing: (FamixTypeScriptEntityTyping new declaredType: return).
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> test3 [
	"class ClassA<K, V> {}

	 class ClassB<V> extends ClassA<string, V> {
	   // not parametric because V (when it is concretized) will be the same in this method
   		method(num: number, s: string, v: V): void { }
		
	   // Parametric because T (when it is concretized) will be different depending on how this method is called
   		parametricMethod(num: number, s: string, t: T): T {
		    return t;
   		}
		
	   // not parametric because V (when it is concretized) will be the same in this method
	  	cArrow = (a: number, v: V): void => { };

	   // Parametric because T (when it is concretized) will be different depending on how this method is called
	  	cParametricArrow = (t: T, v: V): T => {
			return t;
		};
	 }
	"

	| classA k vFromClassA classB vFromClassB method |
	"ClassA"
	classA := model newParametricClass
		          name: 'ClassA';
		          yourself.
	k := model newParameterType
		     name: 'K';
		     yourself.
	vFromClassA := model newParameterType
		               yourself.
	classA typeParameters: {
			k.
			vFromClassA }.

	"ClassB"
	classB := model newParametricClass
		          name: 'ClassB';
		          yourself.
	vFromClassB := model newParameterType
		               name: 'V';
		               yourself.
	classB addTypeParameter: vFromClassB.

	"Inheritance"
	model newParametricInheritance
		superclass: classB;
		subclass: classB;
		addConcretization: (model newConcretization
				 typeParameter: k;
				 typeArgument: stringClass);
		addConcretization: (model newConcretization
				 typeParameter: vFromClassA;
				 typeArgument: vFromClassB).

	"Method"
	method := model newMethodNamed: 'method'.
	method addParameter: ((model newParameterNamed: 's') typing:
			 (model newEntityTyping declaredType: stringClass)).
	method addParameter: ((model newParameterNamed: 'v') typing:
			 (model newEntityTyping declaredType: vFromClassB))
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> testConcreteAndGenericParameter [
	"class ClassA<V> {}

	class ClassB extends ClassA<string>"

	| parameter1 parameter2 |
	parameter1 := FamixTypeScriptType new name: 'String'.
	parameter2 := FamixTypeScriptParameterType new name: 'V'.

	parametricClass concreteParameters: { parameter1 }.
	parametricClass genericParameters: { parameter2 }.
	self
		assertCollection: parametricClass concreteParameters
		hasSameElements: { parameter1 }.
	self
		assertCollection: parametricClass genericParameters
		hasSameElements: { parameter2 }
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> testConcretizationEntity [
	"class List<T>
	class ClassB extends List<string>"

	| listT listString |
	listT := FamixTypeScriptParametricClass new name: 'ListT'.
	listString := FamixTypeScriptParametricClass new name: 'ListString'.
	FamixTypeScriptConcretization new
		concreteEntity: listString;
		genericEntity: listT.
	self
		assertCollection: (listT concretizations collect: #concreteEntity)
		hasSameElements: { listString }
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> testConcretizationParameter [
	"class ClassA<T>
	
	class ClassB extends ClassA<Generic>"

	| classA e classB |
	"ClassA"
	classA := model newParametricClass
		          name: 'ClassA';
		          yourself.
	e := model newTypeParameter
		     name: 'E';
		     genericEntity: classA;
		     yourself.

	"ClassB"
	classB := model newClassNamed: 'ClassB'.

	"Inheritance"
	model newParametricInheritance
		superclass: classA;
		subclass: classB;
		addConcretization: (model newConcretization
				 typeParameter: e;
				 typeArgument: stringClass;
				 yourself).
	self
		assertCollection: (e concretizations collect: #typeArgument)
		hasSameElements: { stringClass }
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> testInheritanceClass [

	| class1 class2 |
	class1 := FamixTypeScriptClass new name: 'Class1'.
	class2 := FamixTypeScriptClass new name: 'Class2'.

	parametricClass addSubInheritance: (FamixTypeScriptInheritance new
			 subclass: class1;
			 superclass: parametricClass).

	class1 addSubInheritance: (FamixTypeScriptInheritance new
			 subclass: class2;
			 superclass: class1).

	self
		assertCollection: parametricClass subclassHierarchy
		hasSameElements: {
				class1.
				class2 }
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> testInheritanceParameter [
	"class ClassA<subGeneric extends supGeneric> {
	}
	"

	| supGeneric subGeneric subConcrete |
	supGeneric := FamixTypeScriptParameterType new name: 'supGeneric'.
	subGeneric := FamixTypeScriptParameterType new name: 'subGeneric'.
	subConcrete := FamixTypeScriptClass new name: 'String'.

	FamixTypeScriptInheritance new
		subclass: subGeneric;
		superclass: supGeneric.
	self
		assertCollection: (supGeneric subInheritances collect: #subclass)
		hasSameElements: { subGeneric }.
	subConcrete addSuperInheritance: (FamixTypeScriptInheritance new
			 subclass: subConcrete;
			 superclass: supGeneric).
	self
		assertCollection: (supGeneric subInheritances collect: #subclass)
		hasSameElements: {
				subGeneric.
				subConcrete }
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> testIsConcreteEntity [

	"self assert: parametricClass isGenericEntity.

	FamixTypeScriptConcretization new
		genericEntity: FamixTypeScriptParametricClass new;
		concreteEntity: parametricClass.
	self deny: parametricClass isGenericEntity"
]

{ #category : 'tests' }
FamixTypeScriptParametricTest >> testUsesGenerics [

	"| parameter1 parameter2 |
	parameter1 := FamixTypeScriptType named: 'String'.
	parameter2 := FamixTypeScriptParameterType named: 'V'.
	self deny: parametricClass usesGenerics.

	parametricClass addConcreteParameter: parameter1.
	self deny: parametricClass usesGenerics.

	parametricClass addGenericParameter: parameter2.
	self assert: parametricClass usesGenerics."

	"a concrete parameter can still be generic"
	"parametricClass genericParameters: {  }.
	parametricClass addConcreteParameter: parameter2.
	self assert: parametricClass usesGenerics"
]
