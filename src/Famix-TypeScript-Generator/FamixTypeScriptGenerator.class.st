Class {
	#name : #FamixTypeScriptGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'class',
		'type',
		'tCanBeInterface',
		'containerEntity',
		'namespace',
		'scopingEntity',
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
		'tCanBeVolatile',
		'tCanBeTransient',
		'invocation',
		'function',
		'inheritance',
		'module'
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

{ #category : #comments }
FamixTypeScriptGenerator >> commentForTCanBeSynchronized [
	^ 'I allow an entity to be synchronized
ex:

```java
public class SynchronizedCounter {
    private int c = 0;

    public synchronized void increment() {
        c++;
    }
}
```'
]

{ #category : #comments }
FamixTypeScriptGenerator >> commentForTCanBeTransient [
	^ 'I allow an entity to be transient
ex:

```java
public class Student implements Serializable{  
 transient int age; //Now it will not be serialized  
}  
```'
]

{ #category : #comments }
FamixTypeScriptGenerator >> commentForTCanBeVolatile [
	^ 'I allow an entity to be volatible
ex:

```java
public class SharedObject {
    public volatile int counter = 0;
}
```'
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineClasses [
	super defineClasses.
	
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	class := builder newClassNamed: #Class.
	containerEntity := builder newClassNamed: #ContainerEntity.

	type := builder newClassNamed: #Type.
   namespace := builder newClassNamed: #Namespace.
	scopingEntity := builder newClassNamed: #ScopingEntity.

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
	module := builder newClassName: #Module.
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [
	super defineHierarchy.
	
	access --|> #TAccess.
	
	class --|> type.
	class --|> #TWithExceptions.
	class --|> #TClass.
	class --|> #TCanBeClassSide.		
	class --|> tCanBeInterface. "Trait defined locally"
	"class --|> #TWithSourceLanguages."

	containerEntity --|> namedEntity.
	containerEntity --|> #TWithClasses.
	containerEntity --|> #TWithFunctions.
	containerEntity --|> #TWithAnnotationTypes.
	containerEntity --|> #TOODependencyQueries.

	namedEntity --|> #TPackageable.
	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> #TWithAnnotationInstances.
	namedEntity --|> #THasVisibility.
	namedEntity --|> #TCanBeAbstract.
	namedEntity --|> #TCanBeFinal.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.
	type --|> #TWithMethods.
	type --|> #TWithInheritances.
	type --|> #TWithAttributes.
	type --|> #TParameterizedTypeUser.
	type --|> #TTraitUser. 
	

	namespace --|> scopingEntity.
	namespace --|> #TNamespace.

	parameter --|> namedEntity.
	parameter --|> #TParameter.
	parameter --|> #TCanBeFinal.

	parameterType --|> type.
	parameterType --|> #TParameterType.

	parameterizableClass --|> class.
	parameterizableClass --|> #TWithParameterizedTypes.

	parameterizedType --|> type.
	parameterizedType --|> #TParameterizedType.
	parameterizedType --|> #TWithParameterizedTypeUsers.
	parameterizedType --|> #TWithInheritances.
	
	scopingEntity --|> containerEntity.
	scopingEntity --|> #TWithGlobalVariables.
	
	method --|> behaviouralEntity.
	method --|> #TMethod.
	"method --|> #TWithSourceLanguages."
	
	behaviouralEntity --|> containerEntity.
	
	leafEntity --|> namedEntity.
	parameter --|> structuralEntity.
	parameter --|> #TParameter.
	structuralEntity --|> #TAccessible.
	structuralEntity --|> #TStructuralEntity.
	structuralEntity --|> #TWithDereferencedInvocations.
	
	abstractFileAnchor --|> sourceAnchor.
	abstractFileAnchor --|> #TFileAnchor.

	file --|> namedEntity.
	file --|> #TFile.

	fileAnchor --|> abstractFileAnchor.
	fileAnchor --|> #TFileNavigation.

	folder --|> namedEntity.
	folder --|> #TFolder.

	indexedFileAnchor --|> abstractFileAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.

	multipleFileAnchor --|> sourceAnchor.
	multipleFileAnchor --|> #TMultipleFileAnchor.

	sourcedEntity --|> #TWithFiles.
	localVariable --|> structuralEntity.
	localVariable --|> #TLocalVariable.
	
	attribute --|> structuralEntity.
	attribute --|> #TAttribute.
	attribute --|> #TWithClassScope.
	attribute --|> tCanBeVolatile.
	attribute --|> tCanBeTransient.
	
	invocation --|> #TInvocation.
	invocation --|> #THasSignature.
	
	function --|> behaviouralEntity.
	function --|> #TFunction.
	function --|> #TDefinedInModule.
	function --|> #TInvocable.
	function --|> #TWithLocalVariables.

	inheritance --|> #TInheritance.
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineProperties [
super defineProperties.
	((scopingEntity property: #parentScope)
			comment: 'Parent scope embedding this scope, if any.';
			container)
		*-
	((scopingEntity property: #childScopes)
			comment: 'Child scopes embedded in this scope, if any.').
			
	((tCanBeInterface property: #isInterface type: #Boolean) 
		comment: 'Entity can be an abstraction representing an implementationless interface (language dependent)').

]

{ #category : #definition }
FamixTypeScriptGenerator >> defineTraits [
	super defineTraits.
	
	tCanBeInterface := builder newTraitNamed: #TCanBeInterface comment: self commentForTCanBeInterface
]

{ #category : #definition }
FamixTypeScriptGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
