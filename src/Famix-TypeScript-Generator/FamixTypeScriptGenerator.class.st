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
		'enumValue',
		'implicitVariable',
		'association',
		'behaviouralEntity',
		'alias',
		'scopingEntity',
		'scriptEntity',
		'importClause',
		'reference'
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
	alias := builder newClassNamed: #Alias.
	association:= builder newClassNamed: #Association.
	behaviouralEntity := builder newClassNamed: #BehaviouralEntity.
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
	implicitVariable:= builder newClassNamed: #implicitVariable comment: 'I represent a TypeScript implicit variable.'.
	implementation := builder newClassNamed: #Implementation comment: 'I represent a TypeScript element that is an implementation of an interface.'.
	importClause:= builder newClassNamed: #ImportClause.
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
	reference:= builder newClassNamed: #Reference.
	scriptEntity :=builder newClassNamed: #ScriptEntity.
	scopingEntity:= builder newClassNamed: #ScopingEntity.
	structuralEntity := builder newClassNamed: #StructuralEntity.
	type := builder newClassNamed: #Type comment: 'I represent a TypeScript type.'.
	variable := builder newClassNamed: #Variable comment: 'I represent a TypeScript variable.'.
	
	
	primitiveType withTesting.
	"self defineComments."
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [

	super defineHierarchy.

	access--|>association.
	access --|> #TAccess.
	
	alias--|> namedEntity.
	
	association --|>sourcedEntity.
	
	behaviouralEntity --|> containerEntity.

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

	enumValue --|> structuralEntity.
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

	function --|> behaviouralEntity.
	function --|> #TFunction.
	function --|> #TDefinedInModule.
	function --|> #TInvocable.

	implicitVariable --|>variable.
	
	importClause --|>association.
	
	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.
	
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
	interface --|> type.
	
	

	inheritance --|>association.
	inheritance --|> #TInheritance.

	invocation --|>association.
	invocation --|> #TInvocation.
	invocation --|> #THasSignature.

	

	implementation --|> #TImplementation.

	method --|> behaviouralEntity.
	method --|> #TMethod.
	method --|> #TCanBeAbstract.
	method --|> #THasKind.
	method --|> #THasVisibility.
	method --|> #TWithComments.

	"Module"
	module --|>scriptEntity.
	module --|> #TWithLocalVariables. "var can have module scope"

	namespace --|> scopingEntity.
	namespace --|> #TNamespace. "no use (empty trait)"
	namespace --|> #TDefinedInModule.

	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> sourcedEntity.

	parameter --|> structuralEntity.
	parameter --|> #TParameter.
	

	parameterizableClass --|> class.
	parameterizableClass --|> #TWithParameterizedTypes.

	parameterizedType --|> class.
	parameterizedType --|> #TParameterizedType.
	parameterizedType --|> #TWithParameterizedTypeUsers.
	parameterizedType --|> #TWithInheritances.

	parameterType --|> type.
	parameterType --|> #TParameterType.

	primitiveType --|> type.
	primitiveType --|> #TPrimitiveType.

	reference --|>association.
	
	scopingEntity --|>containerEntity.
	
	scriptEntity --|>scopingEntity.
	structuralEntity --|> #TStructuralEntity.
	structuralEntity --|> namedEntity.

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
	(decorator property: #decoratedEntity) *- (namedEntity  property:#decorators).

	
	

	
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
