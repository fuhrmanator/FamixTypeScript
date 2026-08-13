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
| `imports` | `FamixTWithImports` | `importingEntity` | `FamixTImport` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingImports` | `FamixTImportable` | `importedEntity` | `FamixTImport` | List of imports of this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isAmbient` | `Boolean` | false | |
| `isModule` | `Boolean` | false | |
| `isNamespace` | `Boolean` | false | |

"
Class {
	#name : 'FamixTypeScriptModule',
	#superclass : 'FamixTypeScriptScriptEntity',
	#traits : 'FamixTImportable + FamixTWithImports + FamixTWithLocalVariables',
	#classTraits : 'FamixTImportable classTrait + FamixTWithImports classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#isAmbient => FMProperty defaultValue: false',
		'#isModule => FMProperty defaultValue: false',
		'#isNamespace => FMProperty defaultValue: false'
	],
	#category : 'Famix-TypeScript-Entities-Entities',
	#package : 'Famix-TypeScript-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixTypeScriptModule class >> annotation [

	<FMClass: #Module super: #FamixTypeScriptScriptEntity>
	<package: #'Famix-TypeScript-Entities'>
	<generated>
]
