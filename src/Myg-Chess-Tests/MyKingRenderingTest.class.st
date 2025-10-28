Class {
	#name : 'MyKingRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKingRenderingTest >> testMyKingRendering [ [ 
	
	| whiteKing blackKing whiteSquare blackSquare |
	
	whiteKing := MyWhiteKing new.
	blackKing := MyBlackKing new.
	
	whiteSquare := MyChessWhiteSquare new .
	blackSquare := MyChessBlackSquare new.
	
	self assert: (blackKing renderOnPiece: whiteSquare) equals: 'L'.
	self assert: (blackKing renderOnPiece: blackSquare ) equals: 'l'.
	self assert: (whiteKing renderOnPiece: whiteSquare ) equals: 'K'.
	self assert: (whiteKing renderOnPiece: blackSquare ) equals: 'k'.
	
	
	  ]
]
