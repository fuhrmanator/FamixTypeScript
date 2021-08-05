Class {
	#name : #FamixTypeScriptGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'annotationInstance',
		'annotationInstanceAttribute',
		'annotationType',
		'annotationTypeAttribute',
		'attribute',
		'behaviouralEntity',
		'cFile',
		'cPPSourceLanguage',
		'cSourceLanguage',
		'cUSTOMSourceLanguage',
		'caughtException',
		'class',
		'compilationUnit',
		'containerEntity',
		'declaredException',
		'dereferencedInvocation',
		'enum',
		'enumValue',
		'exception',
		'function',
		'globalVariable',
		'header',
		'implicitVariable',
		'include',
		'inheritance',
		'invocation',
		'jAVASourceLanguage',
		'leafEntity',
		'localVariable',
		'method',
		'module',
		'namespace',
		'parameter',
		'parameterType',
		'parameterizableClass',
		'parameterizedType',
		'pharoAnchor',
		'preprocessorDefine',
		'preprocessorIfdef',
		'preprocessorStatement',
		'primitiveType',
		'reference',
		'TYPESCRIPTSourceLanguage',
		'sMALLTALKSourceLanguage',
		'scopingEntity',
		'structuralEntity',
		'thrownException',
		'type',
		'typeAlias',
		'unknownVariable',
		'trait',
		'traitUsage',
		'abstractFileAnchor',
		'file',
		'fileAnchor',
		'folder',
		'indexedFileAnchor',
		'multipleFileAnchor',
		'tCanBeVolatile',
		'tCanBeSynchronized',
		'tCanBeTransient'
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
	
	class := builder newClassNamed: #Class.
	containerEntity := builder newClassNamed: #ContainerEntity.

	type := builder newClassNamed: #Type.
   namespace := builder newClassNamed: #Namespace.
	
	scopingEntity := builder newClassNamed: #ScopingEntity.
	cSourceLanguage := builder newClassNamed: #CSourceLanguage.
	cUSTOMSourceLanguage := builder newClassNamed: #CustomSourceLanguage.
	method := builder newClassNamed: #Method.
	behaviouralEntity := builder newClassNamed: #BehaviouralEntity.
	
	abstractFileAnchor := builder newClassNamed: #AbstractFileAnchor.
	file := builder newClassNamed: #File.
	fileAnchor := builder newClassNamed: #FileAnchor.
	folder := builder newClassNamed: #Folder.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	multipleFileAnchor := builder newClassNamed: #MultipleFileAnchor.
	parameter := builder newClassNamed: #Parameter.
	structuralEntity := builder newClassNamed: #StructuralEntity.
	leafEntity := builder newClassNamed: #LeafEntity.
	
	localVariable := builder newClassNamed: #LocalVariable.
	attribute := builder newClassNamed: #Attribute.
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [
	super defineHierarchy.
	
	cSourceLanguage --|> sourceLanguage.

	cUSTOMSourceLanguage --|> sourceLanguage.
	cUSTOMSourceLanguage --|> #TNamedEntity.
	
	class --|> type.
	class --|> #TWithExceptions.
	class --|> #TClass.
	class --|> #TCanBeClassSide.		
	class --|> #TWithSourceLanguages.

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
	
	scopingEntity --|> containerEntity.
	scopingEntity --|> #TWithGlobalVariables.
	
	method --|> behaviouralEntity.
	method --|> #TMethod.
	method --|> #TWithThrownExceptions.
	method --|> #TWithDeclaredExceptions.
	method --|> #TWithCaughtExceptions.
	method --|> tCanBeSynchronized.
	method --|> #TWithSourceLanguages.
	
	behaviouralEntity --|> containerEntity.
	behaviouralEntity --|> #TWithParameters.
	behaviouralEntity --|> #TInvocable.
	behaviouralEntity --|> #TWithReferences.
	behaviouralEntity --|> #TTypedEntity.
	behaviouralEntity --|> #TWithLocalVariables.
	behaviouralEntity --|> #TWithImplicitVariables.
	behaviouralEntity --|> #TWithDereferencedInvocations.
	behaviouralEntity --|> #THasSignature.
	behaviouralEntity --|> #TWithStatements.
	
	leafEntity --|> namedEntity.
	parameter --|> structuralEntity.
	parameter --|> #TParameter.
	structuralEntity --|> leafEntity.
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
			

]

{ #category : #definition }
FamixTypeScriptGenerator >> defineTraits [
	super defineTraits.
	tCanBeVolatile := builder newTraitNamed: #TCanBeVolatile comment: self commentForTCanBeVolatile.
	tCanBeTransient := builder newTraitNamed: #TCanBeTransient comment: self commentForTCanBeTransient.
	tCanBeSynchronized := builder newTraitNamed: #TCanBeSynchronized comment: self commentForTCanBeSynchronized
]

{ #category : #definition }
FamixTypeScriptGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
