Class {
	#name : #FamixTypeScriptGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'class',
		'type',
		'namespace',
		'parameter',
		'parameterType',
		'parameterizableClass',
		'parameterizedType',
		'method',
		'behaviouralEntity',
		'leafEntity',
		'structuralEntity',
		'abstractFileAnchor',
		'file',
		'fileAnchor',
		'folder',
		'indexedFileAnchor',
		'multipleFileAnchor',
		'localVariable',
		'attribute',
		'invocation',
		'function',
		'inheritance',
		'module',
		'scopingEntity'
	],
	#category : #'Famix-TypeScript-Generator'
}

{ #category : #accessing }
FamixTypeScriptGenerator class >> packageName [

		^ #'Famix-TypeScript-Entities'
]

{ #category : #accessing }
FamixTypeScriptGenerator class >> packageNameForAnnotations [

	^ #'FamixTypeScript'
]

{ #category : #accessing }
FamixTypeScriptGenerator class >> prefix [

	^ #'FamixTypeScript'
]

{ #category : #accessing }
FamixTypeScriptGenerator class >> translationDictionary [

	| classNames associations |

	classNames := 'Famix-TypeScript-Entities' asPackage definedClasses collect: [:e | e name withoutPrefix: 'FamixTypeScript' ].
	
	associations := classNames collect: [ :each | ('FamixTypeScript.', each) -> ('FamixTypeScript.', each) ] as: OrderedCollection.

	^ Dictionary newFrom: associations.	
]

{ #category : #comments }
FamixTypeScriptGenerator >> commentForTCanBeInterface [
	^ 'I allow an entity to be an interface abstraction
ex:

```java
public interface Flyable {
    public void fly();
}
```'
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineClasses [
	super defineClasses.
	
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	class := builder newClassNamed: #Class.
	scopingEntity := builder newClassNamed: #ContainerEntity.

	type := builder newClassNamed: #Type.
   namespace := builder newClassNamed: #Namespace.

	method := builder newClassNamed: #Method.
	behaviouralEntity := builder newClassNamed: #BehaviouralEntity.
	
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	parameter := builder newClassNamed: #Parameter.
	parameterType := builder newClassNamed: #ParameterType.
	parameterizableClass := builder newClassNamed: #ParameterizableClass.
	parameterizedType := builder newClassNamed: #ParameterizedType.
	structuralEntity := builder newClassNamed: #StructuralEntity.
	
	localVariable := builder newClassNamed: #LocalVariable.
	attribute := builder newClassNamed: #Attribute.
	inheritance := builder newClassNamed: #Inheritance.
	function := builder newClassNamed: #Function.
	
	file := builder newClassNamed: #File.
	folder := builder newClassNamed: #Folder.
	module := builder newClassNamed: #Module.
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [
	super defineHierarchy.
	
	access --|> #TAccess.
	
	attribute --|> structuralEntity.
	attribute --|> #TAttribute.
	attribute --|> #TCanBeClassSide.
	attribute --|> #THasVisibility.
	
	behaviouralEntity --|> scopingEntity.
	
	class --|> type.
	class --|> #TClass.
	class --|> #TCanBeAbstract.
	
	file --|> namedEntity.
	file --|> #TFile.

	folder --|> namedEntity.
	folder --|> #TFolder.

	function --|> behaviouralEntity.
	function --|> #TFunction.
	function --|> #TDefinedInModule.
	function --|> #TInvocable.
	function --|> #TWithLocalVariables.

	indexedFileAnchor --|> #TIndexedFileNavigation.

	inheritance --|> #TInheritance.
	
	invocation --|> #TInvocation.
	invocation --|> #THasSignature.
	
	localVariable --|> structuralEntity.
	localVariable --|> #TLocalVariable.
	
	method --|> behaviouralEntity.
	method --|> #TMethod.
	method --|> #TCanBeAbstract.
	method --|> #THasKind.
	method --|> #THasVisibility.
	"method --|> #TWithSourceLanguages."
	
   "Module"
	module --|> #TWithLocalVariables. "var can have module scope"

	namespace --|> scopingEntity.
	namespace --|> #TNamespace. "no use (empty trait)"
	namespace --|> #TDefinedInModule.
	namespace --|> #TWithLocalVariables. "var can have namespace scope"

	parameter --|> namedEntity.
	parameter --|> #TParameter.
	parameter --|> #TCanBeFinal.
	parameter --|> structuralEntity.	

	parameterizableClass --|> class.
	parameterizableClass --|> #TWithParameterizedTypes.

	parameterizedType --|> type.
	parameterizedType --|> #TParameterizedType.
	parameterizedType --|> #TWithParameterizedTypeUsers.
	parameterizedType --|> #TWithInheritances.

	parameterType --|> type.
	parameterType --|> #TParameterType.
		
	scopingEntity --|> namedEntity.
	scopingEntity --|> #TWithClasses.
	scopingEntity --|> #TWithFunctions.
	scopingEntity --|> #TWithAnnotationTypes.
	scopingEntity --|> #TOODependencyQueries.

	structuralEntity --|> #TStructuralEntity.
	structuralEntity --|> #TWithDereferencedInvocations.

	type --|> scopingEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.	

]

{ #category : #definition }
FamixTypeScriptGenerator >> defineProperties [
super defineProperties.
	((class property: #isInterface type: #Boolean) 
		comment: 'Entity can be an abstraction representing an implementationless interface (language dependent)').

]

{ #category : #definition }
FamixTypeScriptGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
