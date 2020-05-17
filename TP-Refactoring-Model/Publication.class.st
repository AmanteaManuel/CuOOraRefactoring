Class {
	#name : #Publication,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Publication >> addVote: aVote [
	votes add: aVote
]

{ #category : #methods }
Publication >> countPositiveVotes [
	^ self positiveVotes size
]

{ #category : #accessing }
Publication >> description [
	^description
]

{ #category : #accessing }
Publication >> description: anObject [
	description := anObject
]

{ #category : #initialization }
Publication >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #methods }
Publication >> isToday [
	^ (timestamp asDate = Date today)
]

{ #category : #methods }
Publication >> negativeVotes [
	^ votes reject: [:vote | vote isLike].

]

{ #category : #methods }
Publication >> positiveVotes [
	^ votes select:[:vote | vote isLike].
]

{ #category : #accessing }
Publication >> timestamp [
	^ timestamp
]

{ #category : #private }
Publication >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Publication >> user [
	^ user
]

{ #category : #private }
Publication >> user: anObject [
	user := anObject
]

{ #category : #accessing }
Publication >> votes [
	^ votes
]
