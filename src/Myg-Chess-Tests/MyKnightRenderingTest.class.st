Class {
	#name : 'MyKnightRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKnightRenderingTest >> testMyKnightRendering [ [ 
	
	| whiteKnight blackKnight whiteKnightSquare blackKnightSquare |
	
	whiteKnight := MyWhiteKnight new.
	blackKnight := MyBlackKnight new.
	
	whiteKnightSquare := MyChessWhiteSquare new .
	blackKnightSquare := MyChessBlackSquare new.
	
	self assert: (blackKnight renderPieceOn: whiteKnightSquare ) equals: 'M'.
	self assert: (blackKnight renderPieceOn: blackKnightSquare ) equals: 'm'.
	self assert: (whiteKnight renderPieceOn: whiteKnightSquare ) equals: 'N'.
	self assert: (whiteKnight renderPieceOn: blackKnightSquare ) equals: 'n'.
	
	
	
	
	  ]
]
