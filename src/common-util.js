
const vscode = require('vscode');
const fs = require('fs');
const path = require('path');


class Util{
    static async openFolder(folder_path){
        if(!fs.existsSync(folder_path)){
            vscode.window.showErrorMessage('Folder not exists');
            return
        }
        await vscode.commands.executeCommand('vscode.openFolder', vscode.Uri.file(folder_path));
    }

}
module.exports = {
	Util: Util
}