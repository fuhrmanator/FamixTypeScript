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
		'caughtException',
		'class',
		'containerEntity',
		'declaredException',
		'enum',
		'enumValue',
		'exception',
		'globalVariable',
		'implicitVariable',
		'inheritance',
		'invocation',
		'localVariable',
		'method',
		'namespace',
		'parameter',
		'parameterType',
		'parameterizableClass',
		'primitiveType',
		'reference',
		'thrownException',
		'type',
		'unknownVariable',
		'parameterizedType',
		'file',
		'folder',
		'indexedFileAnchor',
		'tCanBeVolatile',
		'tCanBeTransient',
		'tCanBeSynchronized'
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

{ #category : #definition }
FamixTypeScriptGenerator >> defineClasses [
	super defineClasses.
	
	class := builder newClassNamed: #Class.
	containerEntity := builder newClassNamed: #ContainerEntity.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	type := builder newClassNamed: #Type.
   namespace := builder newClassNamed: #Namespace.
	self defineComments
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineComments [
	(builder ensureClassNamed: #Entity)
		comment:
			'file :=  ''ArgoUML-0.34.mse'' asFileReference readStream.

dictionary := Dictionary newFrom: (
	FamixTypeScriptEntity withAllSubclasses collect: [ :c | 
		cn := c name withoutPrefix: #FamixTypeScript.
		(''FAMIX.'', cn) -> (''FamixTypescript-Entities.'', cn) ]).

dictionary at: ''FAMIX.TypescriptSourceLanguage'' put: ''FamixTypescript-Entities.SourceLanguage''.

repo := MooseModel importFrom: file withMetamodel: FamixTypescriptGenerator metamodel translationDictionary: dictionary.

model := MooseModel new.
	model silentlyAddAll: repo elements.
	model entityStorage forRuntime.
model.'
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [
	super defineHierarchy.

	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.

	class --|> type.
	class --|> #TWithExceptions.
	class --|> #TClass.
	class --|> #TLCOMMetrics.
	class --|> #TCanBeAbstract.
	class --|> #TCanBeFinal.
	class --|> #THasVisibility.
	class --|> #TCanBeClassSide.	

	containerEntity --|> namedEntity.
	containerEntity --|> #TWithClasses.
	containerEntity --|> #TWithAnnotationTypes.
	containerEntity --|> #TOODependencyQueries.

	namedEntity --|> #TPackageable.
	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> #TWithAnnotationInstances.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.
	type --|> #TParameterizedTypeUser.
	type --|> #TWithMethods.

namespace --|> containerEntity.
	namespace --|> #TNamespace.
	namespace --|> #TWithGlobalVariables.
	


]

{ #category : #definition }
FamixTypeScriptGenerator >> defineProperties [
	super defineProperties.
	((namespace property: #parentNamespace)
		comment: 'Parent namespace embedding this namespace, if any.';
		container) *- ((namespace property: #childNamespaces) comment: 'Namespaces embedded in this namespace, if any.').
]

{ #category : #definition }
FamixTypeScriptGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
