"
I am an object that stores information for the instantiation of a domain object.
"
Class {
	#name : #SAIntermediaryObject,
	#superclass : #Object,
	#instVars : [
		'domainMethod',
		'domainArgument'
	],
	#category : #SecurityAttack
}

{ #category : #accessing }
SAIntermediaryObject >> domainArgument [

	^ domainArgument
]

{ #category : #accessing }
SAIntermediaryObject >> domainArgument: anObject [

	domainArgument := anObject
]

{ #category : #accessing }
SAIntermediaryObject >> domainMethod [

	^ domainMethod
]

{ #category : #accessing }
SAIntermediaryObject >> domainMethod: anObject [

	domainMethod := anObject
]
