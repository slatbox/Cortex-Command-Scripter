const vscode = require('vscode');
const fs = require('fs');
const path = require('path');
const common_util = require('./common-util');
const format_str = require('./format-str')

class ProjectManager{
    constructor(context){
        this.context = context
    }
    async createProject()
    {
        const options = {
            canSelectFiles: false,
            canSelectFolders: true,
            canSelectMany: false
        };
        const input_option = {
                password:false,
                ignoreFocusOut:true, 
                placeHolder:'my mission name', 
                prompt:'Please enter your mission name', 
        }
        var pro_name = ''
        await vscode.window.showInputBox(input_option).then(function(name){
            pro_name = name
        });
        if(pro_name == undefined)
        {
            vscode.window.showInformationMessage('Creating mission canceled');
            return
        }
        var pro_dir_path = undefined
        await vscode.window.showOpenDialog(options).then(async (paths) => {
            if(paths && paths.length > 0){
                pro_dir_path = paths[0].path.substring(1,paths[0].path.length)
            }
        });
        if(pro_dir_path == undefined)
        {
            vscode.window.showInformationMessage('Creating mission canceled');
            return
        }
        var full_project_path = path.join(pro_dir_path,pro_name + '.rte')
        
        await this.createProjectFolder(full_project_path)
        await this.createProjectFiles(full_project_path,pro_name)
        await common_util.Util.openFolder(full_project_path)
        vscode.window.showInformationMessage('Project created successfully!');
    }
    async createProjectFiles(pro_path,pro_name)
    {
        const tem_dir_path = path.join(this.context.extensionPath, 'templates');
        var cc_lua_doc_path = path.join(this.context.extensionPath, 'LuaAPI');
        cc_lua_doc_path = cc_lua_doc_path.replaceAll("\\","\\\\")
        var index_tem = await fs.readFileSync(path.join(tem_dir_path,'Index.ini'),'utf-8')
        var index_content = index_tem.format(pro_name,pro_name)
        await fs.writeFileSync(path.join(pro_path,'Index.ini'),index_content)

        const activity_tem = await fs.readFileSync(path.join(tem_dir_path,'Mission Activities.ini'),'utf-8')
        var activity_content = activity_tem.format(pro_name,pro_name,pro_name,pro_name,pro_name)
        await fs.writeFileSync(path.join(pro_path,'Mission Activities.ini'),activity_content)

        const activity_script_tem = await fs.readFileSync(path.join(tem_dir_path,'Mission-script.lua'),'utf-8')
        var activity_script_content = activity_script_tem.format(pro_name,pro_name,pro_name,pro_name,pro_name)
        await fs.writeFileSync(path.join(pro_path,'{0}.lua'.format(pro_name)),activity_script_content)

        const scene_ini_tem = await fs.readFileSync(path.join(tem_dir_path,'Mission Scene.ini'),'utf-8')
        var scene_ini_content = scene_ini_tem.format(pro_name,pro_name)
        await fs.writeFileSync(path.join(pro_path,'/Scenes/Mission Scene.ini'.format(pro_name,pro_name)),scene_ini_content)

        //Add lua api reference path
        var setting_content = '{"Lua.diagnostics.globals": ["' + pro_name +'"],"Lua.workspace.library": ["' + cc_lua_doc_path+'"],"Lua.IntelliSense.traceLocalSet": true}'
        await fs.writeFileSync(path.join(pro_path,'/.vscode/settings.json'),setting_content)

        //Add lua activity lib pile
        var lib_content =  pro_name + '=Activity'
        await fs.writeFileSync(path.join(pro_path,'/.vscode/lib.lua'),lib_content)
    }
    async createProjectFolder(pro_path)
    {
        if(fs.existsSync(pro_path))
        {
            vscode.window.showInformationMessage('Mission project already exists');
            return
        }
        await fs.mkdirSync(pro_path)
        await fs.mkdirSync(path.join(pro_path,'Scenes'))
        await fs.mkdirSync(path.join(pro_path,'Scripts'))
        await fs.mkdirSync(path.join(pro_path,'.vscode'))
    }

}

module.exports = {
	ProjectManager: ProjectManager
}
