
 class ClassFactory
    def self.create_class (name_class,name_method)

      c = Class.new do
        define_method "#{name_method}=".to_sym do |var|

           if Float(var) < 5 then instance_variable_set("@s",var)
                     else  instance_variable_set("@s","exception")
                     end
        
        end 
       
        define_method name_method.to_sym do
           puts   instance_variable_get("@s") 
        end     
                

      end
     
     Kernel.const_set name_class, c       
      
end

 end


ClassFactory.create_class "Attr_chek", "meth"


obj= Attr_chek.new

obj.meth=100
obj.meth

