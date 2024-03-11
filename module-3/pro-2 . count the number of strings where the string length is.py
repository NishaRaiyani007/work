def match_word(word):
    ctr=0
    for word in words:
        if len(word)>1 and word[0]==word[-1]:
            crt+=1
        return ctr
    print(match_words(['abc','def','abd',1234]))
