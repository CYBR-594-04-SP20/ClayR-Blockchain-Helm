import hashlib
 
# Hash pairs of items recursively until a single value is obtained
def hash2(a, b):
    # Reverse inputs before and after hashing
    # due to big-endian / little-endian nonsense
    a1 = a
    a11 = a1[::-1]
    b1 = b[::-1]
    concat = a11+b1
    concat2 = hashlib.sha256(bytes(concat,"utf-8")).hexdigest()
    print ('hash1:' + concat2)
    h = hashlib.sha256(bytes(concat,"utf-8")).digest()
    print ('hash2:' + h[::-1].hex())
    print ('')
    return h[::-1].hex()
    
def merkle(hashList):
    if len(hashList) == 1:
        return hashList[0]
    newHashList = []
    # Process pairs. For odd length, the last is skipped
    for i in range(0, len(hashList)-1, 2):
        newHashList.append(hash2(hashList[i], hashList[i+1]))
    if len(hashList) % 2 == 1: # odd, hash last item twice
        newHashList.append(hash2(hashList[-1], hashList[-1]))
    return merkle(newHashList)
 
# https://blockexplorer.com/rawblock/000000000000030de89e7729d5785c4730839b6e16ea9fb686a54818d3860a8d
txHashes = [
"68f7fb9e8707150f3b2f0fd3c23dc3e679f8656b4408a8c9d483cdcb433e3ff7",
"9d977c54f8afb1a84c8d33f96e50c455f7ceb6f07f9e613c5e448fa82b9c462c",
"7bd5cf7ca8a515581e9b05e0b77a358ffa085559cb31c8ef107d85a7084e621d",
"5cbbb34ff9401d71ffaab53392e823bc24e577bdeb7100bd3ffa29e84eb15eed"
]  	
 
print (merkle(txHashes))

