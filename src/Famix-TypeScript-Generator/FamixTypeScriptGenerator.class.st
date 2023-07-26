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
		'implementation',
		'decorator',
		'enum',
		'enumValue'
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
	class := builder newClassNamed: #Class comment: 'I represent a TypeScript class.'.
	class withTesting.
	containerEntity := builder newClassNamed: #ContainerEntity.
	
	"This definition concerns stage 2 decorators: https://www.typescriptlang.org/docs/handbook/decorators.html"
	decorator:= builder newClassNamed: #Decorator comment: 'I represent a TypeScript Decorator'.

	enum := builder newClassNamed: #Enum comment: 'Typescript enumerated type'.
	enumValue := builder newClassNamed: #EnumValue comment: 'One value (constant) in a Typescript enumerated type'.

	field := builder newClassNamed: #Field comment: 'I represent a TypeScript class field.'.
	file := builder newClassNamed: #File.
	folder := builder newClassNamed: #Folder.
	function := builder newClassNamed: #Function comment: 'I represent a TypeScript function.'.
	implementation := builder newClassNamed: #Implementation comment: 'I represent a TypeScript element that is an implementation of an interface.'.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	inheritance := builder newClassNamed: #Inheritance.
	interface := builder newClassNamed: #Interface comment: 'I represent a TypeScript interface.'.
	interface withTesting.
	invocation := builder newClassNamed: #Invocation.
	method := builder newClassNamed: #Method comment: 'I represent a TypeScript method.'.
	module := builder newClassNamed: #Module.
	namespace := builder newClassNamed: #Namespace.
	parameter := builder newClassNamed: #Parameter.
	parameterizableClass := builder newClassNamed: #ParameterizableClass.
	parameterizedType := builder newClassNamed: #ParameterizedType.
	parameterType := builder newClassNamed: #ParameterType.
	primitiveType := builder newClassNamed: #PrimitiveType comment: 'I represent a TypeScript primitive type (string, number, boolean).'.
	structuralEntity := builder newClassNamed: #StructuralEntity.
	type := builder newClassNamed: #Type comment: 'I represent a TypeScript type.'.
	variable := builder newClassNamed: #Variable comment: 'I represent a TypeScript variable.'.
	
	
	primitiveType withTesting.
	"self defineComments."
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [

	super defineHierarchy.

	access --|> #TAccess.

	"behaviouralEntity --|> scopingEntity."

	class --|> type.
	class --|> #TClass.
	class --|> #TLCOMMetrics.
	class --|> #TCanBeAbstract.
	"class --|> #THasVisibility." "classes in modules/namespaces can't be declared private/public"
	class --|> #TClassMetrics.
	class --|> tTypeScriptClassMetrics.
	class --|> #TCanImplement.
	class --|> #TImportable.
	"The following come from #TClass"
	"class --|> #TWithMethods.
	class --|> #TWithInheritances.
	class --|> #TWithAttributes.
	class --|> #TInvocationsReceiver.
	class --|> #TWithComments."

	"this level of hierarchy to follow Java's metamodel, to accommodate Interfac properly TODO"
	containerEntity --|> namedEntity.
	containerEntity --|> #TWithClasses.
	containerEntity --|> tWithInterfaces.
	containerEntity --|> #TWithFunctions.
	containerEntity --|> #TWithAnnotationTypes.
	containerEntity --|> #TWithLocalVariables.
	"containerEntity --|> #TWithModules?"

	decorator --|>namedEntity.
	
	enum --|> type.
	enum --|> #TEnum.
	enum --|> #TWithComments.
	enum --|> #TImportable.

	enumValue --|> namedEntity.
	enumValue --|> #TWithComments.
	enumValue --|> #TEnumValue.

	field --|> structuralEntity.
	field --|> #TAttribute.
	field --|> #TCanBeClassSide.
	field --|> #THasVisibility.

	file --|> namedEntity.
	file --|> #TFile.

	folder --|> namedEntity.
	folder --|> #TFolder.

	function --|> containerEntity.
	function --|> #TFunction.
	function --|> #TDefinedInModule.
	function --|> #TInvocable.

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

	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.

	inheritance --|> #TInheritance.

	invocation --|> #TInvocation.
	invocation --|> #THasSignature.

	interface --|> type.

	implementation --|> #TImplementation.

	method --|> containerEntity.
	method --|> #TMethod.
	method --|> #TCanBeAbstract.
	method --|> #THasKind.
	method --|> #THasVisibility.
	method --|> #TWithComments.

	"Module"
	module --|> #TWithLocalVariables. "var can have module scope"

	namespace --|> containerEntity.
	namespace --|> #TNamespace. "no use (empty trait)"
	namespace --|> #TDefinedInModule.

	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> sourcedEntity.

	parameter --|> namedEntity.
	parameter --|> #TParameter.
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

	structuralEntity --|> #TStructuralEntity.
	structuralEntity --|> sourcedEntity.

	tWithInterfaces --|> #TWithTypes.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TParameterizedTypeUser.
	type --|> #TWithMethods.
	
	variable --|> structuralEntity.
	variable --|> #TLocalVariable.

]

{ #category : #definition }
FamixTypeScriptGenerator >> defineProperties [

	super defineProperties.

	(decorator property: #expression type: #String)
		comment: 'Decorators use the form @expression, where expression must evaluate to a function that will be called at runtime with information about the decorated declaration'.
	"The following are not need because of THasKind (?)"

	"(method property: #isConstructor type: #Boolean defaultValue: false) 
		comment: 'Method is a constructor (class initilizer)'.
	(method property: #isGetter type: #Boolean defaultValue: false) 
		comment: 'Method is a getter'.
	(method property: #isSetter type: #Boolean defaultValue: false) 
		comment: 'Method is a setter'"
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineRelations [
    super defineRelations.
	(decorator property: #namedEntity) *- (namedEntity  property:#decorators).

	
	

	
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineTraits [ 

	super defineTraits.
	tWithInterfaces := builder newTraitNamed: #TWithInterfaces.
	tWithInterfaces comment: self commentForTWithInterfaces.

	tTypeScriptClassMetrics := builder newTraitNamed: #TClassMetrics.
]

{ #category : #definition }
FamixTypeScriptGenerator >> newBuilder [

	^ super newBuilder
		  withFileImport;
		  yourself
]
