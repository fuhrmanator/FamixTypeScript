"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `localVariables` | `FamixTWithLocalVariables` | `parentBehaviouralEntity` | `FamixTLocalVariable` | Variables locally defined by this behaviour.|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `outgoingImports` | `FamixTWithImports` | `importingEntity` | `FamixTImport` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingImports` | `FamixTImportable` | `importedEntity` | `FamixTImport` | List of imports of this entity|



"
Class {
	#name : #FamixTypeScriptModule,
	#superclass : #FamixTypeScriptScriptEntity,
	#traits : 'FamixTImportable + FamixTWithImports + FamixTWithLocalVariables',
	#classTraits : 'FamixTImportable classTrait + FamixTWithImports classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#isModule',
		'#isNamespace',
		'#isAmbient'
	],
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptModule class >> annotation [

	<FMClass: #Module super: #FamixTypeScriptScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
