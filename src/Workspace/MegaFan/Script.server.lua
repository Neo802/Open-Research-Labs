while true do
wait()
      if game.Workspace["MAIN.VALUES"].MFZIG.Value == 0 then
          script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(0,0,0))
          wait()
      elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 1 then
          script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(-0.02,0,0))
          wait()
      elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 2 then
          script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(-0.04,0,0))
          wait()
      elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 3 then
          script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(-0.06,0,0))
          wait()
      elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 4 then
          script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(-0.08,0,0))
          wait()
      elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 5 then
          script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(-0.1,0,0))
          wait()
      elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 6 then
          script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(-0.12,0,0))
          wait()
      end	
end
