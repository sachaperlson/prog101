x <- c(1.0, 3.4, 9.8, 3.9, 7.3, 8.2, 3.8, 2.2, 1.9, 6.9)
# How long are the outputBinding<UUID>(transaction: SwiftUI.Transaction(plist: []), location: SwiftUI.LocationBox<SwiftUI.(unknown context at $1d7d65db0).ProjectedLocation<SwiftUI.LocationBox<SwiftUI.FunctionalLocation<MemoKit.ListNote.Item>>, Swift.WritableKeyPath<MemoKit.ListNote.Item, Foundation.UUID>>>, _value: 3873D99D-543B-43B3-925C-56BFE7C12E1D) vectors for each of the following expressions?
length(x)
#1
atan(x)
#10
x^2
#10
max(x)
#1


# LETTERS is a built-in vector containing the letters of the alphabet,
# capitalized.
# Use slice indexing to pull out the first 10 letters of the alphabet.
LETTERS[1:10]

# Use non-contiguous indexing to pull out the 5th, 10th, and 15th letters.
LETTERS[c(5,10,15)]
letter_idx <- c(5,10,15)
LETTERS[letter_idx]
LETTERS[letter_idx-1]

# Convert the last ten letters of the alphabet to lower case.
letters[17:26]

tolower(LETTERS[(length(LETTERS)-10):length(LETTERS)])

#binary operator- operator that acts on two things (pay attention to parenthesis)
