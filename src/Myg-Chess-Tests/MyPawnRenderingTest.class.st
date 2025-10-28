Class {
	#name : 'MyPawnRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnRenderingTest >> testMyPawnRendering [ [ 
	
	| whitePawn blackPawn whitePawnSquare blackPawnSquare |
	
	whitePawn := MyWhitePawn new.
	blackPawn := MyBlackPawn new.
	
	whitePawnSquare := MyChessWhiteSquare new .
	blackPawnSquare := MyChessBlackSquare new.
	
	self assert: (blackPawn renderPieceOn: whitePawnSquare ) equals: 'O'.
	self assert: (blackPawn renderPieceOn: blackPawnSquare ) equals: 'o'.
	self assert: (whitePawn renderPieceOn: whitePawnSquare ) equals: 'P'.
	self assert: (whitePawn renderPieceOn: blackPawnSquare ) equals: 'p'.
	
	
	
	
	  ]
]
