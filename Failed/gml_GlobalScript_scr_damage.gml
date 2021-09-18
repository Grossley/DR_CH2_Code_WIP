/*
DECOMPILER FAILED!

System.InvalidOperationException: Stack empty.
   at System.Collections.Generic.Stack`1.ThrowForEmptyStack()
   at System.Collections.Generic.Stack`1.Pop()
   at UndertaleModLib.Decompiler.Decompiler.DecompileFromBlock(DecompileContext context, Block block, List`1 tempvars, Stack`1 workQueue) in C:\Users\User\Documents\GitHub\UndertaleModTool_Local\UndertaleModLib\Decompiler\Decompiler.cs:line 1563
   at UndertaleModLib.Decompiler.Decompiler.DecompileFromBlock(DecompileContext context, Block block) in C:\Users\User\Documents\GitHub\UndertaleModTool_Local\UndertaleModLib\Decompiler\Decompiler.cs:line 2014
   at UndertaleModLib.Decompiler.Decompiler.FunctionCall.DoTypePropagation(DecompileContext context, AssetIDType suggestedType) in C:\Users\User\Documents\GitHub\UndertaleModTool_Local\UndertaleModLib\Decompiler\Decompiler.cs:line 1279
   at UndertaleModLib.Decompiler.Decompiler.DoTypePropagation(DecompileContext context, Dictionary`2 blocks) in C:\Users\User\Documents\GitHub\UndertaleModTool_Local\UndertaleModLib\Decompiler\Decompiler.cs:line 3152
   at UndertaleModLib.Decompiler.Decompiler.Decompile(UndertaleCode code, DecompileContext context) in C:\Users\User\Documents\GitHub\UndertaleModTool_Local\UndertaleModLib\Decompiler\Decompiler.cs:line 3133
   at Submission#0.DumpCode()
*/