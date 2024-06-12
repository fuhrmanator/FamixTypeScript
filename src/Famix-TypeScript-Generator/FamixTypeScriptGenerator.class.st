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
		'method',
		'parametricMethod',
		'file',
		'folder',
		'indexedFileAnchor',
		'invocation',
		'function',
		'parametricFunction',
		'inheritance',
		'module',
		'containerEntity',
		'tTypeScriptClassMetrics',
		'variable',
		'interface',
		'primitiveType',
		'tWithInterfaces',
		'implementation',
		'decorator',
		'enum',
		'enumValue',
		'implicitVariable',
		'alias',
		'scriptEntity',
		'importClause',
		'reference',
		'accessor',
		'property',
		'variableStatement',
		'jsDoc',
		'parametricClass',
		'parametricInterface',
		'concretization',
		'parameterConcretization'
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
FamixTypeScriptGenerator >> commentForConcretization [
	"To verify"
	^ '## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericEntity` | `FamixTConcretization` | `concretizations` | `FamixTParametricEntity` | Generic entity linked to in this relationship. from-side of the association|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concreteEntity` | `FamixTConcretization` | `genericization` | `FamixTParametricEntity` | Concrete entity linked to in this relationship. to-side of the association|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `parameterConcretizations` | `FamixTConcretization` | `concretizations` | `FamixTParameterConcretization` | |
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
'
]

{ #category : #'as yet unclassified' }
FamixTypeScriptGenerator >> commentForParameterConcretization [
	^ '## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericParameter` | `FamixTParameterConcretization` | `concretizations` | `FamixTGenericParameterType` | Generic parameter linked to in this relationship. from-side of the association|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concreteParameter` | `FamixTParameterConcretization` | `generics` | `FamixTConcreteParameterType` | Concrete parameter linked to in this relationship. to-side of the association|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concretizations` | `FamixTParameterConcretization` | `parameterConcretizations` | `FamixTConcretization` | |
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
'
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
	accessor := builder newClassNamed: #Accessor comment: 'I represent a TypeScript Accessor (getter or setter)'.
	alias := builder newClassNamed: #Alias.
	class := builder newClassNamed: #Class comment: 'I represent a TypeScript class.'.
	class withTesting.
	concretization := builder newClassNamed: #Concretization comment: self commentForConcretization.
	containerEntity := builder newClassNamed: #ContainerEntity.
	
	"This definition concerns stage 2 decorators: https://www.typescriptlang.org/docs/handbook/decorators.html"
	decorator:= builder newClassNamed: #Decorator comment: 'I represent a TypeScript Decorator'.

	enum := builder newClassNamed: #Enum comment: 'Typescript enumerated type'.
	enumValue := builder newClassNamed: #EnumValue comment: 'One value (constant) in a Typescript enumerated type'.

	property := builder newClassNamed: #Property comment: 'I represent a TypeScript class property.'.
	file := builder newClassNamed: #File.
	folder := builder newClassNamed: #Folder.
	function := builder newClassNamed: #Function comment: 'I represent a TypeScript function.'.
	parametricFunction := builder newClassNamed: #ParametricFunction comment: 'I represent a TypeScript parametric function.' .
	implicitVariable:= builder newClassNamed: #implicitVariable comment: 'I represent a TypeScript implicit variable.'.
	implementation := builder newClassNamed: #Implementation comment: 'I represent a TypeScript element that is an implementation of an interface.'.
	importClause:= builder newClassNamed: #Import.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	inheritance := builder newClassNamed: #Inheritance.
	interface := builder newClassNamed: #Interface comment: 'I represent a TypeScript interface.'.
	interface withTesting.
	invocation := builder newClassNamed: #Invocation.
	jsDoc := builder newClassNamed: #JSDoc comment: 'I represent a TypeScript (JavaScript) Doc element.'.
	method := builder newClassNamed: #Method comment: 'I represent a TypeScript method.'.
	parametricMethod := builder newClassNamed: #ParametricMethod comment: 'I represent a TypeScript parametric Method.'. .
	module := builder newClassNamed: #Module.
	namespace := builder newClassNamed: #Namespace.
	parameter := builder newClassNamed: #Parameter.
	parametricClass := builder newClassNamed: #ParametricClass.
	parameterConcretization := builder newClassNamed: #ParameterConcretization  comment: self commentForParameterConcretization. 
	parametricInterface := builder newClassNamed: #ParametricInterface.
	"parameterizedType := builder newClassNamed: #ParameterizedType."
	parameterType := builder newClassNamed: #ParameterType.
	primitiveType := builder newClassNamed: #PrimitiveType comment: 'I represent a TypeScript primitive type (string, number, boolean).'.
	reference:= builder newClassNamed: #Reference.
	scriptEntity :=builder newClassNamed: #ScriptEntity.
	type := builder newClassNamed: #Type comment: 'I represent a TypeScript type.'.
	variable := builder newClassNamed: #Variable comment: 'I represent a TypeScript variable.'.
	variableStatement := builder newClassNamed: #VariableStatement comment: 'I represent a TypeScript variable statement.'.
	
	primitiveType withTesting.
	"self defineComments."
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [

	super defineHierarchy.

	access --|> #TAccess.
	
	accessor --|> method.
	
	alias --|> namedEntity.
	alias --|> #TImportable.
	
	class --|> type.
	class --|> #TClass.
	class --|> #TLCOMMetrics.
	class --|> #TCanBeAbstract.
	"class --|> #THasVisibility." "classes in modules/namespaces can't be declared private/public"
	class --|> #TClassMetrics.
	class --|> tTypeScriptClassMetrics.
	class --|> #TCanImplement.
	class --|> #TImportable.
	class --|> #TWithAccesses.
	class --|> #TWithInvocations.
	class --|> #TCanBeClassSide.
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
	decorator --|> #TImportable.
	
	enum --|> type.
	enum --|> #TEnum.
	enum --|> #TWithComments.
	enum --|> #TImportable.

	enumValue --|> namedEntity.
	enumValue --|> #TWithComments.
	enumValue --|> #TEnumValue.

	file --|> namedEntity.
	file --|> #TFile.

	folder --|> namedEntity.
	folder --|> #TFolder.

	function --|> containerEntity.
	function --|> #TFunction.
	function --|> #TDefinedInModule.
	function --|> #TInvocable.
	function --|> #TImportable.
	
	parametricFunction --|> function.
	parametricFunction --|> #TParametricEntity. 

	implicitVariable --|>variable.
	
	importClause --|> #TImport.
	
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
	"interface --|> #TWithImports."
	"interface --|> #TImportable." "Gets it from type?"

	inheritance --|> #TInheritance.

	invocation --|> #TInvocation.
	invocation --|> #THasSignature.

	implementation --|> #TImplementation.
	
	jsDoc --|> sourcedEntity.

	method --|> containerEntity.
	method --|> #TMethod.
	method --|> #TCanBeAbstract.
	method --|> #THasKind.
	method --|> #THasVisibility.
	method --|> #TWithComments.
	
	parametricMethod --|> method.
	parametricMethod --|> #TParametricEntity.

	"Module"
	module --|>scriptEntity.
	module --|> #TWithLocalVariables. "var can have module scope"
	module --|> #TWithImports.
	module --|> #TImportable.

	namespace --|> containerEntity.
	namespace --|> #TNamespace. "no use (empty trait)"
	namespace --|> #TDefinedInModule.
	namespace --|> #TImportable.

	namedEntity --|> sourcedEntity.
	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> #TEntityMetaLevelDependency.
	namedEntity --|> #TImportable. "Allow us abstract imported entities"

	parameter --|> namedEntity.
	parameter --|> #TParameter.

	parameterType --|> type.
	"parameterType --|> #TParameterType."
	parameterType --|> #TGenericParameterType.
	
	parametricClass --|> class.
	"parameterizableClass --|> #TWithParameterizedTypes."
	parametricClass --|> #TParametricEntity.

	parametricInterface --|> interface.
	"parameterizableInterface --|> #TWithParameterizedTypes."
	parametricInterface --|> #TParametricEntity.

	"fusion avec paraterizableClass"
	"parameterizedType --|> type."
	"parameterizedType --|> #TParameterizedType."
	"parameterizedType --|> #TParametricEntity."
	"parameterizedType --|> #TWithParameterizedTypeUsers."
	"parameterizedType --|> #TWithInheritances."
	"parameterizedType --|> #TCanImplement."
	"parameterizedType --|> #TImplementable."
	
	primitiveType --|> type.
	primitiveType --|> #TPrimitiveType.
	
	type --|> #TConcreteParameterType.

	concretization --|> #TConcretization.

	parameterConcretization --|> #TParameterConcretization.


	property --|> namedEntity.
	property --|> #TAttribute.
	property --|> #TCanBeClassSide.
	property --|> #THasVisibility.
	
	scriptEntity --|> containerEntity.
	scriptEntity --|> #TWithStatements.
	
	tWithInterfaces --|> #TWithTypes.

	type --|> containerEntity.
	type --|> #TType.
	"type --|> #TParameterizedTypeUser."
	type --|> #TWithMethods.
	type --|> #TImportable.
	
	variable --|> namedEntity.
	variable --|> #TLocalVariable.
	variable --|> #TImportable.

	variableStatement --|> type.  "Maël added"
	
	parameterType --|> #TWithInheritances.
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
