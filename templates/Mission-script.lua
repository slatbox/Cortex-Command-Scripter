--Start ACtivity
function {0}:StartActivity()
	print ("START! --CliffBaseAssault:StartActivity()!");
	self.Zone = SceneMan.Scene:GetArea("{1}Zone")
end

-- Pause Activity
function {2}:PauseActivity(pause)
    print("PAUSE! -- CliffBaseAssault:PauseActivity()!");
end

-- End Activity

function {3}:EndActivity()
	print("END! -- CliffBaseAssault:EndActivity()!");
	
end

-- Update Activity

function {4}:UpdateActivity()
	
end

