import enum
from bs4 import BeautifulSoup
import os
import joblib
from numpy import record
# TODO
# vector new function
# entity functions

class LuaLib:
    def __init__(self,doc_path) -> None:
        with open(doc_path, 'r', encoding='utf-8') as f:
            lua_doc_content = f.read()
        lua_doc = BeautifulSoup(lua_doc_content,'html.parser')
        self.class_name = lua_doc.find('h1').text.strip()
        self.description = lua_doc.find('h3').text.strip().replace('\n','\n---')
        self.parent_name = lua_doc.find('h3').find_next('h3').text.split(':')[1].strip()
        self.doc = lua_doc
        self.properties = {}
        self.functions = {}
        self.parent = None
        self.enums = {}
        self.parse()
    def setParent(self,parent):
        self.parent = parent
    def parseProperty(self,block):
        property_name = block.find_next('h2').text
        decription = block.find_next('p').text
        self.properties[property_name] = decription
    def parseFunction(self,block):
        function_name = block.find_next('h2').text
        decription = block.find_next('p').text.strip().replace('\n','\n---')
        params = block.find_next('p').find_next('p')
        ret = params.find_next('p').text.split('\n')[1].strip().replace('\n','\n---')
        param_list = params.text.split('\n')[1:]
        self.functions[function_name] = {'name':function_name,'description':decription,'param':param_list,'ret':ret}
    def parseEnum(self,block):
        # if block.find_next('h2') == None:
        #     print('fdsf')
        enum_name = block.find_next('h2').text
        values = block.find_next('p').text.strip()
        self.enums[enum_name] = [each.strip() for each in  values.split('\n')]
    def genGlobalFunc(self):
        create_func_comment = '---### Description\n---Create a new {} object in specific module by its present name.\n ---### Arguments:\n ---\t\tpresent_name: its present name.\n ---\t\tmoudle_name: specify the module the object from."All" for not specified \n---### Return Value:\n---\t\tthe new object\n'.format(self.class_name)
        create_func = 'function Create{}(present_name,module_name) return {} end\n'.format(self.class_name,self.class_name)
        create_content = create_func_comment + create_func
        
        random_func_comment = '---### Description\n---Create a new {} object randomly in specific group and module.\n ---### Arguments:\n ---\t\tgroup_name_name: the specific group.\n ---\t\tmoudle_name: specify the module the object from."All" for not specified\n---### Return Value:\n ---\t\tthe new object\n'.format(self.class_name)
        random_func = 'function Random{}(group_name,module_name) return {} end\n'.format(self.class_name,self.class_name)
        random_content = random_func_comment + random_func
        
        clone_func_comment ='---### Description\n---Clone a {} object.\n ---### Arguments:\n ---\t\tobject:the object to clone.\n ---### Return Value:\n ---\t\tthe cloned object\n'.format(self.class_name)
        clone_func = 'function Clone{}(object) return {} end\n'.format(self.class_name,self.class_name)
        clone_cotent =  clone_func_comment + clone_func
        
        to_func_comment = '---### Description\n---cast a object to {} object.\n ---### Arguments:\n ---\t\tobject:the object to cast.\n ---### Return Value:\n ---\t\tthe casted object\n'.format(self.class_name)
        to_func = 'function To{}(object) return {} end\n'.format(self.class_name,self.class_name)
        to_content = to_func_comment + to_func
        
        to_const_func_comment = '---### Description\n---cast a object to {} const object.\n ---### Arguments:\n ---\t\tobject:the object to cast.\n ---### Return Value:\n ---\t\tthe casted object\n'.format(self.class_name)
        to_const_func = 'function ToConst{}(object) return {} end\n'.format(self.class_name,self.class_name)
        to_const_content = to_const_func_comment + to_const_func
        
        is_func_comment = '---### Description\n---tell whether the type of an object is {} type.\n ---### Arguments:\n ---\t\tobject:the object.\n ---### Return Value:\n ---\t\tboolean\n'.format(self.class_name)
        is_func = 'function Is{}(object) end\n'.format(self.class_name)
        is_content = is_func_comment + is_func
        
        
        if 'Manager' in self.class_name:
            global_object_code = self.class_name.replace('Manager','Man') + ' = ' + self.class_name
            return global_object_code
        
        return create_content + random_content + clone_cotent + to_content + to_const_content + is_content
        
    def getEnumMark(self,property_name):
        values = self.enums.get(property_name)
        if values == None:
            return ''
        mark = '---### Enum Property:\n---#### Values:\n'
        for each in values:
            mark += '---\t\t{}.{}\n'.format(self.class_name,each)
        return mark   
    def parseBlock(self,block):
        if 'Property:' in block.text:
            self.parseProperty(block)
        elif 'Function:' in block.text:
            self.parseFunction(block)
        elif 'Enum:' in block.text:
            self.parseEnum(block)
    def genHCodes(self,class_name,cur_pros,cur_funcs):
        # gen properties
        pro = ['-' * 30 + 'Properties' + '-' * 30 + '\n']
        for p in self.properties:
            if p in cur_pros.keys():
                continue
            enum_mark = self.getEnumMark(p)
            comment = '---### From Parent Class:{}\n---{}\n'.format(self.class_name,self.properties[p].replace('\n','\n---')) + enum_mark
            code = '{}.{} = nil\n'.format(class_name,p)
            pro.append(comment)
            pro.append(code)
            cur_pros[p] = self.properties[p]
        # gen functions
        funcs = []
        for f in self.functions:
            if f in cur_funcs.keys():
                continue
            name = self.functions[f]['name']
            des = self.functions[f]['description']
            params = self.functions[f]['param']
            ret = self.functions[f]['ret']
            des_comment = '''---### From Parent Class:{}\n---### Description:\n---\n---{}\n'''.format(self.class_name,des)
            params_comment = '''---### Arguments:\n---\n'''
            for i,p in enumerate(params):
                params_comment += '---Arg{}:{}\n'.format(i+1,p)
            params_comment += '---\n'
            ret_comment = '''---### Return Value:\n---\n---{}\n'''.format(ret)
            param_code = ''
            for i in range(len(params)):
                if params[i].strip() == 'None.':
                    continue
                param_code += 'p{},'.format(i+1)
            func_code = 'function {}:{}({})end\n'.format(class_name,name,param_code[:-1])
            funcs.append(des_comment + params_comment + ret_comment + func_code)
            cur_funcs[f] = self.functions[f]
        
        p_pro,p_func = [],[]
        if self.parent != None:
            p_pro,p_func= self.parent.genHCodes(class_name,cur_pros,cur_funcs)
        funcs += p_func
        pro += p_pro
        return pro,funcs 
    def genLib(self,path):
        space_sp = ''
        if 'Manager' in self.class_name:
            space_sp = 'local '
        moudle_comment = '---## Class\n---{}\n'.format(self.description)
        module_code = space_sp + '{} = {{}}\n\n'.format(self.class_name)
        
        # gen properties
        pro = ['-' * 30 + 'Properties' + '-' * 30 + '\n']
        for p in self.properties:
            enum_mark = self.getEnumMark(p)
            comment = '---{}\n'.format(self.properties[p].replace('\n','\n---')) + enum_mark
            code = '{}.{} = nil\n'.format(self.class_name,p)
            pro.append(comment)
            pro.append(code)
        
        # gen enums
        enum_code = []
        for e in self.enums:
            values = self.enums[e]
            comment = '---enum value for property:{}\n'.format(e)
            for index,value in enumerate(values):
                enum_content = comment + '{}.{}={}\n'.format(self.class_name,value,str(index))
                enum_code.append(enum_content)
                
        # gen functions
        funcs = []
        for f in self.functions:
            name = self.functions[f]['name']
            des = self.functions[f]['description']
            params = self.functions[f]['param']
            ret = self.functions[f]['ret']
            des_comment = '''---### Description:\n---\n---{}\n'''.format(des)
            params_comment = '''---### Arguments:\n---\n'''
            for i,p in enumerate(params):
                params_comment += '---Arg{}:{}\n'.format(i+1,p)
            params_comment += '---\n'
            ret_comment = '''---### Return Value:\n---\n---{}\n'''.format(ret)
            param_code = ''
            for i in range(len(params)):
                if params[i].strip() == 'None.':
                    continue
                param_code += 'p{},'.format(i+1)
            func_code = 'function {}:{}({})end\n'.format(self.class_name,name,param_code[:-1])
            funcs.append(des_comment + params_comment + ret_comment + func_code)
        p_pros = []
        p_funcs = []
        if self.parent != None:
            cur_pos = self.properties.copy()
            cur_funcs = self.functions.copy()
            p_pros,p_funcs = self.parent.genHCodes(self.class_name,cur_pos,cur_funcs)  
        content = [moudle_comment,module_code] + pro + p_pros + enum_code + funcs + p_funcs + [self.genGlobalFunc()]
        with open(os.path.join(path,self.class_name + '.lua'),'w',encoding='utf-8') as f:
            f.writelines(content)       
    def parse(self):
        lib = {}
        blocks = self.doc.find_all('h3')[1:]
        for block in blocks:
            self.parseBlock(block)
# for each in enum_lib:
    #     enums = enum_lib[each]
    #     class_name = each
    #     if 'Man'in each:
    #         class_name = each.replace('Man','Manager')
    
    #     if not os.path.exists(os.path.join(doc_path,class_name + '.html')):
    #         continue
    #     for enum_name,values in enums:
    #         record = '<h3>Enum:</h3>\n<h2>{}</h2>\n<p>\n{}\n</p>\n'.format(enum_name,'\n'.join(values))
    #         with open(os.path.join(doc_path,class_name + '.html'),'a',encoding='utf-8') as f:
    #             f.write(record)
if __name__ == '__main__':
    doc_path = os.path.abspath('./LuaDocHtml')
    lua_lib_path = os.path.abspath('./LuaAPI')
    doc_files = [os.path.join(doc_path,each) for each in os.listdir(doc_path)] 
    
    lua_classes = {}
    for each in doc_files:
        lib = LuaLib(each)
        lua_classes[lib.class_name] = lib
    for each in lua_classes:
        lib = lua_classes[each]
        parent = lua_classes.get(lib.parent_name)
        lib.setParent(parent)
    for each in lua_classes:
        lib = lua_classes[each]
        lib.genLib(lua_lib_path)
