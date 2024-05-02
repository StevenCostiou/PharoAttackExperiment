"
Domain object victim of the attack
"
Class {
	#name : #SADomainObject,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #SecurityAttack
}

{ #category : #'instance creation' }
SADomainObject class >> instantiate: objectName [

	^self new name: objectName
]

{ #category : #accessing }
SADomainObject >> name [

	^ name
]

{ #category : #accessing }
SADomainObject >> name: anObject [

	name := anObject
]

{ #category : #printing }
SADomainObject >> printOn: aStream [

	aStream << name
]
