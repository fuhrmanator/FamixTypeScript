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

{ #category : #definition }
FamixTypeScriptGenerator >> defineClasses [
	super defineClasses.
	
	class := builder newClassNamed: #Class.
	containerEntity := builder newClassNamed: #ContainerEntity.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	type := builder newClassNamed: #Type.
   namespace := builder newClassNamed: #Namespace.
	abstractFileAnchor := builder newClassNamed: #AbstractFileAnchor.
	scopingEntity := builder newClassNamed: #ScopingEntity.
	cSourceLanguage := builder newClassNamed: #CSourceLanguage.
	cUSTOMSourceLanguage := builder newClassNamed: #CustomSourceLanguage.
]

{ #category : #definition }
FamixTypeScriptGenerator >> defineHierarchy [
	super defineHierarchy.
	
	cSourceLanguage --|> sourceLanguage.

	cUSTOMSourceLanguage --|> sourceLanguage.
	cUSTOMSourceLanguage --|> #TNamedEntity.
	
	abstractFileAnchor --|> sourceAnchor.
	abstractFileAnchor --|> #TFileAnchor.

	indexedFileAnchor --|> abstractFileAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.

	class --|> type.
	class --|> #TWithExceptions.
	class --|> #TClass.
	class --|> #TCanBeClassSide.		

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
FamixTypeScriptGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
