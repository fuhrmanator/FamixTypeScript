"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FamixTypeScriptTEntityCreator',
	#category : 'Famix-TypeScript-Entities-Model',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Model'
}

{ #category : 'meta' }
FamixTypeScriptTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newAccess [

	<generated>
	^ self add: FamixTypeScriptAccess new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newAccessor [

	<generated>
	^ self add: FamixTypeScriptAccessor new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newAccessorNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptAccessor named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newAlias [

	<generated>
	^ self add: FamixTypeScriptAlias new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newAliasNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptAlias named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newArrowFunction [

	<generated>
	^ self add: FamixTypeScriptArrowFunction new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newArrowFunctionNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptArrowFunction named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newBehaviouralEntity [

	<generated>
	^ self add: FamixTypeScriptBehaviouralEntity new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newBehaviouralEntityNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptBehaviouralEntity named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newClass [

	<generated>
	^ self add: FamixTypeScriptClass new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newClassNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptClass named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newComment [

	<generated>
	^ self add: FamixTypeScriptComment new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newConcretization [

	<generated>
	^ self add: FamixTypeScriptConcretization new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newContainerEntity [

	<generated>
	^ self add: FamixTypeScriptContainerEntity new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newContainerEntityNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptContainerEntity named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newDecorator [

	<generated>
	^ self add: FamixTypeScriptDecorator new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newDecoratorNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptDecorator named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newEnum [

	<generated>
	^ self add: FamixTypeScriptEnum new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newEnumNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptEnum named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newEnumValue [

	<generated>
	^ self add: FamixTypeScriptEnumValue new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newEnumValueNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptEnumValue named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newFile [

	<generated>
	^ self add: FamixTypeScriptFile new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newFileNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptFile named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newFolder [

	<generated>
	^ self add: FamixTypeScriptFolder new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newFolderNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptFolder named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newFunction [

	<generated>
	^ self add: FamixTypeScriptFunction new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newFunctionNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptFunction named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newImplementation [

	<generated>
	^ self add: FamixTypeScriptImplementation new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newImportClause [

	<generated>
	^ self add: FamixTypeScriptImportClause new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newIndexedFileAnchor [

	<generated>
	^ self add: FamixTypeScriptIndexedFileAnchor new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newInheritance [

	<generated>
	^ self add: FamixTypeScriptInheritance new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newInterface [

	<generated>
	^ self add: FamixTypeScriptInterface new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newInterfaceNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptInterface named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newInvocation [

	<generated>
	^ self add: FamixTypeScriptInvocation new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newJSDoc [

	<generated>
	^ self add: FamixTypeScriptJSDoc new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newMethod [

	<generated>
	^ self add: FamixTypeScriptMethod new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newMethodNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptMethod named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newModule [

	<generated>
	^ self add: FamixTypeScriptModule new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newModuleNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptModule named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newNamespace [

	<generated>
	^ self add: FamixTypeScriptNamespace new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newNamespaceNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptNamespace named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParameter [

	<generated>
	^ self add: FamixTypeScriptParameter new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParameterNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptParameter named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParameterType [

	<generated>
	^ self add: FamixTypeScriptParameterType new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParameterTypeNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptParameterType named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricArrowFunction [

	<generated>
	^ self add: FamixTypeScriptParametricArrowFunction new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricArrowFunctionNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptParametricArrowFunction named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricClass [

	<generated>
	^ self add: FamixTypeScriptParametricClass new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricClassNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptParametricClass named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricFunction [

	<generated>
	^ self add: FamixTypeScriptParametricFunction new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricFunctionNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptParametricFunction named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricInterface [

	<generated>
	^ self add: FamixTypeScriptParametricInterface new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricInterfaceNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptParametricInterface named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricMethod [

	<generated>
	^ self add: FamixTypeScriptParametricMethod new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newParametricMethodNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptParametricMethod named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newPrimitiveType [

	<generated>
	^ self add: FamixTypeScriptPrimitiveType new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newPrimitiveTypeNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptPrimitiveType named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newProperty [

	<generated>
	^ self add: FamixTypeScriptProperty new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newPropertyNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptProperty named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newReference [

	<generated>
	^ self add: FamixTypeScriptReference new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newScopingEntity [

	<generated>
	^ self add: FamixTypeScriptScopingEntity new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newScopingEntityNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptScopingEntity named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newScriptEntity [

	<generated>
	^ self add: FamixTypeScriptScriptEntity new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newScriptEntityNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptScriptEntity named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newSourceLanguage [

	<generated>
	^ self add: FamixTypeScriptSourceLanguage new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newSourceTextAnchor [

	<generated>
	^ self add: FamixTypeScriptSourceTextAnchor new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newStructuralEntity [

	<generated>
	^ self add: FamixTypeScriptStructuralEntity new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newStructuralEntityNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptStructuralEntity named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newType [

	<generated>
	^ self add: FamixTypeScriptType new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newTypeNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptType named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newVariable [

	<generated>
	^ self add: FamixTypeScriptVariable new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newVariableNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptVariable named: aName)
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newimplicitVariable [

	<generated>
	^ self add: FamixTypeScriptimplicitVariable new
]

{ #category : 'entity creation' }
FamixTypeScriptTEntityCreator >> newimplicitVariableNamed: aName [

	<generated>
	^ self add: (FamixTypeScriptimplicitVariable named: aName)
]
