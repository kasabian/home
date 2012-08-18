class Class
   def attr_checked (name_meth,&block)
        define_method "#{name_meth}=".to_sym do |n|
         if block.call(n) then instance_variable_set("@#{name_meth}".to_sym,n) 
        
         else instance_variable_set("@#{name_meth}".to_sym,"exeptions") 
        
         end
      
        end
      

        define_method name_meth do
          puts instance_variable_get("@#{name_meth}".to_sym) 
        end   

   end




end
 


class Cat
  attr_checked :legs do |n|
     n == 4  
  end

  attr_checked :age do |n|
     n < 30 
  end

  
end




garfield = Cat.new

garfield.age= 5     # => 5
garfield.age

garfield.legs= 8     # => Exception
garfield.legs

