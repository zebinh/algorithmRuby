def rank(key, a)
    return -1 if a == nil || a.length == 0
    recursion(key, a, 0, a.length - 1)
end

def recursion(key, a, l, r)
    return -1 if l > r
    m = l + (r - l) / 2
    return m if a[m] == key
    if a[m] < key then recursion(key, a, m+1, r)
    else recursion(key, a, l, m-1)
    end
end

puts rank(4, [1, 2, 3, 4, 5])
p rank(5, [5])