// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
const vscode = require('vscode');
const ProjectAPI = require('./src/project')
const format_str = require('./src/format-str')
// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
//TO DO:

/**
 * @param {vscode.ExtensionContext} context
 */
function activate(context) {

	
	project_man = new ProjectAPI.ProjectManager(context)
	
	let disposable = vscode.commands.registerCommand('cortex-command-scripter.CC-Create-Project', function () {
		project_man.createProject()
	});
	let disposable2 = vscode.commands.registerCommand('cortex-command-scripter.CC-Create-Setting-Folder', function () {
		project_man.createSettingFolder()
	});
	context.subscriptions.push(disposable);
	context.subscriptions.push(disposable2);
}

// this method is called when your extension is deactivated
function deactivate() {}

module.exports = {
	activate,
	deactivate
}
