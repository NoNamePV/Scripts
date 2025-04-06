a = {
	Theme = {
		["Pictures"] = {
			["Background"] = Color3.fromRGB(16, 16, 16),
			["Background Transparency"] = 0.1,
			["Color Main"] = Color3.fromRGB(17, 110, 249),
			["Color Tab"] = {[1] = Color3.fromRGB(2, 69, 213), [2] = Color3.fromRGB(7, 155, 209)},
			["Top Bar"] = Color3.fromRGB(21, 21, 21),
			["Text Color"] = Color3.fromRGB(255, 255, 255),
			["Text Tab Select"] = Color3.fromRGB(0, 0, 0),
			["Tab Bar"] = Color3.fromRGB(16, 16, 16),
			["Background Page"] = Color3.fromRGB(24, 24, 24),
			["Line Page"] = Color3.fromRGB(132, 132, 132),
			["Top Bar Page"] = Color3.fromRGB(21, 21, 21),
			["Search"] = Color3.fromRGB(47, 47, 47),
			["Background Function"] = Color3.fromRGB(88, 88, 88),
			["Background Function Transparency"] = 0.9,
			["Background Function Transparency Moved"] = 0.8,
			["Dropdown Color"] = Color3.fromRGB(47, 47, 47),
			["Dropdown Select Background"] = Color3.fromRGB(24, 24, 24),
			["Dropdown Select Stroke"] = Color3.fromRGB(43, 43, 43),
			["Dropdown Item"] = Color3.fromRGB(88, 88, 88),
			["Textbox Color"] = Color3.fromRGB(47, 47, 47),
			["Slider Color"] = Color3.fromRGB(47, 47, 47),
			["Toggle Color"] = Color3.fromRGB(16, 16, 16),
			["Diglog Top Bar"] = Color3.fromRGB(22, 22, 22),
			["Diglog Background"] = Color3.fromRGB(17, 17, 17)
		},
		["Dark"] = {
			["Background"] = Color3.fromRGB(16, 16, 16),
			["Background Transparency"] = 0.1,
			["Color Main"] = Color3.fromRGB(17, 110, 249),
			["Color Tab"] = {[1] = Color3.fromRGB(2, 69, 213), [2] = Color3.fromRGB(7, 155, 209)},
			["Top Bar"] = Color3.fromRGB(21, 21, 21),
			["Text Color"] = Color3.fromRGB(255, 255, 255),
			["Text Tab Select"] = Color3.fromRGB(0, 0, 0),
			["Tab Bar"] = Color3.fromRGB(16, 16, 16),
			["Background Page"] = Color3.fromRGB(24, 24, 24),
			["Line Page"] = Color3.fromRGB(132, 132, 132),
			["Top Bar Page"] = Color3.fromRGB(21, 21, 21),
			["Search"] = Color3.fromRGB(47, 47, 47),
			["Background Function"] = Color3.fromRGB(88, 88, 88),
			["Background Function Transparency"] = 0.9,
			["Background Function Transparency Moved"] = 0.8,
			["Dropdown Color"] = Color3.fromRGB(47, 47, 47),
			["Dropdown Select Background"] = Color3.fromRGB(24, 24, 24),
			["Dropdown Select Stroke"] = Color3.fromRGB(43, 43, 43),
			["Dropdown Item"] = Color3.fromRGB(88, 88, 88),
			["Textbox Color"] = Color3.fromRGB(47, 47, 47),
			["Slider Color"] = Color3.fromRGB(47, 47, 47),
			["Toggle Color"] = Color3.fromRGB(16, 16, 16),
			["Diglog Top Bar"] = Color3.fromRGB(22, 22, 22),
			["Diglog Background"] = Color3.fromRGB(17, 17, 17)
		},
		["Light"] = {
			["Background"] = Color3.fromRGB(241, 241, 241),
			["Background Transparency"] = 0.1,
			["Color Main"] = Color3.fromRGB(17, 110, 249),
			["Color Tab"] = {[1] = Color3.fromRGB(2, 69, 213), [2] = Color3.fromRGB(7, 155, 209)},
			["Top Bar"] = Color3.fromRGB(209, 209, 209),
			["Text Color"] = Color3.fromRGB(0, 0, 0),
			["Text Tab Select"] = Color3.fromRGB(255, 255, 255),
			["Tab Bar"] = Color3.fromRGB(152, 152, 152),
			["Background Page"] = Color3.fromRGB(176, 176, 176),
			["Line Page"] = Color3.fromRGB(54, 54, 54),
			["Top Bar Page"] = Color3.fromRGB(150, 150, 150),
			["Search"] = Color3.fromRGB(127, 127, 127),
			["Background Function"] = Color3.fromRGB(102, 102, 102),
			["Background Function Transparency"] = 0.6,
			["Background Function Transparency Moved"] = 0.4,
			["Dropdown Color"] = Color3.fromRGB(113, 113, 113),
			["Dropdown Select Background"] = Color3.fromRGB(90, 90, 90),
			["Dropdown Select Stroke"] = Color3.fromRGB(76, 76, 76),
			["Dropdown Item"] = Color3.fromRGB(116, 116, 116),
			["Textbox Color"] = Color3.fromRGB(113, 113, 113),
			["Slider Color"] = Color3.fromRGB(113, 113, 113),
			["Toggle Color"] = Color3.fromRGB(52, 52, 52),
			["Diglog Top Bar"] = Color3.fromRGB(209, 209, 209),
			["Diglog Background"] = Color3.fromRGB(241, 241, 241)
		}
	}
}
b = {
	[1] = function()
		local c = {}
		function c.n(a, b, d, e)
			local f = Instance.new(a)
			if b then
				for g, h in pairs(b) do
					f[g] = h
				end
			end
			if d then
				for g, h in pairs(d) do
					h.Parent = f
				end
			end
			if e then
				e(f)
			end
			return f
		end
		function c.gl(i)
			if type(i) == "string" and not i:find("rbxassetid://") then
				return "rbxassetid://" .. i
			elseif type(i) == "number" then
				return "rbxassetid://" .. i
			else
				return i
			end
		end
		function c.tw(j)
			return game:GetService "TweenService":Create(
				j.v,
				TweenInfo.new(j.t, Enum.EasingStyle[j.s], Enum.EasingDirection[j.d]),
				j.g
			)
		end
		function c.lak(k)
			local a, b, d, e
			local function l(i)
				local m = i.Position - d
				game:GetService "TweenService":Create(
					k,
					TweenInfo.new(0.3),
					{Position = UDim2.new(e.X.Scale, e.X.Offset + m.X, e.Y.Scale, e.Y.Offset + m.Y)}
				):Play()
			end
			k.InputBegan:Connect(
				function(i)
					if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
						a = true
						d = i.Position
						e = k.Position
						i.Changed:Connect(
							function()
								if i.UserInputState == Enum.UserInputState.End then
									a = false
								end
							end
						)
					end
				end
			)
			k.InputChanged:Connect(
				function(i)
					if
						i.UserInputType == Enum.UserInputType.MouseMovement or
						i.UserInputType == Enum.UserInputType.Touch
					then
						b = i
					end
				end
			)
			game:GetService "UserInputService".InputChanged:Connect(
				function(i)
					if i == b and a then
						l(i)
					end
				end
			)
		end
		function c.dialog(n, o, e, p, q)
			local g, r, s, t = b[1]().n, nil, nil, game:GetService "TweenService"
			assert(o, "Dialog - Missing Title")
			local u =
				g(
					"Frame",
					{
						Parent = n,
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 1
					},
					{
						g(
							"CanvasGroup",
							{
								BorderSizePixel = 0,
								BackgroundColor3 = a.Theme[q.Theme or "Quizzy"]["Diglog Background"],
								AnchorPoint = Vector2.new(0.5, 0.5),
								Size = UDim2.new(0, 300, 0.571, 0),
								Position = UDim2.new(0.5, 0, 0.5, 0),
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								GroupTransparency = 1
							},
							{
								g("UICorner", {CornerRadius = UDim.new(0, 11)}),
								g(
									"Frame",
									{
										BorderSizePixel = 0,
										BackgroundColor3 = a.Theme[q.Theme or "Quizzy"]["Diglog Top Bar"],
										Size = UDim2.new(1, 0, 0, 50),
										BorderColor3 = Color3.fromRGB(0, 0, 0)
									},
									{
										g(
											"TextLabel",
											{
												BorderSizePixel = 0,
												BackgroundColor3 = Color3.fromRGB(255, 255, 255),
												TextSize = 20,
												FontFace = Font.new(
													"rbxasset://fonts/families/GothamSSm.json",
													Enum.FontWeight.Regular,
													Enum.FontStyle.Normal
												),
												TextColor3 = a.Theme[q.Theme or "Quizzy"]["Text Color"],
												BackgroundTransparency = 1,
												RichText = true,
												AnchorPoint = Vector2.new(0.5, 0.5),
												Size = UDim2.new(0, 200, 0, 50),
												BorderColor3 = Color3.fromRGB(0, 0, 0),
												Text = o,
												Position = UDim2.new(0.5, 0, 0.5, 0)
											}
										)
									}
								),
								g(
									"Frame",
									{
										BorderSizePixel = 0,
										BackgroundColor3 = Color3.fromRGB(255, 255, 255),
										AnchorPoint = Vector2.new(0.5, 1),
										Size = UDim2.new(0, 120, 0, 50),
										Position = UDim2.new(0.5, 0, 1, 0),
										BorderColor3 = Color3.fromRGB(0, 0, 0),
										BackgroundTransparency = 1
									},
									{
										g("UIPadding", {PaddingBottom = UDim.new(0, 15)}),
										g(
											"UIListLayout",
											{
												HorizontalAlignment = Enum.HorizontalAlignment.Center,
												Padding = UDim.new(0, 5),
												VerticalAlignment = Enum.VerticalAlignment.Center,
												SortOrder = Enum.SortOrder.LayoutOrder,
												FillDirection = Enum.FillDirection.Horizontal
											}
										),
										g(
											"Frame",
											{
												BorderSizePixel = 0,
												BackgroundColor3 = Color3.fromRGB(9, 255, 58),
												Size = UDim2.new(0, 120, 0, 40),
												BorderColor3 = Color3.fromRGB(0, 0, 0),
												BackgroundTransparency = 1
											},
											{
												g(
													"UIStroke",
													{Color = Color3.fromRGB(9, 255, 58), Thickness = 0.6},
													{
														g(
															"UIGradient",
															{
																Rotation = 90,
																Color = ColorSequence.new {
																	ColorSequenceKeypoint.new(
																		0.000,
																		Color3.fromRGB(255, 255, 255)
																	),
																	ColorSequenceKeypoint.new(
																		1.000,
																		Color3.fromRGB(19, 180, 0)
																	)
																}
															}
														)
													}
												),
												g("UICorner", {CornerRadius = UDim.new(0, 11)}),
												g(
													"UIGradient",
													{
														Rotation = 90,
														Color = ColorSequence.new {
															ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
															ColorSequenceKeypoint.new(1.000, Color3.fromRGB(19, 180, 0))
														}
													}
												),
												g(
													"TextLabel",
													{
														BorderSizePixel = 0,
														BackgroundColor3 = Color3.fromRGB(255, 255, 255),
														TextSize = 18,
														FontFace = Font.new(
															"rbxasset://fonts/families/GothamSSm.json",
															Enum.FontWeight.Bold,
															Enum.FontStyle.Normal
														),
														TextColor3 = a.Theme[q.Theme or "Quizzy"]["Text Color"],
														BackgroundTransparency = 1,
														Size = UDim2.new(1, 0, 1, 0),
														BorderColor3 = Color3.fromRGB(0, 0, 0),
														Text = "Confirm",
														TextTransparency = 0.5
													}
												),
												g(
													"TextButton",
													{
														BorderSizePixel = 0,
														TextSize = 14,
														TextColor3 = Color3.fromRGB(0, 0, 0),
														BackgroundColor3 = Color3.fromRGB(255, 255, 255),
														FontFace = Font.new(
															"rbxasset://fonts/families/SourceSansPro.json",
															Enum.FontWeight.Regular,
															Enum.FontStyle.Normal
														),
														Size = UDim2.new(1, 0, 1, 0),
														BackgroundTransparency = 1,
														BorderColor3 = Color3.fromRGB(0, 0, 0),
														Text = ""
													}
												)
											},
											function(a)
												s = a
											end
										),
										g(
											"Frame",
											{
												BorderSizePixel = 0,
												BackgroundColor3 = Color3.fromRGB(255, 52, 0),
												Size = UDim2.new(0, 120, 0, 40),
												BorderColor3 = Color3.fromRGB(0, 0, 0),
												BackgroundTransparency = 1
											},
											{
												g(
													"UIStroke",
													{Color = Color3.fromRGB(255, 52, 0), Thickness = 0.6},
													{
														g(
															"UIGradient",
															{
																Rotation = 90,
																Color = ColorSequence.new {
																	ColorSequenceKeypoint.new(
																		0.000,
																		Color3.fromRGB(255, 255, 255)
																	),
																	ColorSequenceKeypoint.new(
																		1.000,
																		Color3.fromRGB(180, 0, 0)
																	)
																}
															}
														)
													}
												),
												g("UICorner", {CornerRadius = UDim.new(0, 11)}),
												g(
													"UIGradient",
													{
														Rotation = 90,
														Color = ColorSequence.new {
															ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
															ColorSequenceKeypoint.new(1.000, Color3.fromRGB(180, 0, 0))
														}
													}
												),
												g(
													"TextLabel",
													{
														BorderSizePixel = 0,
														BackgroundColor3 = Color3.fromRGB(255, 255, 255),
														TextSize = 18,
														FontFace = Font.new(
															"rbxasset://fonts/families/GothamSSm.json",
															Enum.FontWeight.Bold,
															Enum.FontStyle.Normal
														),
														TextColor3 = a.Theme[q.Theme or "Quizzy"]["Text Color"],
														BackgroundTransparency = 1,
														Size = UDim2.new(1, 0, 1, 0),
														BorderColor3 = Color3.fromRGB(0, 0, 0),
														Text = "Cancel",
														TextTransparency = 0.5
													}
												),
												g(
													"TextButton",
													{
														BorderSizePixel = 0,
														TextSize = 14,
														TextColor3 = Color3.fromRGB(0, 0, 0),
														BackgroundColor3 = Color3.fromRGB(255, 255, 255),
														FontFace = Font.new(
															"rbxasset://fonts/families/SourceSansPro.json",
															Enum.FontWeight.Regular,
															Enum.FontStyle.Normal
														),
														Size = UDim2.new(1, 0, 1, 0),
														BackgroundTransparency = 1,
														BorderColor3 = Color3.fromRGB(0, 0, 0),
														Text = ""
													}
												)
											},
											function(a)
												r = a
											end
										)
									}
								)
							}
						)
					}
				)
			u.CanvasGroup:GetPropertyChangedSignal("AbsoluteSize"):Connect(
				function()
					local v = u.CanvasGroup.AbsoluteSize.Y
					if v < 155 then
						u.CanvasGroup.Size = UDim2.new(u.CanvasGroup.Size.X.Scale, u.CanvasGroup.Size.X.Offset, 0, 120)
					elseif v > 200 then
						u.CanvasGroup.Size = UDim2.new(u.CanvasGroup.Size.X.Scale, u.CanvasGroup.Size.X.Offset, 0, 200)
					end
				end
			)
			if e ~= nil and u.CanvasGroup.AbsoluteSize.Y > 155 then
				local w =
					g(
						"TextLabel",
						{
							Parent = u.CanvasGroup,
							TextWrapped = true,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTransparency = 0.5,
							TextYAlignment = Enum.TextYAlignment.Top,
							BackgroundColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 10,
							FontFace = Font.new(
								"rbxasset://fonts/families/GothamSSm.json",
								Enum.FontWeight.Bold,
								Enum.FontStyle.Normal
							),
							TextColor3 = a.Theme[q.Theme or "Quizzy"]["Text Color"],
							BackgroundTransparency = 1,
							RichText = true,
							Size = UDim2.new(0, 245, 0, 68),
							BorderColor3 = Color3.fromRGB(0, 0, 0),
							Text = e,
							Position = UDim2.new(0.09167, 0, 0, 0)
						},
						{g("UIPadding", {PaddingTop = UDim.new(0, 63)})}
					)
			else
				u.CanvasGroup.Size = UDim2.new(0, 300, 0, 120)
			end
			local function d()
				b[1]().tw({v = u, t = 0.2, s = "Linear", d = "Out", g = {BackgroundTransparency = 1}}):Play()
				local x = b[1]().tw({v = u.CanvasGroup, t = 0.2, s = "Linear", d = "Out", g = {GroupTransparency = 1}})
				x:Play()
				x.Completed:Wait()
				u:Destroy()
			end
			local function y(h)
				h.MouseMoved:Connect(
					function()
						b[1]().tw({v = h, t = 0.2, s = "Linear", d = "Out", g = {BackgroundTransparency = 0.3}}):Play()
						b[1]().tw({v = h, t = 0.1, s = "Back", d = "Out", g = {Size = UDim2.new(0, 125, 0, 45)}}):Play()
						b[1]().tw({v = h.TextLabel, t = 0.1, s = "Back", d = "Out", g = {TextTransparency = 0}}):Play()
					end
				)
				h.MouseLeave:Connect(
					function()
						b[1]().tw({v = h, t = 0.2, s = "Linear", d = "Out", g = {BackgroundTransparency = 1}}):Play()
						b[1]().tw({v = h, t = 0.1, s = "Back", d = "Out", g = {Size = UDim2.new(0, 120, 0, 40)}}):Play()
						b[1]().tw({v = h.TextLabel, t = 0.1, s = "Back", d = "Out", g = {TextTransparency = 0.5}}):Play(

						)
					end
				)
			end
			y(s)
			y(r)
			b[1]().tw({v = u, t = 0.2, s = "Linear", d = "Out", g = {BackgroundTransparency = 0.4}}):Play()
			b[1]().tw({v = u.CanvasGroup, t = 0.2, s = "Linear", d = "Out", g = {GroupTransparency = 0}}):Play()
			game:GetService "UserInputService".InputBegan:Connect(
				function(z)
					if z.UserInputType == Enum.UserInputType.MouseButton1 or z.UserInputType == Enum.UserInputType.Touch then
						local A, B = u.CanvasGroup.AbsolutePosition, u.CanvasGroup.AbsoluteSize
						if
							game:GetService "Players".LocalPlayer:GetMouse().X < A.X or
							game:GetService "Players".LocalPlayer:GetMouse().X > A.X + B.X or
							game:GetService "Players".LocalPlayer:GetMouse().Y < A.Y - 20 - 1 or
							game:GetService "Players".LocalPlayer:GetMouse().Y > A.Y + B.Y
						then
							d()
						end
					end
				end
			)
			s.TextButton.MouseButton1Click:Connect(
				function()
					t:Create(
						s.TextLabel,
						TweenInfo.new(0.06, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, true, 0),
						{Position = UDim2.new(0, 0, 0.1, 0)}
					):Play()
					b[1]().tw({v = s, t = 0.1, s = "Back", d = "Out", g = {Size = UDim2.new(0, 115, 0, 30)}}):Play()
					d()
					p()
				end
			)
			r.TextButton.MouseButton1Click:Connect(
				function()
					t:Create(
						r.TextLabel,
						TweenInfo.new(0.06, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, true, 0),
						{Position = UDim2.new(0, 0, 0.1, 0)}
					):Play()
					b[1]().tw({v = r, t = 0.1, s = "Back", d = "Out", g = {Size = UDim2.new(0, 115, 0, 30)}}):Play()
					d()
				end
			)
		end
		function c.background(C, D, E, F, q)
			local g = b[1]().n
			local G =
				g(
					"Frame",
					{
						Parent = C,
						BorderSizePixel = 0,
						BackgroundColor3 = a.Theme[q.Theme or "Quizzy"]["Background Function"],
						Size = UDim2.new(1, 0, 0, 40),
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = a.Theme[q.Theme or "Quizzy"]["Background Function Transparency"],
						ClipsDescendants = true
					},
					{
						g("UICorner", {CornerRadius = UDim.new(0, 4)}),
						g(
							"Frame",
							{
								BorderSizePixel = 0,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								AnchorPoint = Vector2.new(0, 0.5),
								Size = UDim2.new(1, 0, 1, 0),
								Position = UDim2.new(0, 0, 0.5, 0),
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								BackgroundTransparency = 1,
								Name = "TextDesc"
							},
							{
								g("UIPadding", {PaddingLeft = UDim.new(0, 13), PaddingRight = UDim.new(0, 90)}),
								g(
									"UIListLayout",
									{
										VerticalAlignment = Enum.VerticalAlignment.Center,
										SortOrder = Enum.SortOrder.LayoutOrder
									}
								),
								g(
									"TextLabel",
									{
										TextWrapped = true,
										BorderSizePixel = 0,
										TextXAlignment = Enum.TextXAlignment.Left,
										TextTransparency = 0.4,
										BackgroundColor3 = Color3.fromRGB(255, 255, 255),
										TextSize = 12,
										Font = Enum.Font.Gotham,
										TextColor3 = a.Theme[q.Theme or "Quizzy"]["Text Color"],
										BackgroundTransparency = 1,
										RichText = true,
										Size = UDim2.new(1, 0, 0, math.floor(16)),
										BorderColor3 = Color3.fromRGB(0, 0, 0),
										Text = D
									}
								)
							}
						)
					}
				)
			if E and E ~= "" then
				g(
					"TextLabel",
					{
						Parent = G.TextDesc,
						TextWrapped = true,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTransparency = 0.5,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 9,
						Font = Enum.Font.Gotham,
						TextColor3 = a.Theme[q.Theme or "Quizzy"]["Text Color"],
						BackgroundTransparency = 1,
						RichText = true,
						Size = UDim2.new(1, 0, 0, math.floor(16)),
						AutomaticSize = Enum.AutomaticSize.Y,
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						Text = E,
						LayoutOrder = 1,
						Name = "Desc"
					}
				)
			end
			if not F then
				G.MouseMoved:Connect(
					function()
						b[1]().tw(
							{
								v = G,
								t = 0.15,
								s = "Linear",
								d = "InOut",
								g = {
									BackgroundTransparency = a.Theme[q.Theme or "Quizzy"][
									"Background Function Transparency Moved"
									]
								}
							}
						):Play()
					end
				)
				G.MouseLeave:Connect(
					function()
						b[1]().tw(
							{
								v = G,
								t = 0.15,
								s = "Linear",
								d = "InOut",
								g = {
									BackgroundTransparency = a.Theme[q.Theme or "Quizzy"][
									"Background Function Transparency"
									]
								}
							}
						):Play()
					end
				)
			end
			G.TextDesc.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
				function()
					G.TextDesc.Size = UDim2.new(1, 0, 0, G.TextDesc.UIListLayout.AbsoluteContentSize.Y + 15)
					G.Size = UDim2.new(1, 0, 0, G.TextDesc.UIListLayout.AbsoluteContentSize.Y + 15)
				end
			)
			return G
		end
		function c.click(i)
			return b[1]().n(
				"TextButton",
				{
					Name = "Click",
					Parent = i,
					Active = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextSize = 14
				}
			)
		end
		function c.jc(d, n)
			local H = game.Players.LocalPlayer:GetMouse()
			local I = H.X - d.AbsolutePosition.X
			local J = H.Y - d.AbsolutePosition.Y
			if I < 0 or J < 0 or I > d.AbsoluteSize.X or J > d.AbsoluteSize.Y then
				return
			end
			local K =
				b[1]().n(
					"ImageLabel",
					{
						Parent = n,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0, I, 0, J),
						Size = UDim2.new(0, 0, 0, 0),
						Image = "rbxassetid://136860536582612",
						ImageTransparency = 0.7,
						ImageColor3 = Color3.fromRGB(126, 126, 126),
						ZIndex = 10
					}
				)
			local L = Instance.new("UICorner")
			L.CornerRadius = UDim.new(1, 0)
			L.Parent = K
			local M =
				game:GetService("TweenService"):Create(
					K,
					TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, d.AbsoluteSize.X * 1.5, 0, d.AbsoluteSize.X * 1.5), ImageTransparency = 1}
				)
			M.Completed:Connect(
				function()
					K:Destroy()
				end
			)
			M:Play()
		end
		return c
	end,
	[2] = function()
		local g = b[1]().n
		return g(
			"ScreenGui",
			{
				Parent = not game:GetService("RunService"):IsStudio() and game:GetService("CoreGui") or
					game:GetService("Players").LocalPlayer.PlayerGui,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			}
		)
	end,
	CreateWindow = function(self, N)
		local g, h, O, P, Q, R, S, T =
			self[1]().n,
		{},
		nil,
		nil,
		false,
		nil,
		N.Keybind or Enum.KeyCode.LeftControl,
		false
		assert(N.Title, "Window - Missing Title")
		assert(N.Icon, "Window - Missing Icon")
		local U =
			g(
				"CanvasGroup",
				{
					Parent = b[2](),
					BorderSizePixel = 0,
					BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Background"],
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.new(0, 500, 0, 350),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					GroupTransparency = a.Theme[N.Theme or "Quizzy"]["Background Transparency"]
				},
				{
					g("UICorner", {CornerRadius = UDim.new(0, 11)}),
					g(
						"Frame",
						{
							BorderSizePixel = 0,
							BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Top Bar"],
							Size = UDim2.new(1, 0, 0, 50),
							BorderColor3 = Color3.fromRGB(0, 0, 0)
						},
						{
							g("UIPadding", {PaddingTop = UDim.new(0, 7), PaddingLeft = UDim.new(0, 16)}),
							g(
								"Frame",
								{
									BorderSizePixel = 0,
									BackgroundColor3 = Color3.fromRGB(255, 255, 255),
									Size = UDim2.new(0, 80, 0, 35),
									BorderColor3 = Color3.fromRGB(0, 0, 0),
									BackgroundTransparency = 1
								},
								{
									g(
										"TextLabel",
										{
											BorderSizePixel = 0,
											TextXAlignment = Enum.TextXAlignment.Left,
											BackgroundColor3 = Color3.fromRGB(255, 255, 255),
											TextSize = 14,
											FontFace = Font.new(
												"rbxassetid://16658237174",
												Enum.FontWeight.Regular,
												Enum.FontStyle.Normal
											),
											TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
											BackgroundTransparency = 1,
											Size = UDim2.new(1, 0, 1, 0),
											BorderColor3 = Color3.fromRGB(0, 0, 0),
											Text = string.upper(N.Title)
										}
									),
									g("UIPadding", {PaddingLeft = UDim.new(0, 50)})
								}
							),
							g(
								"ImageLabel",
								{
									BorderSizePixel = 0,
									BackgroundColor3 = Color3.fromRGB(255, 255, 255),
									ImageTransparency = 0,
									Image = b[1]().gl(N.Icon),
									Size = UDim2.new(0, 35, 0, 35),
									BorderColor3 = Color3.fromRGB(0, 0, 0),
									BackgroundTransparency = 1
								}
							),
							g(
								"Frame",
								{
									BorderSizePixel = 0,
									BackgroundColor3 = Color3.fromRGB(255, 255, 255),
									Size = UDim2.new(1, 0, 0, 25),
									BorderColor3 = Color3.fromRGB(0, 0, 0),
									BackgroundTransparency = 1
								},
								{
									g(
										"UIPadding",
										{
											PaddingTop = UDim.new(0, 5),
											PaddingRight = UDim.new(0, 50),
											PaddingLeft = UDim.new(0, 140)
										}
									),
									g(
										"Frame",
										{
											BorderSizePixel = 0,
											BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Tab Bar"],
											Size = UDim2.new(1, 0, 0, 25),
											BorderColor3 = Color3.fromRGB(0, 0, 0)
										},
										{
											g("UICorner", {CornerRadius = UDim.new(1, 0)}),
											g(
												"ScrollingFrame",
												{
													Active = true,
													BorderSizePixel = 0,
													CanvasSize = UDim2.new(2, 0, 0, 0),
													BackgroundColor3 = Color3.fromRGB(255, 255, 255),
													AnchorPoint = Vector2.new(0.5, 0),
													Size = UDim2.new(1, 0, 1, 0),
													ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
													Position = UDim2.new(0.5, 0, 0, 0),
													BorderColor3 = Color3.fromRGB(0, 0, 0),
													ScrollBarThickness = 0,
													BackgroundTransparency = 1
												},
												{
													g(
														"UIPadding",
														{PaddingRight = UDim.new(0, 7), PaddingLeft = UDim.new(0, 7)}
													),
													g(
														"CanvasGroup",
														{
															BorderSizePixel = 0,
															BackgroundColor3 = Color3.fromRGB(16, 16, 16),
															AnchorPoint = Vector2.new(0.5, 0.5),
															Size = UDim2.new(1, 0, 0, 20),
															Position = UDim2.new(0.5, 0, 0.5, 0),
															BorderColor3 = Color3.fromRGB(0, 0, 0),
															BackgroundTransparency = 1
														},
														{
															g("UICorner", {CornerRadius = UDim.new(1, 0)}),
															g(
																"UIListLayout",
																{
																	Padding = UDim.new(0, 10),
																	VerticalAlignment = Enum.VerticalAlignment.Center,
																	SortOrder = Enum.SortOrder.LayoutOrder,
																	FillDirection = Enum.FillDirection.Horizontal
																}
															)
														},
														function(a)
															P = a
														end
													)
												},
												function(a)
													R = a
												end
											)
										}
									)
								}
							)
						}
					),
					g(
						"Frame",
						{
							BorderSizePixel = 0,
							BackgroundColor3 = Color3.fromRGB(255, 255, 255),
							Size = UDim2.new(1, 0, 0, 50),
							BorderColor3 = Color3.fromRGB(0, 0, 0),
							BackgroundTransparency = 1
						},
						{
							g(
								"ImageLabel",
								{
									Active = false,
									BorderSizePixel = 0,
									BackgroundColor3 = Color3.fromRGB(255, 255, 255),
									ImageColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
									Selectable = false,
									Image = "rbxassetid://105506802034513",
									Size = UDim2.new(0, 20, 0, 20),
									BackgroundTransparency = 1,
									BorderColor3 = Color3.fromRGB(0, 0, 0),
									ImageTransparency = 1
								},
								{
									g(
										"ImageButton",
										{
											Active = true,
											AnchorPoint = Vector2.new(0.5, 0.5),
											BackgroundColor3 = Color3.fromRGB(255, 255, 255),
											BackgroundTransparency = 1,
											BorderColor3 = Color3.fromRGB(0, 0, 0),
											BorderSizePixel = 0,
											Position = UDim2.new(0.5, 0, 0.5, 0),
											Size = UDim2.new(0.91, 0, 0.91, 0),
											Image = "rbxassetid://15196662130",
											ImageColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"]
										}
									),
									g(
										"UIGradient",
										{
											Rotation = 90,
											Transparency = NumberSequence.new {
												NumberSequenceKeypoint.new(0, 1),
												NumberSequenceKeypoint.new(1, 0)
											}
										}
									)
								},
								function(a)
									O = a
								end
							),
							g(
								"UIListLayout",
								{
									HorizontalAlignment = Enum.HorizontalAlignment.Right,
									VerticalAlignment = Enum.VerticalAlignment.Center,
									SortOrder = Enum.SortOrder.LayoutOrder,
									FillDirection = Enum.FillDirection.Horizontal
								}
							),
							g("UIPadding", {PaddingRight = UDim.new(0, 16)})
						}
					),
					g(
						"TextButton",
						{
							AnchorPoint = Vector2.new(1, 1),
							BackgroundTransparency = 1,
							Position = UDim2.new(1, 0, 1, 0),
							Size = UDim2.new(0, 20, 0, 20),
							Text = "",
							ZIndex = 2
						}
					)
				}
			)
		local V = false
		local W = false
		U.TextButton.MouseButton1Down:Connect(
			function()
				V = true
			end
		)
		if not W then
			local X, Y = U.AbsolutePosition, U.Parent.AbsoluteSize
			local Z = UDim2.new(X.X / Y.X, U.Position.X.Offset, X.Y / Y.Y, U.Position.Y.Offset)
			U.AnchorPoint = Vector2.new(0, 0)
			U.Position = Z
			W = true
		end
		game:GetService "UserInputService".InputEnded:Connect(
			function(_)
				if _.UserInputType == Enum.UserInputType.MouseButton1 then
					V = false
				end
			end
		)
		game:GetService "UserInputService".InputChanged:Connect(
			function(_)
				if V and _.UserInputType == Enum.UserInputType.MouseMovement then
					local a0 = math.max(360, _.Position.X - U.AbsolutePosition.X)
					local a1 = math.max(160, _.Position.Y - U.AbsolutePosition.Y)
					local a2 = UDim2.new(0, a0, 0, a1)
					game:GetService("TweenService"):Create(U, TweenInfo.new(0.15), {Size = a2}):Play()
				end
			end
		)
		O.MouseMoved:Connect(
			function()
				b[1]().tw({v = O, t = 0.2, s = "Linear", d = "Out", g = {ImageTransparency = 0.5}}):Play()
			end
		)
		O.MouseLeave:Connect(
			function()
				b[1]().tw({v = O, t = 0.2, s = "Linear", d = "Out", g = {ImageTransparency = 1}}):Play()
			end
		)
		O.ImageButton.MouseButton1Click:Connect(
			function()
				b[1]().dialog(
					U,
					'Do you want to <font color="#ff0000"><b>close?</b></font>',
					'You just press <font color="#3eff00">comfirm</font> and this ui will close immediately. and <font color="#ff3200">cannot be opened again</font> until you execute it again',
					function()
						local x = b[1]().tw({v = U, t = 0.2, s = "Linear", d = "Out", g = {GroupTransparency = 1}})
						x:Play()
						x.Completed:Wait()
						U.Parent:Destroy()
					end,
					N
				)
			end
		)
		b[1]().lak(U)
		function h:CreateTab(a3)
			assert(a3.Title, "Tab - Missing Title")
			local a4 =
				game:GetService("TextService"):GetTextSize(
					a3.Title,
					11,
					Enum.Font.Gotham,
					Vector2.new(math.huge, math.huge)
				)
			local a5, a6 = nil, nil
			local a7 = a4.X + 20
			local a8 =
				g(
					"Frame",
					{
						Parent = P,
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						Size = UDim2.new(0, a7, 0, 20),
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 1
					},
					{
						g("UICorner", {CornerRadius = UDim.new(1, 0)}),
						g(
							"UIGradient",
							{
								Color = ColorSequence.new {
									ColorSequenceKeypoint.new(0.000, a.Theme[N.Theme or "Quizzy"]["Color Tab"][1]),
									ColorSequenceKeypoint.new(1.000, a.Theme[N.Theme or "Quizzy"]["Color Tab"][2])
								}
							}
						),
						g(
							"TextLabel",
							{
								TextWrapped = true,
								BorderSizePixel = 0,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 11,
								Font = Enum.Font.Gotham,
								TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
								BackgroundTransparency = 1,
								Size = UDim2.new(1, 0, 1, 0),
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								Text = a3.Title
							}
						),
						g(
							"TextButton",
							{
								BorderSizePixel = 0,
								TextSize = 14,
								TextColor3 = Color3.fromRGB(0, 0, 0),
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								FontFace = Font.new(
									"rbxasset://fonts/families/SourceSansPro.json",
									Enum.FontWeight.Regular,
									Enum.FontStyle.Normal
								),
								Size = UDim2.new(1, 0, 1, 0),
								BackgroundTransparency = 1,
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								Text = ""
							}
						)
					}
				)
			local a9 =
				g(
					"Frame",
					{
						Parent = U,
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(25, 25, 25),
						AnchorPoint = Vector2.new(0.5, 1),
						Size = UDim2.new(1, 0, 1, 0),
						Position = UDim2.new(0.5, 0, 1, 0),
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 1,
						Name = "Page",
						Visible = false
					},
					{
						g(
							"UIPadding",
							{
								PaddingTop = UDim.new(0, 60),
								PaddingRight = UDim.new(0, 12),
								PaddingLeft = UDim.new(0, 12),
								PaddingBottom = UDim.new(0, 12)
							}
						),
						g(
							"CanvasGroup",
							{
								BorderSizePixel = 0,
								BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Background Page"],
								Size = UDim2.new(1, 0, 1, 0),
								BorderColor3 = Color3.fromRGB(0, 0, 0)
							},
							{
								g("UICorner", {CornerRadius = UDim.new(0, 6)}),
								g(
									"Frame",
									{
										BorderSizePixel = 0,
										BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Top Bar Page"],
										Size = UDim2.new(1, 0, 0, 35),
										BorderColor3 = Color3.fromRGB(0, 0, 0)
									},
									{
										g(
											"Frame",
											{
												BorderSizePixel = 0,
												BackgroundColor3 = Color3.fromRGB(132, 132, 132),
												AnchorPoint = Vector2.new(0, 1),
												Size = UDim2.new(1, 0, 0, 1),
												Position = UDim2.new(0, 0, 1, 0),
												BorderColor3 = Color3.fromRGB(0, 0, 0)
											}
										),
										g(
											"TextLabel",
											{
												BorderSizePixel = 0,
												TextXAlignment = Enum.TextXAlignment.Left,
												BackgroundColor3 = Color3.fromRGB(255, 255, 255),
												TextSize = 12,
												FontFace = Font.new(
													"rbxassetid://16658237174",
													Enum.FontWeight.Regular,
													Enum.FontStyle.Normal
												),
												TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
												BackgroundTransparency = 1,
												AnchorPoint = Vector2.new(0.5, 0.5),
												Size = UDim2.new(1, 0, 1, 0),
												BorderColor3 = Color3.fromRGB(0, 0, 0),
												Position = UDim2.new(0.5, 0, 0.5, 0),
												Text = a3.Title .. " Options"
											},
											{
												g(
													"UIPadding",
													{PaddingRight = UDim.new(0, 23), PaddingLeft = UDim.new(0, 23)}
												)
											}
										),
										g(
											"Frame",
											{
												BorderSizePixel = 0,
												BackgroundColor3 = Color3.fromRGB(255, 255, 255),
												AnchorPoint = Vector2.new(1, 0.5),
												Size = UDim2.new(1, 0, 0, 20),
												Position = UDim2.new(1, 0, 0.5, 0),
												BorderColor3 = Color3.fromRGB(0, 0, 0),
												BackgroundTransparency = 1
											},
											{
												g(
													"UIPadding",
													{PaddingRight = UDim.new(0, 19), PaddingLeft = UDim.new(0, 200)}
												),
												g(
													"Frame",
													{
														BorderSizePixel = 0,
														BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Search"],
														AnchorPoint = Vector2.new(1, 0.5),
														Size = UDim2.new(1, 0, 0, 20),
														Position = UDim2.new(1, 0, 0.5, 0),
														BorderColor3 = Color3.fromRGB(0, 0, 0)
													},
													{
														g(
															"UIPadding",
															{PaddingRight = UDim.new(0, 12), PaddingLeft = UDim.new(0, 12)}
														),
														g("UICorner", {CornerRadius = UDim.new(1, 0)}),
														g(
															"TextBox",
															{
																TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
																BorderSizePixel = 0,
																TextXAlignment = Enum.TextXAlignment.Left,
																TextSize = 11,
																BackgroundColor3 = Color3.fromRGB(255, 255, 255),
																Font = Enum.Font.Gotham,
																AnchorPoint = Vector2.new(0.5, 0.5),
																PlaceholderText = "search options",
																Size = UDim2.new(1, 0, 1, 0),
																Position = UDim2.new(0.5, 0, 0.5, 0),
																BorderColor3 = Color3.fromRGB(0, 0, 0),
																Text = "",
																BackgroundTransparency = 1,
																ZIndex = 3
															},
															nil,
															function(a)
																a6 = a
															end
														),
														g(
															"ImageLabel",
															{
																BorderSizePixel = 0,
																BackgroundColor3 = Color3.fromRGB(255, 255, 255),
																AnchorPoint = Vector2.new(1, 0.5),
																Image = "rbxassetid://15197354452",
																Size = UDim2.new(0, 10, 0, 10),
																BorderColor3 = Color3.fromRGB(0, 0, 0),
																BackgroundTransparency = 1,
																Position = UDim2.new(1, 0, 0.5, 0)
															}
														)
													}
												)
											}
										)
									}
								),
								g(
									"Frame",
									{
										BorderSizePixel = 0,
										BackgroundColor3 = Color3.fromRGB(255, 255, 255),
										Size = UDim2.new(1, 0, 1, 0),
										BorderColor3 = Color3.fromRGB(0, 0, 0),
										BackgroundTransparency = 1
									},
									{
										g("UIPadding", {PaddingTop = UDim.new(0, 42)}),
										g(
											"ScrollingFrame",
											{
												Active = true,
												BorderSizePixel = 0,
												BackgroundColor3 = Color3.fromRGB(255, 255, 255),
												AnchorPoint = Vector2.new(0.5, 1),
												Size = UDim2.new(0.98, 0, 1, 0),
												ScrollBarImageColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
												Position = UDim2.new(0.5, 0, 1, 0),
												BorderColor3 = Color3.fromRGB(0, 0, 0),
												ScrollBarThickness = 3,
												BackgroundTransparency = 1
											},
											{
												g(
													"UIListLayout",
													{Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}
												),
												g(
													"UIPadding",
													{PaddingLeft = UDim.new(0, 3), PaddingRight = UDim.new(0, 9)}
												)
											},
											function(a)
												a5 = a
											end
										)
									}
								)
							}
						)
					}
				)
			local function aa()
				b[1]().tw({v = a8, t = 0.3, s = "Linear", d = "InOut", g = {BackgroundTransparency = 0}}):Play()
				b[1]().tw(
					{
						v = a8.TextLabel,
						t = 0.3,
						s = "Linear",
						d = "Out",
						g = {TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Tab Select"]}
					}
				):Play()
				delay(
					.3,
					function()
						a9.Visible = true
						b[1]().tw({v = a9.CanvasGroup, t = 0.3, s = "Linear", d = "In", g = {GroupTransparency = 0}}):Play(

						)
					end
				)
			end
			a8.TextButton.MouseButton1Click:Connect(
				function()
					for i, ab in pairs(P:GetChildren()) do
						if ab:IsA("Frame") then
							b[1]().tw({v = ab, t = 0.3, s = "Linear", d = "Out", g = {BackgroundTransparency = 1}}):Play(

							)
							b[1]().tw(
								{
									v = ab.TextLabel,
									t = 0.3,
									s = "Linear",
									d = "Out",
									g = {TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"]}
								}
							):Play()
						end
					end
					for i, ab in pairs(U:GetChildren()) do
						if ab:IsA("Frame") and ab.Name == "Page" then
							local x =
								b[1]().tw(
									{v = ab.CanvasGroup, t = 0.3, s = "Linear", d = "Out", g = {GroupTransparency = 1}}
								)
							x:Play()
							x.Completed:Connect(
								function()
									ab.Visible = false
								end
							)
						end
					end
					aa()
				end
			)
			delay(
				.3,
				function()
					if not Q then
						aa()
						Q = true
					end
				end
			)
			a6.Changed:Connect(
				function()
					local ac = string.lower(a6.Text)
					for i, ab in pairs(a5:GetChildren()) do
						if ab:IsA("Frame") then
							if ac ~= "" and ab:FindFirstChild("TextDesc") and ab.TextDesc:FindFirstChild("TextLabel") then
								if string.find(string.lower(ab.TextDesc.TextLabel.Text), ac) then
									ab.Visible = true
								else
									ab.Visible = false
								end
							else
								ab.Visible = true
							end
						end
					end
				end
			)
			local ad = {}
			function ad:CreateToggle(ae)
				assert(ae.Title, "Toggle - Missing Title")
				local af = ae.Value or false
				local ag = ae.Callback or function()
				end
				local ah = b[1]().background(a5, ae.Title, ae.Desc, false, N)
				local ai = b[1]().click(ah)
				local aj =
					g(
						"Frame",
						{
							Parent = ah,
							BorderSizePixel = 0,
							BackgroundColor3 = Color3.fromRGB(255, 255, 255),
							AnchorPoint = Vector2.new(1, 0.5),
							Size = UDim2.new(0, 100, 0.8, 0),
							Position = UDim2.new(1, 0, 0.5, 0),
							BorderColor3 = Color3.fromRGB(0, 0, 0),
							BackgroundTransparency = 1
						},
						{
							g(
								"UIListLayout",
								{
									HorizontalAlignment = Enum.HorizontalAlignment.Right,
									VerticalAlignment = Enum.VerticalAlignment.Center,
									SortOrder = Enum.SortOrder.LayoutOrder
								}
							),
							g("UIPadding", {PaddingRight = UDim.new(0, 13)}),
							g(
								"Frame",
								{
									BorderSizePixel = 0,
									BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Toggle Color"],
									Size = UDim2.new(0, 30, 0, 15),
									BorderColor3 = Color3.fromRGB(0, 0, 0)
								},
								{
									g("UICorner", {CornerRadius = UDim.new(1, 0)}),
									g(
										"Frame",
										{
											BorderSizePixel = 0,
											BackgroundColor3 = Color3.fromRGB(255, 255, 255),
											AnchorPoint = Vector2.new(0.5, 0.5),
											Size = UDim2.new(0, 8, 0, 8),
											Position = UDim2.new(0.25, 0, 0.5, 0),
											BorderColor3 = Color3.fromRGB(0, 0, 0)
										},
										{g("UICorner", {CornerRadius = UDim.new(1, 0)})}
									)
								}
							)
						}
					)
				local function ak(af)
					if not af then
						ag(af)
						b[1]().tw(
							{
								v = ah.TextDesc.TextLabel,
								t = 0.15,
								s = "Linear",
								d = "InOut",
								g = {TextTransparency = 0.4}
							}
						):Play()
						b[1]().tw(
							{
								v = aj.Frame,
								t = 0.15,
								s = "Linear",
								d = "InOut",
								g = {BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Toggle Color"]}
							}
						):Play()
						b[1]().tw(
							{
								v = aj.Frame.Frame,
								t = 0.15,
								s = "Linear",
								d = "InOut",
								g = {Position = UDim2.new(0.25, 0, 0.5, 0)}
							}
						):Play()
					elseif af then
						ag(af)
						b[1]().tw(
							{v = ah.TextDesc.TextLabel, t = 0.15, s = "Linear", d = "InOut", g = {TextTransparency = 0}}
						):Play()
						b[1]().tw(
							{
								v = aj.Frame,
								t = 0.15,
								s = "Linear",
								d = "InOut",
								g = {BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"]}
							}
						):Play()
						b[1]().tw(
							{
								v = aj.Frame.Frame,
								t = 0.15,
								s = "Linear",
								d = "InOut",
								g = {Position = UDim2.new(0.75, 0, 0.5, 0)}
							}
						):Play()
					end
				end
				delay(
					0.5,
					function()
						ak(af)
					end
				)
				ai.MouseButton1Click:Connect(
					function()
						af = not af
						b[1]().jc(ai, ah)
						ak(af)
					end
				)
				local al = {}
				function al:SetTitle(am)
					ah.TextDesc.TextLabel.Text = am
				end
				function al:SetDesc(an)
					local ao = ah.TextDesc:FindFirstChild("Desc")
					if ao then
						ao.Text = an
					else
						g(
							"TextLabel",
							{
								Parent = ah.TextDesc,
								TextWrapped = true,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTransparency = 0.5,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 9,
								Font = Enum.Font.Gotham,
								TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
								BackgroundTransparency = 1,
								RichText = true,
								Size = UDim2.new(1, 0, 0, 16),
								AutomaticSize = Enum.AutomaticSize.Y,
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								Text = an,
								LayoutOrder = 1,
								Name = "Desc"
							}
						)
					end
				end
				function al:SetVisible(ap)
					ah.Visible = ap
				end
				function al:SetValue(aq)
					af = aq
					ak(af)
				end
				return al
			end
			function ad:CreateDropdown(ae)
				assert(ae.Title, "Dropdown - Missing Title")
				local ar = ae.List or {}
				local af = ae.Value or ""
				local as = ae.Multi or false
				local ag = ae.Callback or function()
				end
				local function at()
					if type(af) == "table" then
						return table.concat(af, ", ")
					else
						return af
					end
				end
				local ah = b[1]().background(a5, ae.Title, ae.Desc, false, N)
				local au =
					g(
						"Frame",
						{
							Parent = ah,
							AnchorPoint = Vector2.new(1, 0.5),
							BackgroundColor3 = Color3.fromRGB(255, 255, 255),
							BackgroundTransparency = 1,
							BorderColor3 = Color3.fromRGB(0, 0, 0),
							BorderSizePixel = 0,
							Position = UDim2.new(1, 0, 0.5, 0),
							Size = UDim2.new(0, 100, 1, 0)
						},
						{
							g("UIPadding", {PaddingRight = UDim.new(0, 13)}),
							g(
								"Frame",
								{
									AnchorPoint = Vector2.new(1, 0.5),
									BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Dropdown Color"],
									BorderColor3 = Color3.fromRGB(0, 0, 0),
									BorderSizePixel = 0,
									Size = UDim2.new(1, 0, 0, 20),
									Position = UDim2.new(1, 0, 0.5, 0)
								},
								{
									g("UICorner", {CornerRadius = UDim.new(0, 4)}),
									g("UIPadding", {PaddingLeft = UDim.new(0, 5)}),
									g(
										"ImageLabel",
										{
											AnchorPoint = Vector2.new(1, 0),
											BackgroundColor3 = Color3.fromRGB(255, 255, 255),
											BackgroundTransparency = 1,
											BorderColor3 = Color3.fromRGB(0, 0, 0),
											BorderSizePixel = 0,
											Position = UDim2.new(1, 0, 0, 0),
											Size = UDim2.new(0, 20, 0, 20),
											Image = "rbxassetid://14928415132"
										}
									),
									g(
										"TextLabel",
										{
											BackgroundColor3 = Color3.fromRGB(255, 255, 255),
											BackgroundTransparency = 1,
											BorderColor3 = Color3.fromRGB(0, 0, 0),
											BorderSizePixel = 0,
											Size = UDim2.new(0.75, 0, 1, 0),
											Font = Enum.Font.Gotham,
											Text = at(),
											TextColor3 = Color3.fromRGB(255, 255, 255),
											TextSize = 10,
											TextXAlignment = Enum.TextXAlignment.Left
										}
									)
								}
							)
						}
					)
				local av =
					g(
						"Frame",
						{
							Parent = U.Parent,
							BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Dropdown Select Background"],
							BorderColor3 = Color3.fromRGB(0, 0, 0),
							BorderSizePixel = 0,
							Position = UDim2.new(0, 0, 0, 0),
							Size = UDim2.new(0, 150, 0, 0),
							ClipsDescendants = true
						},
						{
							g("UICorner", {CornerRadius = UDim.new(0, 4)}),
							g(
								"UIPadding",
								{PaddingBottom = UDim.new(0, 5), PaddingTop = UDim.new(0, 5), PaddingRight = UDim.new(0, 3)}
							),
							g(
								"UIStroke",
								{Color = a.Theme[N.Theme or "Quizzy"]["Dropdown Select Stroke"], Transparency = 1}
							),
							g(
								"ScrollingFrame",
								{
									Active = true,
									BackgroundColor3 = Color3.fromRGB(255, 255, 255),
									BackgroundTransparency = 1,
									BorderColor3 = Color3.fromRGB(0, 0, 0),
									BorderSizePixel = 0,
									Size = UDim2.new(1, 0, 1, 0),
									ClipsDescendants = true,
									AutomaticCanvasSize = Enum.AutomaticSize.None,
									BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png",
									CanvasPosition = Vector2.new(0, 0),
									ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
									HorizontalScrollBarInset = Enum.ScrollBarInset.None,
									MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
									ScrollBarImageColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
									ScrollBarImageTransparency = 0,
									ScrollBarThickness = 3,
									ScrollingDirection = Enum.ScrollingDirection.XY,
									TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png",
									VerticalScrollBarInset = Enum.ScrollBarInset.None,
									VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
								},
								{
									g("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}),
									g("UIPadding", {PaddingLeft = UDim.new(0, 3), PaddingRight = UDim.new(0, 7)})
								}
							)
						}
					)
				av.Position =
					UDim2.new(
						0,
						au.Frame.AbsolutePosition.X - av.Parent.AbsolutePosition.X + au.Frame.Size.X.Offset - 150,
						0,
						au.Frame.AbsolutePosition.Y - av.Parent.AbsolutePosition.Y + au.Frame.Size.Y.Offset - 20
					)
				local T = false
				local ai = b[1]().click(au)
				local function aw()
					local ax = U.Parent.Parent
					local ay = workspace.CurrentCamera.ViewportSize
					local az = au.Frame.AbsolutePosition.X - av.Parent.AbsolutePosition.X + au.Frame.Size.X.Offset - 80
					local aA = au.Frame.AbsolutePosition.Y - av.Parent.AbsolutePosition.Y + au.Frame.Size.Y.Offset - 20
					if az < 0 then
						az = 0
					end
					if az + 150 > ay.X then
						az = ay.X - 150
					end
					if aA < 0 then
						aA = 0
					end
					if aA + 200 > ay.Y then
						aA = ay.Y - 200
					end
					if av.ScrollingFrame.UIListLayout.AbsoluteContentSize.Y + 5 < 200 then
						b[1]().tw(
							{
								v = av,
								t = 0.15,
								s = "Exponential",
								d = "InOut",
								g = {
									Size = UDim2.new(
										0,
										150,
										0,
										av.ScrollingFrame.UIListLayout.AbsoluteContentSize.Y + 5
									),
									Position = UDim2.new(0, az, 0, aA)
								}
							}
						):Play()
						b[1]().tw({v = av.UIStroke, t = 0.15, s = "Exponential", d = "InOut", g = {Transparency = 0}}):Play(

						)
					else
						b[1]().tw({v = av.UIStroke, t = 0.15, s = "Exponential", d = "InOut", g = {Transparency = 0}}):Play(

						)
						b[1]().tw(
							{
								v = av,
								t = 0.15,
								s = "Exponential",
								d = "InOut",
								g = {Size = UDim2.new(0, 150, 0, 200), Position = UDim2.new(0, az, 0, aA)}
							}
						):Play()
					end
				end
				local function aB()
					b[1]().tw({v = av, t = 0.15, s = "Exponential", d = "InOut", g = {Size = UDim2.new(0, 150, 0, 0)}}):Play(

					)
					b[1]().tw({v = av.UIStroke, t = 0.15, s = "Exponential", d = "InOut", g = {Transparency = 1}}):Play(

					)
				end
				game:GetService "UserInputService".InputBegan:Connect(
					function(z)
						if
							z.UserInputType == Enum.UserInputType.MouseButton1 or
							z.UserInputType == Enum.UserInputType.Touch
						then
							local A, B = av.AbsolutePosition, av.AbsoluteSize
							if
								game:GetService "Players".LocalPlayer:GetMouse().X < A.X or
								game:GetService "Players".LocalPlayer:GetMouse().X > A.X + B.X or
								game:GetService "Players".LocalPlayer:GetMouse().Y < A.Y - 20 - 1 or
								game:GetService "Players".LocalPlayer:GetMouse().Y > A.Y + B.Y
							then
								aB()
							end
						end
					end
				)
				ai.MouseButton1Click:Connect(
					function()
						T = not T
						if not T then
							aB()
						else
							aw()
						end
					end
				)
				local function aC()
					local a0 = au.Frame.TextLabel.TextBounds.X + 50
					if a0 > 150 then
						a0 = 150
					end
					local h =
						b[1]().tw({v = au, t = 0.15, s = "Back", d = "InOut", g = {Size = UDim2.new(0, a0, 1, 0)}})
					h:Play()
					h.Completed:Wait()
					au.Frame.TextLabel.TextTruncate = Enum.TextTruncate.AtEnd
				end
				local aD = {}
				local aE = {}
				local aF
				function aD:Clear()
					if not as then
						for aG, aH in ipairs(av.ScrollingFrame:GetChildren()) do
							if aH:IsA("Frame") then
								aH:Destroy()
							end
						end
						aF = nil
						au.Frame.TextLabel.Text = ""
					else
						for aI in pairs(aE) do
							aE[aI] = nil
						end
						for aG, aH in ipairs(av.ScrollingFrame:GetChildren()) do
							if aH:IsA("Frame") then
								aH:Destroy()
							end
						end
						au.Frame.TextLabel.Text = ""
					end
				end
				function aD:Add(o)
					local aJ =
						g(
							"Frame",
							{
								Parent = av.ScrollingFrame,
								BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Dropdown Item"],
								BackgroundTransparency = 0.9,
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								BorderSizePixel = 0,
								Size = UDim2.new(1, 0, 0, 20)
							},
							{
								g("UICorner", {CornerRadius = UDim.new(0, 4)}),
								g("UIPadding", {PaddingLeft = UDim.new(0, 5)}),
								g(
									"UIGradient",
									{
										Color = ColorSequence.new {
											ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
											ColorSequenceKeypoint.new(1, Color3.fromRGB(170, 170, 170))
										}
									}
								),
								g(
									"TextLabel",
									{
										BackgroundColor3 = Color3.fromRGB(255, 255, 255),
										BackgroundTransparency = 1,
										BorderColor3 = Color3.fromRGB(0, 0, 0),
										BorderSizePixel = 0,
										Size = UDim2.new(1, 0, 1, 0),
										Font = Enum.Font.Gotham,
										Text = o,
										TextColor3 = Color3.fromRGB(255, 255, 255),
										TextSize = 11,
										TextXAlignment = Enum.TextXAlignment.Left
									}
								)
							}
						)
					local aK = b[1]().click(aJ)
					aK.MouseButton1Click:Connect(
						function()
							b[1]().jc(aK, aJ)
							if as then
								if aE[o] then
									aE[o] = nil
									b[1]().tw(
										{
											v = aJ,
											t = 0.15,
											s = "Linear",
											d = "InOut",
											g = {
												BackgroundColor3 = Color3.fromRGB(88, 88, 88),
												BackgroundTransparency = 0.9
											}
										}
									):Play()
									b[1]().tw(
										{
											v = aJ.TextLabel,
											t = 0.15,
											s = "Linear",
											d = "InOut",
											g = {TextColor3 = Color3.fromRGB(255, 255, 255)}
										}
									):Play()
									aJ.TextLabel.Text = o
									local aL = {}
									for i, ab in pairs(aE) do
										table.insert(aL, i)
									end
									if #aL > 0 then
										au.Frame.TextLabel.Text = table.concat(aL, ", ")
									else
										au.Frame.TextLabel.Text = ""
									end
									ag(aL)
								else
									b[1]().tw(
										{
											v = aJ,
											t = 0.15,
											s = "Linear",
											d = "InOut",
											g = {
												BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
												BackgroundTransparency = 0
											}
										}
									):Play()
									b[1]().tw(
										{
											v = aJ.TextLabel,
											t = 0.15,
											s = "Linear",
											d = "InOut",
											g = {TextColor3 = Color3.fromRGB(0, 0, 0)}
										}
									):Play()
									aE[o] = true
									aJ.TextLabel.Text = o
									local aL = {}
									for i, ab in pairs(aE) do
										table.insert(aL, i)
									end
									au.Frame.TextLabel.Text = table.concat(aL, ", ")
									ag(aL)
								end
							else
								for i, ab in pairs(av.ScrollingFrame:GetChildren()) do
									if ab:IsA("Frame") then
										b[1]().tw(
											{
												v = ab,
												t = 0.15,
												s = "Linear",
												d = "InOut",
												g = {
													BackgroundColor3 = Color3.fromRGB(88, 88, 88),
													BackgroundTransparency = 0.9
												}
											}
										):Play()
										b[1]().tw(
											{
												v = ab.TextLabel,
												t = 0.15,
												s = "Linear",
												d = "InOut",
												g = {TextColor3 = Color3.fromRGB(255, 255, 255)}
											}
										):Play()
									end
								end
								b[1]().tw(
									{
										v = aJ,
										t = 0.15,
										s = "Linear",
										d = "InOut",
										g = {
											BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
											BackgroundTransparency = 0
										}
									}
								):Play()
								b[1]().tw(
									{
										v = aJ.TextLabel,
										t = 0.15,
										s = "Linear",
										d = "InOut",
										g = {TextColor3 = Color3.fromRGB(0, 0, 0)}
									}
								):Play()
								aJ.TextLabel.Text = o
								af = o
								au.Frame.TextLabel.Text = o
								ag(o)
							end
						end
					)
					local function aM(aN, aO)
						if type(aO) ~= "table" then
							return false
						end
						for aG, ab in pairs(aO) do
							if ab == aN then
								return true
							end
						end
						return false
					end
					delay(
						0,
						function()
							if as then
								if aM(o, af) then
									b[1]().tw(
										{
											v = aJ,
											t = 0.15,
											s = "Linear",
											d = "InOut",
											g = {
												BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
												BackgroundTransparency = 0
											}
										}
									):Play()
									b[1]().tw(
										{
											v = aJ.TextLabel,
											t = 0.15,
											s = "Linear",
											d = "InOut",
											g = {TextColor3 = Color3.fromRGB(0, 0, 0)}
										}
									):Play()
									aJ.TextLabel.Text = o
									aE[o] = true
									local aL = {}
									for i, ab in pairs(aE) do
										table.insert(aL, i)
									end
									au.Frame.TextLabel.Text = table.concat(aL, ", ")
									ag(aL)
								end
							else
								if o == af then
									b[1]().tw(
										{
											v = aJ,
											t = 0.15,
											s = "Linear",
											d = "InOut",
											g = {
												BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
												BackgroundTransparency = 0
											}
										}
									):Play()
									b[1]().tw(
										{
											v = aJ.TextLabel,
											t = 0.15,
											s = "Linear",
											d = "InOut",
											g = {TextColor3 = Color3.fromRGB(0, 0, 0)}
										}
									):Play()
									aJ.TextLabel.Text = o
									af = o
									au.Frame.TextLabel.Text = o
									ag(o)
								end
							end
							aC()
						end
					)
				end
				for i, ab in ipairs(ar) do
					aD:Add(ab)
				end
				au.Frame.TextLabel:GetPropertyChangedSignal("Text"):Connect(
					function()
						aC()
					end
				)
				av.ScrollingFrame.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
					function()
						av.ScrollingFrame.CanvasSize =
							UDim2.new(0, 0, 0, av.ScrollingFrame.UIListLayout.AbsoluteContentSize.Y + 5)
					end
				)
				function aD:SetTitle(am)
					ah.TextDesc.TextLabel.Text = am
				end
				function aD:SetDesc(an)
					local ao = ah.TextDesc:FindFirstChild("Desc")
					if ao then
						ao.Text = an
					else
						g(
							"TextLabel",
							{
								Parent = ah.TextDesc,
								TextWrapped = true,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTransparency = 0.5,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 9,
								Font = Enum.Font.Gotham,
								TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
								BackgroundTransparency = 1,
								RichText = true,
								Size = UDim2.new(1, 0, 0, 16),
								AutomaticSize = Enum.AutomaticSize.Y,
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								Text = an,
								LayoutOrder = 1,
								Name = "Desc"
							}
						)
					end
				end
				function aD:SetVisible(ap)
					ah.Visible = ap
				end
				return aD
			end
			function ad:CreateLabel(ae)
				assert(ae.Title, "Label - Missing Title")
				local ah = b[1]().background(a5, ae.Title, ae.Desc, true, N)
				ah.TextDesc.TextLabel.TextTransparency = 0
				local al = {}
				function al:SetTitle(am)
					ah.TextDesc.TextLabel.Text = am
				end
				function al:SetDesc(an)
					local ao = ah.TextDesc:FindFirstChild("Desc")
					if ao then
						ao.Text = an
					else
						g(
							"TextLabel",
							{
								Parent = ah.TextDesc,
								TextWrapped = true,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTransparency = 0.5,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 9,
								Font = Enum.Font.Gotham,
								TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
								BackgroundTransparency = 1,
								RichText = true,
								Size = UDim2.new(1, 0, 0, 16),
								AutomaticSize = Enum.AutomaticSize.Y,
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								Text = an,
								LayoutOrder = 1,
								Name = "Desc"
							}
						)
					end
				end
				function al:SetVisible(ap)
					ah.Visible = ap
				end
				return al
			end
			function ad:CreateButton(ae)
				assert(ae.Title, "Button - Missing Title")
				local ah, ag = b[1]().background(a5, ae.Title, ae.Desc, false, N), ae.Callback or function()
				end
				ah.TextDesc.TextLabel.TextTransparency = 0
				local aP =
					g(
						"Frame",
						{
							Parent = ah,
							AnchorPoint = Vector2.new(1, 0.5),
							BackgroundTransparency = 1,
							Position = UDim2.new(1, 0, 0.5, 0),
							Size = UDim2.new(0, 100, 0.8, 0),
							BorderSizePixel = 0
						},
						{
							g(
								"UIListLayout",
								{
									HorizontalAlignment = Enum.HorizontalAlignment.Right,
									SortOrder = Enum.SortOrder.LayoutOrder,
									VerticalAlignment = Enum.VerticalAlignment.Center
								}
							),
							g("UIPadding", {PaddingRight = UDim.new(0, 13)}),
							g(
								"ImageLabel",
								{
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Size = UDim2.new(0, 20, 0, 20),
									Image = "rbxassetid://14922213932"
								}
							)
						}
					)
				local ai = b[1]().click(ah)
				ai.MouseButton1Click:Connect(
					function()
						b[1]().jc(ai, ah)
						ag()
					end
				)
				local al = {}
				function al:SetTitle(am)
					ah.TextDesc.TextLabel.Text = am
				end
				function al:SetDesc(an)
					local ao = ah.TextDesc:FindFirstChild("Desc")
					if ao then
						ao.Text = an
					else
						g(
							"TextLabel",
							{
								Parent = ah.TextDesc,
								TextWrapped = true,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTransparency = 0.5,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 9,
								Font = Enum.Font.Gotham,
								TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
								BackgroundTransparency = 1,
								RichText = true,
								Size = UDim2.new(1, 0, 0, 16),
								AutomaticSize = Enum.AutomaticSize.Y,
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								Text = an,
								LayoutOrder = 1,
								Name = "Desc"
							}
						)
					end
				end
				function al:SetVisible(ap)
					ah.Visible = ap
				end
				return al
			end
			function ad:CreateTextbox(ae)
				assert(ae.Title, "TextBox - Missing Title")
				local ah, ag, aQ, af = b[1]().background(a5, ae.Title, ae.Desc, false, N), ae.Callback or function()
				end, ae.Placeholder or "Paste Your Text", ae.Value or ""
				ah.TextDesc.TextLabel.TextTransparency = 0
				ah.TextDesc.UIPadding.PaddingRight = UDim.new(0, 210)
				local aR =
					g(
						"Frame",
						{
							Parent = ah,
							AnchorPoint = Vector2.new(1, 0.5),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Position = UDim2.new(1, 0, 0.5, 0),
							Size = UDim2.new(0, 200, 0.8, 0)
						},
						{
							g("UIPadding", {PaddingRight = UDim.new(0, 13)}),
							g(
								"UIListLayout",
								{
									HorizontalAlignment = Enum.HorizontalAlignment.Right,
									SortOrder = Enum.SortOrder.LayoutOrder,
									VerticalAlignment = Enum.VerticalAlignment.Center
								}
							),
							g(
								"Frame",
								{
									BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Textbox Color"],
									BorderSizePixel = 0,
									Size = UDim2.new(1, 0, 0, 20)
								},
								{
									g("UICorner", {CornerRadius = UDim.new(0, 4)}),
									g(
										"Frame",
										{
											AnchorPoint = Vector2.new(0, 1),
											BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
											BorderSizePixel = 0,
											Position = UDim2.new(0, 0, 1, 0),
											Size = UDim2.new(1, 0, 0, 1),
											Name = "Line",
											BackgroundTransparency = 0.9
										}
									),
									g(
										"Frame",
										{
											BackgroundTransparency = 1,
											BorderSizePixel = 0,
											Size = UDim2.new(1, 0, 1, 0),
											Name = "ValueBox"
										},
										{
											g(
												"TextBox",
												{
													Active = true,
													BackgroundTransparency = 1,
													BorderSizePixel = 0,
													CursorPosition = -1,
													Size = UDim2.new(1, 0, 1, 0),
													Font = Enum.Font.Gotham,
													PlaceholderColor3 = Color3.fromRGB(178, 178, 178),
													PlaceholderText = aQ,
													Text = af,
													TextColor3 = Color3.fromRGB(255, 255, 255),
													TextSize = 11,
													TextXAlignment = Enum.TextXAlignment.Left
												}
											),
											g("UIPadding", {PaddingLeft = UDim.new(0, 5)})
										}
									)
								}
							)
						}
					)
				aR.Frame.ValueBox.TextBox.FocusLost:Connect(
					function()
						if af then
							if #aR.Frame.ValueBox.TextBox.Text > 0 then
								pcall(ag, aR.Frame.ValueBox.TextBox.Text)
							end
						end
					end
				)
				aR.Frame.ValueBox.TextBox.Focused:Connect(
					function()
						b[1]().tw(
							{v = aR.Frame.Line, t = 0.15, s = "Linear", d = "InOut", g = {BackgroundTransparency = 0}}
						):Play()
					end
				)
				aR.Frame.ValueBox.TextBox.FocusLost:Connect(
					function()
						b[1]().tw(
							{v = aR.Frame.Line, t = 0.15, s = "Linear", d = "InOut", g = {BackgroundTransparency = 0.9}}
						):Play()
					end
				)
				delay(
					0,
					function()
						if af then
							if #aR.Frame.ValueBox.TextBox.Text > 0 then
								pcall(ag, aR.Frame.ValueBox.TextBox.Text)
							end
						end
					end
				)
				local al = {}
				function al:SetTitle(am)
					ah.TextDesc.TextLabel.Text = am
				end
				function al:SetDesc(an)
					local ao = ah.TextDesc:FindFirstChild("Desc")
					if ao then
						ao.Text = an
					else
						g(
							"TextLabel",
							{
								Parent = ah.TextDesc,
								TextWrapped = true,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTransparency = 0.5,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 9,
								Font = Enum.Font.Gotham,
								TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
								BackgroundTransparency = 1,
								RichText = true,
								Size = UDim2.new(1, 0, 0, 16),
								AutomaticSize = Enum.AutomaticSize.Y,
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								Text = an,
								LayoutOrder = 1,
								Name = "Desc"
							}
						)
					end
				end
				function al:SetVisible(ap)
					ah.Visible = ap
				end
				function al:SetValue(aq)
					aR.Frame.ValueBox.TextBox.Text = aq
				end
				return al
			end
			function ad:CreateSlider(ae)
				assert(ae.Title, "Slider - Missing Title")
				local ah, ag, af, aS, aT, aU =
					b[1]().background(a5, ae.Title, ae.Desc, true, N),
				ae.Callback or function()
				end,
				ae.Value or ae.Max / 2,
				ae.Min or 0,
				ae.Max or 100,
				ae.DecimalPlaces or 0
				ah.TextDesc.TextLabel.TextTransparency = 0
				ah.TextDesc.UIPadding.PaddingRight = UDim.new(0, 210)
				local aV =
					g(
						"Frame",
						{
							Parent = ah,
							AnchorPoint = Vector2.new(1, 0.5),
							BackgroundColor3 = Color3.fromRGB(255, 255, 255),
							BackgroundTransparency = 1,
							BorderColor3 = Color3.fromRGB(0, 0, 0),
							BorderSizePixel = 0,
							Position = UDim2.new(1, 0, 0.5, 0),
							Size = UDim2.new(0, 200, 0.8, 0)
						},
						{
							g("UIPadding", {PaddingRight = UDim.new(0, 13)}),
							g(
								"UIListLayout",
								{
									Padding = UDim.new(0, 5),
									FillDirection = Enum.FillDirection.Horizontal,
									HorizontalAlignment = Enum.HorizontalAlignment.Right,
									SortOrder = Enum.SortOrder.LayoutOrder,
									VerticalAlignment = Enum.VerticalAlignment.Center
								}
							),
							g(
								"TextBox",
								{
									Active = true,
									BackgroundColor3 = Color3.fromRGB(255, 255, 255),
									BackgroundTransparency = 1,
									BorderColor3 = Color3.fromRGB(0, 0, 0),
									BorderSizePixel = 0,
									LayoutOrder = -1,
									Size = UDim2.new(0, 30, 0, 30),
									Font = Enum.Font.GothamBold,
									PlaceholderColor3 = Color3.fromRGB(178, 178, 178),
									PlaceholderText = "",
									Text = "80",
									TextColor3 = Color3.fromRGB(255, 255, 255),
									TextSize = 10
								}
							),
							g(
								"CanvasGroup",
								{
									BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Slider Color"],
									BorderColor3 = Color3.fromRGB(0, 0, 0),
									BorderSizePixel = 0,
									Size = UDim2.new(0, 150, 0, 8),
									Name = "Frame"
								},
								{
									g("UICorner", {CornerRadius = UDim.new(1, 0)}),
									g(
										"Frame",
										{
											BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Color Main"],
											BorderColor3 = Color3.fromRGB(0, 0, 0),
											BorderSizePixel = 0,
											Size = UDim2.new(0.8, 0, 1, 0)
										},
										{
											g("UICorner", {CornerRadius = UDim.new(1, 0)}),
											g("UIPadding", {PaddingRight = UDim.new(0, 1)}),
											g(
												"ImageLabel",
												{
													AnchorPoint = Vector2.new(1, 0.5),
													BackgroundColor3 = Color3.fromRGB(255, 255, 255),
													BackgroundTransparency = 1,
													BorderColor3 = Color3.fromRGB(0, 0, 0),
													BorderSizePixel = 0,
													Position = UDim2.new(1, 0, 0.5, 0),
													Size = UDim2.new(0, 8, 0, 8),
													Image = "rbxassetid://117975105537462"
												}
											)
										}
									)
								}
							)
						}
					)
				local ai = b[1]().click(aV.Frame)
				local function aW(aX, aY)
					local aZ = 10 ^ aY
					return math.floor(aX * aZ + 0.5) / aZ
				end
				local function a_(aX)
					aX = math.clamp(aX, aS, aT)
					aX = aW(aX, aU)
					b[1]().tw(
						{
							v = aV.Frame.Frame,
							t = 0.5,
							s = "Exponential",
							d = "Out",
							g = {Size = UDim2.new((aX - aS) / (aT - aS), 0, 1, 0)}
						}
					):Play()
					aV.TextBox.Text = tonumber(aX)
					ag(aX)
				end
				delay(
					0.5,
					function()
						a_(af or 0)
					end
				)
				aV.TextBox.FocusLost:Connect(
					function()
						local aX = tonumber(aV.TextBox.Text) or aS
						a_(aX)
					end
				)
				local function b0(_)
					local b1 = aV.Frame
					local I = math.clamp((_.Position.X - b1.AbsolutePosition.X) / b1.AbsoluteSize.X, 0, 1)
					local aX = I * (aT - aS) + aS
					a_(aX)
				end
				local b2 = false
				ai.InputBegan:Connect(
					function(_)
						if
							_.UserInputType == Enum.UserInputType.MouseButton1 or
							_.UserInputType == Enum.UserInputType.Touch
						then
							b2 = true
							b0(_)
						end
					end
				)
				ai.InputEnded:Connect(
					function(_)
						if
							_.UserInputType == Enum.UserInputType.MouseButton1 or
							_.UserInputType == Enum.UserInputType.Touch
						then
							b2 = false
						end
					end
				)
				game:GetService("UserInputService").InputChanged:Connect(
					function(_)
						if
							b2 and
							(_.UserInputType == Enum.UserInputType.MouseMovement or
								_.UserInputType == Enum.UserInputType.Touch)
						then
							b0(_)
						end
					end
				)
				local al = {}
				function al:SetTitle(am)
					ah.TextDesc.TextLabel.Text = am
				end
				function al:SetDesc(an)
					local ao = ah.TextDesc:FindFirstChild("Desc")
					if ao then
						ao.Text = an
					else
						g(
							"TextLabel",
							{
								Parent = ah.TextDesc,
								TextWrapped = true,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTransparency = 0.5,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 9,
								Font = Enum.Font.Gotham,
								TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
								BackgroundTransparency = 1,
								RichText = true,
								Size = UDim2.new(1, 0, 0, 16),
								AutomaticSize = Enum.AutomaticSize.Y,
								BorderColor3 = Color3.fromRGB(0, 0, 0),
								Text = an,
								LayoutOrder = 1,
								Name = "Desc"
							}
						)
					end
				end
				function al:SetVisible(ap)
					ah.Visible = ap
				end
				function al:SetDecimalPlaces(b3)
					aU = b3
					a_(af)
				end
				function al:SetValue(aq)
					a_(aq)
				end
				return al
			end
			function ad:CreateSection(ae)
				assert(ae.Title, "Section - Missing Title")
				local b4 =
					g(
						"Frame",
						{Parent = a5, BackgroundTransparency = 1, Size = UDim2.new(0, 100, 0, 20), BorderSizePixel = 0},
						{
							g(
								"TextLabel",
								{
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Size = UDim2.new(0, 200, 1, 0),
									Font = Enum.Font.Gotham,
									Text = ae.Title,
									TextColor3 = a.Theme[N.Theme or "Quizzy"]["Text Color"],
									TextSize = 14,
									TextXAlignment = Enum.TextXAlignment.Left
								}
							),
							g("UIPadding", {PaddingLeft = UDim.new(0, 13), PaddingRight = UDim.new(0, 90)})
						}
					)
				local al = {}
				function al:SetTitle(am)
					b4.TextLabel.Text = am
				end
				function al:SetVisible(ap)
					b4.Visible = ap
				end
				return al
			end
			a5.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
				function()
					a5.CanvasSize = UDim2.new(0, 0, 0, a5.UIListLayout.AbsoluteContentSize.Y + 10)
				end
			)
			return ad
		end
		function h:SetTransparency(ae)
			a.Theme[N.Theme or "Quizzy"]["Background Transparency"] = ae
			b[1]().tw({v = U, t = 0.5, s = "Exponential", d = "Out", g = {GroupTransparency = ae}}):Play()
		end
		local O =
			g(
				"ImageButton",
				{
					Name = "CloseUI",
					Parent = U.Parent,
					Active = true,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = a.Theme[N.Theme or "Quizzy"]["Background"],
					BackgroundTransparency = a.Theme[N.Theme or "Quizzy"]["Background Transparency"],
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Position = UDim2.new(0.5, 0, 0.1, 0),
					Size = UDim2.new(0, 30, 0, 30),
					Image = b[1]().gl(N.Icon)
				},
				{g("UICorner", {CornerRadius = UDim.new(0, 6)})}
			)
		b[1]().lak(O)
		local function b5()
			T = not T
			local h
			if T then
				if h then
					h:Cancel()
				end
				h = b[1]().tw({v = U, t = 0.2, s = "Linear", d = "Out", g = {GroupTransparency = 1}})
				h:Play()
				h.Completed:Connect(
					function()
						U.Visible = false
					end
				)
			else
				U.Visible = true
				b[1]().tw(
					{
						v = U,
						t = 0.2,
						s = "Linear",
						d = "Out",
						g = {GroupTransparency = a.Theme[N.Theme or "Quizzy"]["Background Transparency"]}
					}
				):Play()
			end
		end
		O.MouseButton1Click:Connect(
			function()
				b5()
			end
		)
		game:GetService("UserInputService").InputBegan:Connect(
			function(_, b6)
				if not b6 and _.KeyCode == S then
					b5()
				end
			end
		)
		R.CanvasGroup.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
			function()
				R.CanvasSize = UDim2.new(0, R.CanvasGroup.UIListLayout.AbsoluteContentSize.X + 30, 0, 0)
			end
		)
		return h
	end
}

local Window = b:CreateWindow({
	Title = "Pictures hub",
	Theme = "Pictures",
	Size = UDim2.new(0, 500, 0, 350),
	Keybind = Enum.KeyCode.LeftControl
})

local Tab1 = Window:CreateTab({
	Title = "General"
})
local Tab2 = Window:CreateTab({
	Title = "Automatic"
})
local Tab3 = Window:CreateTab({
	Title = "ESP"
})
local Tab4 = Window:CreateTab({
	Title = "Quest & Item"
})

Tab1:CreateSection({
	Title = "Section"
})

Tab1:CreateToggle({
	Title = "Toggle Normal + Value True",
	Desc = "",
	Value = true,
	Callback = function(v)
		print(v)
	end,
})

Tab1:CreateToggle({
	Title = "Toggle Description + Value false",
	Desc = "This is a Toggle Description and Value is false",
	Value = false,
	Callback = function(v)
		print(v)
	end,
})

Tab1:CreateDropdown({
	Title = "This is a Dropdown, Select:",
	Desc = "",
	List = {"Select 1", "Select 2", "Select 3", "Select 4", "Select 5"},
	Value = "Select 1",
	Multi = false,
	Callback = function(v)
		print(v)
	end
})

Tab1:CreateDropdown({
	Title = "This is a Dropdown multi, Select:",
	Desc = "This is a description dropdown multi select",
	List = {"Select 1", "Select 2", "Select 3", "Select 4", "Select 5"},
	Value = {"Select 1","Select 3"},
	Multi = true,
	Callback = function(v)
		print(v)
	end
})

Tab1:CreateLabel({
	Title = "This is a Label"
})

Tab1:CreateLabel({
	Title = "This is a Label + description",
	Desc = "This is a Description"
})

Tab1:CreateButton({
	Title = "This is a Button",
	Desc = "This is a Description",
	Callback = function()
		print("Click")
	end
})

Tab1:CreateTextbox({
	Title = "This is a TextBox",
	Desc = "",
	Placeholder = "Where You Text?",
	Value = "",
	Callback = function(v)
		print(v)
	end,
})

Tab1:CreateSlider({
	Title = "Background Transparency",
	Min = 0,
	Max = 1,
	Value = 0.1,
	DecimalPlaces = 2,
	Callback = function(v)
		Window:SetTransparency(v)
	end
})

Tab1:CreateSlider({
	Title = "This is a Slider",
	Desc = "This is a description slider",
	Min = 0,
	Max = 100,
	Value = 80,
	DecimalPlaces = 0,
	Callback = function(v)
		print(v)
	end
})
