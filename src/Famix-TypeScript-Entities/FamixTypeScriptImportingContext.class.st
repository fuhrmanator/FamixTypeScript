"
This class is used to choose the entities to be imported when loading a model from file.
It is used by `MiImportingContextPresenter` in a `MiImportModelFromFileDialog` to import a FamixTypeScriptModel.
"
Class {
	#name : #FamixTypeScriptImportingContext,
	#superclass : #FamixImportingContext,
	#category : #'Famix-TypeScript-Entities-Import'
}

{ #category : #accessing }
FamixTypeScriptImportingContext class >> importedMetamodel [

	<generated>
	^ FamixTypeScriptModel metamodel
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importAccess [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Access)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importAccessor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Accessor)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importAlias [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Alias)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importArrowFunction [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ArrowFunction)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importAttribute [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Attribute)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importBehaviouralEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #BehaviouralEntity)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importClass [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Class)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importComment [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Comment)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importConcretization [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Concretization)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importContainerEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ContainerEntity)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importDecorator [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Decorator)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importEnum [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Enum)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importEnumValue [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #EnumValue)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importFile [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #File)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importFolder [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Folder)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importFunction [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Function)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importImplementation [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Implementation)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importImportClause [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #ImportClause)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importIndexedFileAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #IndexedFileAnchor)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importInheritance [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Inheritance)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importInterface [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Interface)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importInvocation [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Invocation)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importJSDoc [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #JSDoc)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importMethod [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Method)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importModule [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Module)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importNamespace [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Namespace)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParameter [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Parameter)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParameterConcretization [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #ParameterConcretization)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParameterType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParameterType)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParametricArrowFunction [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParametricArrowFunction)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParametricClass [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParametricClass)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParametricFunction [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParametricFunction)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParametricInterface [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParametricInterface)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParametricMethod [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParametricMethod)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importPrimitiveType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PrimitiveType)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importProperty [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Property)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importReference [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Reference)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importScopingEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ScopingEntity)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importScriptEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ScriptEntity)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importSourceLanguage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceLanguage)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importSourceTextAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceTextAnchor)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importStructuralEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #StructuralEntity)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Type)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Variable)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importimplicitVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #implicitVariable)
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportAccess [

	<generated>
	^ self shouldImport: #Access
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportAccessor [

	<generated>
	^ self shouldImport: #Accessor
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportAlias [

	<generated>
	^ self shouldImport: #Alias
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportArrowFunction [

	<generated>
	^ self shouldImport: #ArrowFunction
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportAttribute [

	<generated>
	^ self shouldImport: #Attribute
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportBehaviouralEntity [

	<generated>
	^ self shouldImport: #BehaviouralEntity
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportClass [

	<generated>
	^ self shouldImport: #Class
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportComment [

	<generated>
	^ self shouldImport: #Comment
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportConcretization [

	<generated>
	^ self shouldImport: #Concretization
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportContainerEntity [

	<generated>
	^ self shouldImport: #ContainerEntity
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportDecorator [

	<generated>
	^ self shouldImport: #Decorator
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportEnum [

	<generated>
	^ self shouldImport: #Enum
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportEnumValue [

	<generated>
	^ self shouldImport: #EnumValue
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportFile [

	<generated>
	^ self shouldImport: #File
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportFolder [

	<generated>
	^ self shouldImport: #Folder
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportFunction [

	<generated>
	^ self shouldImport: #Function
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportImplementation [

	<generated>
	^ self shouldImport: #Implementation
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportImportClause [

	<generated>
	^ self shouldImport: #ImportClause
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportIndexedFileAnchor [

	<generated>
	^ self shouldImport: #IndexedFileAnchor
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportInheritance [

	<generated>
	^ self shouldImport: #Inheritance
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportInterface [

	<generated>
	^ self shouldImport: #Interface
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportInvocation [

	<generated>
	^ self shouldImport: #Invocation
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportJSDoc [

	<generated>
	^ self shouldImport: #JSDoc
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportMethod [

	<generated>
	^ self shouldImport: #Method
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportModule [

	<generated>
	^ self shouldImport: #Module
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportNamespace [

	<generated>
	^ self shouldImport: #Namespace
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParameter [

	<generated>
	^ self shouldImport: #Parameter
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParameterConcretization [

	<generated>
	^ self shouldImport: #ParameterConcretization
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParameterType [

	<generated>
	^ self shouldImport: #ParameterType
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParametricArrowFunction [

	<generated>
	^ self shouldImport: #ParametricArrowFunction
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParametricClass [

	<generated>
	^ self shouldImport: #ParametricClass
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParametricFunction [

	<generated>
	^ self shouldImport: #ParametricFunction
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParametricInterface [

	<generated>
	^ self shouldImport: #ParametricInterface
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParametricMethod [

	<generated>
	^ self shouldImport: #ParametricMethod
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportPrimitiveType [

	<generated>
	^ self shouldImport: #PrimitiveType
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportProperty [

	<generated>
	^ self shouldImport: #Property
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportReference [

	<generated>
	^ self shouldImport: #Reference
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportScopingEntity [

	<generated>
	^ self shouldImport: #ScopingEntity
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportScriptEntity [

	<generated>
	^ self shouldImport: #ScriptEntity
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportSourceLanguage [

	<generated>
	^ self shouldImport: #SourceLanguage
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportSourceTextAnchor [

	<generated>
	^ self shouldImport: #SourceTextAnchor
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportStructuralEntity [

	<generated>
	^ self shouldImport: #StructuralEntity
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportType [

	<generated>
	^ self shouldImport: #Type
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportVariable [

	<generated>
	^ self shouldImport: #Variable
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportimplicitVariable [

	<generated>
	^ self shouldImport: #implicitVariable
]
