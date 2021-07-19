Class {
	#name : #FamixTypeScriptNamedEntity,
	#superclass : #FamixTypeScriptSourcedEntity,
	#traits : 'FamixTCanBeAbstract + FamixTCanBeFinal + FamixTHasVisibility + FamixTInvocationsReceiver + FamixTNamedEntity + FamixTPackageable + FamixTWithAnnotationInstances',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTCanBeFinal classTrait + FamixTHasVisibility classTrait + FamixTInvocationsReceiver classTrait + FamixTNamedEntity classTrait + FamixTPackageable classTrait + FamixTWithAnnotationInstances classTrait',
	#category : #'Famix-TypeScript-Entities-Entities'
}

{ #category : #meta }
FamixTypeScriptNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixTypeScriptSourcedEntity>
	<package: #FamixTypeScript>
	<generated>
	^self
]
