    static func pulse(object: SKNode){
        
        let pulse_up = SKAction.scale(to: 1.1, duration: 0.3)
        
        let pulse_down = SKAction.scale(to: 1.0, duration: 0.3)
        
        let pulse_sequence = SKAction.sequence([pulse_up, pulse_down])
        
        let pulse_repeat = SKAction.repeat(pulse_sequence, count: 3)
        
        
        let pulse_wait = SKAction.wait(forDuration: 1.5)
        
        let pulse_final_sequence = SKAction.sequence([pulse_repeat, pulse_wait])
        
        
        object.run(SKAction.repeatForever(pulse_final_sequence))
    
    }