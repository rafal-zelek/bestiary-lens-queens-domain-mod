---@meta

---@class UFB_AnimCharColorDecorator : URichTextBlockDecorator
local UFB_AnimCharColorDecorator = {}

---@class UFB_AnimRichTextBlock : URichTextBlock
---@field TextPrintSpeed float
---@field CharacterAnimTime float
---@field MaxYChar float
---@field MaxYCharTotal float
---@field FinishedEvent FFB_AnimRichTextBlockFinishedEvent
---@field CharColorDecorator UFB_AnimCharColorDecorator
local UFB_AnimRichTextBlock = {}

function UFB_AnimRichTextBlock:GetCurrentTextPrintDuration() end

function UFB_AnimRichTextBlock:IsAnimPrintingLetterByLetter() end

function UFB_AnimRichTextBlock:PrintLetterByLetter() end

function UFB_AnimRichTextBlock:StopPrintAndHideText() end

function UFB_AnimRichTextBlock:StopPrintAndShowText() end
