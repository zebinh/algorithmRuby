def rank(key, a)
    return -1 if a == nil || a.length == 0
    l, r = 0, a.length - 1
    while l <= r
        m = l + (r - l) / 2
        return m if a[m] == key
        if a[m] < key then l = m + 1
        else r = m - 1 end
    end
    return -1
end

puts rank(4, [1, 2, 3, 4, 5])
p rank(5, [5])