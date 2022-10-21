function o = palindrome(phrase)
    if length(phrase) <= 2
        if phrase(1) == phrase(end)
            o = true;
        else
            o = false;
        end
    else 
       tmpout = (phrase(1)==phrase(end));
       tmpphrase = phrase(2:end-1);
       o = tmpout && palindrome(tmpphrase);
    end
end