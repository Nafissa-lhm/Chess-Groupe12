Class {
	#name : 'MyKingRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKingRenderingTest >> testMyKingRendering [ [ 
	
	| whiteKing blackKing whiteKingSquare blackKingSquare |
	
	whiteKing := MyWhiteKing new.
	blackKing := MyBlackKing new.
	
	whiteKingSquare := MyChessWhiteSquare new .
	blackKingSquare := MyChessBlackSquare new.
	
	self assert: (blackKing renderPieceOn: whiteKingSquare ) equals: 'L'.
	self assert: (blackKing renderPieceOn: blackKingSquare ) equals: 'l'.
	self assert: (whiteKing renderPieceOn: whiteKingSquare ) equals: 'K'.
	self assert: (whiteKing renderPieceOn: blackKingSquare ) equals: 'k'.
	
	
	  ]
]
