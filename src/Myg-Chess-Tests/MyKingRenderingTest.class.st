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
	
	self assert: (blackKing renderPieceOn: whiteSquare) equals: 'L'.
	self assert: (blackKing renderPieceOn: blackSquare ) equals: 'l'.
	self assert: (whiteKing renderPieceOn: whiteSquare ) equals: 'K'.
	self assert: (whiteKing renderPieceOn: blackSquare ) equals: 'k'.
	
	
	  ]
]
