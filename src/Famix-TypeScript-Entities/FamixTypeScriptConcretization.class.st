"
## Relations
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



"
Class {
	#name : #FamixTypeScriptConcretization,
	#superclass : #FamixTypeScriptEntity,
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptConcretization class >> annotation [

	<FMClass: #Concretization super: #FamixTypeScriptEntity>
	<package: #FamixTypeScript>
	<generated>
	^ self
]
