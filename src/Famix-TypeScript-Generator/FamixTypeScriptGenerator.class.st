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
		'structuralEntity',
		'file',
		'folder',
		'indexedFileAnchor',
		'invocation',
		'function',
		'inheritance',
		'module',
		'containerEntity',
		'tTypeScriptClassMetrics',
		'variable',
		'field',
		'interface',
		'primitiveType',
		'tWithInterfaces',
		'implementation'
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
FamixTypeScriptGenerator >> commentForTWithInterfaces [

^ 'I can contain interfaces (Packages, Methods, Classes...)'
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineClasses [
	super defineClasses.
	
	access := builder newClassNamed: #Access.
	"behaviouralEntity := builder newClassNamed: #BehaviouralEntity."
	class := builder newClassNamed: #Class.
	class withTesting.
	containerEntity := builder newClassNamed: #ContainerEntity.
	field := builder newClassNamed: #Field.
	file := builder newClassNamed: #File.
	folder := builder newClassNamed: #Folder.
	function := builder newClassNamed: #Function.
	implementation := builder newClassNamed: #Implementation.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	inheritance := builder newClassNamed: #Inheritance.
	interface := builder newClassNamed: #Interface.
	interface withTesting.
	invocation := builder newClassNamed: #Invocation.
	method := builder newClassNamed: #Method.
	module := builder newClassNamed: #Module.
	namespace := builder newClassNamed: #Namespace.
	parameter := builder newClassNamed: #Parameter.
	parameterizableClass := builder newClassNamed: #ParameterizableClass.
	parameterizedType := builder newClassNamed: #ParameterizedType.
	parameterType := builder newClassNamed: #ParameterType.
	primitiveType := builder newClassNamed: #PrimitiveType.
	structuralEntity := builder newClassNamed: #StructuralEntity.
	type := builder newClassNamed: #Type.
	variable := builder newClassNamed: #Variable.

	primitiveType withTesting.
	"self defineComments."
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [
	super defineHierarchy.
	
	access --|> #TAccess.
	
	"Note: attribute in Java"
	field --|> structuralEntity.
	field --|> #TAttribute.
	field --|> #TCanBeClassSide.
	field --|> #THasVisibility.
	
	"behaviouralEntity --|> scopingEntity."
	
	class --|> type.
	class --|> #TClass.
	class --|> #TLCOMMetrics.
	class --|> #TCanBeAbstract.
	"class --|> #TCanBeFinal." "not possible in TypeScript?"
	"class --|> #THasVisibility." "classes in modules/namespaces can't be declared private/public"
	class --|> #TClassMetrics.
	"class --|> #TCanBeClassSide." 
	class --|> #TCanImplement.
	class --|> #TWithImports.
	class --|> #TImportable.

   "The following come from #TClass"
	"class --|> #TWithMethods.
	class --|> #TWithInheritances.
	class --|> #TWithAttributes.
	class --|> #TInvocationsReceiver.
	class --|> #TWithComments."

	interface --|> type.
	"interface --|> #TPackageable."
	interface --|> #TWithMethods.
	interface --|> #TWithInheritances.
	interface --|> #TWithAttributes.
	interface --|> #TInvocationsReceiver.
	"interface --|> #TCanBeFinal."
	"interface --|> #THasVisibility." "classes in modules/namespaces can't be declared private/public"
	interface --|> #TWithComments.
	interface --|> #TImplementable.
	interface --|> #TWithImports.
	interface --|> #TImportable.
		
	"this level of hierarchy to follow Java's metamodel, to accommodate Interfac properly TODO"
	containerEntity --|> namedEntity.
	
	file --|> namedEntity.
	file --|> #TFile.

	folder --|> namedEntity.
	folder --|> #TFolder.

	function --|> containerEntity.
	function --|> #TFunction.
	function --|> #TDefinedInModule.
	function --|> #TInvocable.
	function --|> #TWithLocalVariables.

	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.

	inheritance --|> #TInheritance.
	
	invocation --|> #TInvocation.
	invocation --|> #THasSignature.
	
	interface --|> type.
	
	implementation --|> #TImplementation.
	
	variable --|> structuralEntity.
	variable --|> #TLocalVariable.
	
	method --|> containerEntity.
	method --|> #TMethod.
	method --|> #TCanBeAbstract.
	method --|> #THasKind.
	method --|> #THasVisibility.
	method --|> #TWithLocalVariables.
	
   "Module"
	module --|> #TWithLocalVariables. "var can have module scope"

	namespace --|> containerEntity.
	namespace --|> #TNamespace. "no use (empty trait)"
	namespace --|> #TDefinedInModule.
	namespace --|> #TWithLocalVariables. "var can have namespace scope"

	namedEntity --|> #TInvocationsReceiver.

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

	primitiveType --|> type.
	primitiveType --|> #TPrimitiveType.
	
	containerEntity --|> namedEntity.
	containerEntity --|> #TWithClasses.
	containerEntity --|> tWithInterfaces.
	containerEntity --|> #TWithFunctions.
	containerEntity --|> #TWithAnnotationTypes.
	"containerEntity --|> #TWithModules?" "TypeScript has modules?"
	
	tWithInterfaces --|> #TWithTypes.

	"Not in FamixJava"
	"structuralEntity --|> #TStructuralEntity.
	structuralEntity --|> #TWithDereferencedInvocations."

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TParameterizedTypeUser.
	type --|> #TWithMethods.

]

{ #category : #definition }
FamixTypeScriptGenerator >> defineProperties [
  super defineProperties.

  ((method property: #isConstructor type: #Boolean) 
		comment: 'Method is a constructor (class initilizer)').
	"((class property: #isInterface type: #Boolean) 
		comment: 'Entity can be an abstraction representing an implementationless interface (language dependent)')."

]

{ #category : #definition }
FamixTypeScriptGenerator >> defineTraits [ 

	super defineTraits.
	"tTypeScriptClassMetrics := builder newTraitNamed: #TClassMetrics."
	
	tWithInterfaces := builder newTraitNamed: #TWithInterfaces.
	tWithInterfaces comment: self commentForTWithInterfaces.

]

{ #category : #definition }
FamixTypeScriptGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
