Class {
	#name : #Answer,
	#superclass : #Publication,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	^ self new
		description: anAnswer;
		user: aUser;
		question: aQuestion;
		yourself
]

{ #category : #accessing }
Answer >> description [
	^ description
]

{ #category : #private }
Answer >> description: anObject [
	description := anObject
]

{ #category : #private }
Answer >> question: aQuestion [
	question := aQuestion 
]

{ #category : #accessing }
Answer >> timestamp [
	^ timestamp
]

{ #category : #private }
Answer >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Answer >> user [
	^ user
]

{ #category : #private }
Answer >> user: anObject [
	user := anObject
]

{ #category : #accessing }
Answer >> votes [
	^ votes
]
