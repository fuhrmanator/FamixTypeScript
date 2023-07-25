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
FamixTypeScriptImportingContext >> importField [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Field)
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
FamixTypeScriptImportingContext >> importParameterType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParameterType)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParameterizableClass [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParameterizableClass)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importParameterizedType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParameterizedType)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importPrimitiveType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PrimitiveType)
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
FamixTypeScriptImportingContext >> importUnknownSourceLanguage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UnknownSourceLanguage)
]

{ #category : #importing }
FamixTypeScriptImportingContext >> importVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Variable)
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportAccess [

	<generated>
	^ self shouldImport: #Access
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
FamixTypeScriptImportingContext >> shouldImportField [

	<generated>
	^ self shouldImport: #Field
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
FamixTypeScriptImportingContext >> shouldImportParameterType [

	<generated>
	^ self shouldImport: #ParameterType
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParameterizableClass [

	<generated>
	^ self shouldImport: #ParameterizableClass
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportParameterizedType [

	<generated>
	^ self shouldImport: #ParameterizedType
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportPrimitiveType [

	<generated>
	^ self shouldImport: #PrimitiveType
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
FamixTypeScriptImportingContext >> shouldImportUnknownSourceLanguage [

	<generated>
	^ self shouldImport: #UnknownSourceLanguage
]

{ #category : #testing }
FamixTypeScriptImportingContext >> shouldImportVariable [

	<generated>
	^ self shouldImport: #Variable
]
