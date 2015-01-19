extension String  {
    func md5()-> String! {
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        
        CC_MD5(str!, strLen, result)
        
        var hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        
        result.destroy()
        
        return String(format: hash)
    }
    func sha512()-> String! {
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_SHA512_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        
        CC_SHA512(str!, strLen, result)
        
        var hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.destroy()
        return String(format: hash)
    }
    func sha1()-> String! {
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_SHA1_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        
        CC_SHA1(str!, strLen, result)
        
        var hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.destroy()
        
        return String(format: hash)
    }
    func md2()-> String! {
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_MD2_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        
        CC_MD2(str!, strLen, result)
        
        var hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.destroy()
        return String(format: hash)
    }
    func sha256()-> String! {
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_SHA256_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        
        CC_SHA256(str!, strLen, result)
        
        var hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.destroy()
        return String(format: hash)
        
    }
    func sha224()-> String! {
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_SHA224_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        
        CC_SHA224(str!, strLen, result)
        
        var hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.destroy()
        return String(format: hash)
        
    }
    func sha384()-> String! {
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_SHA384_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        
        CC_SHA384(str!, strLen, result)
        
        var hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.destroy()
        return String(format: hash)
        
    }
}
