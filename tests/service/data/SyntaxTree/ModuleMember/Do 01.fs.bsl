ImplFile
  (ParsedImplFileInput
     ("/root/ModuleMember/Do 01.fs", false, QualifiedNameOfFile Module, [],
      [SynModuleOrNamespace
         ([Module], false, NamedModule,
          [Expr
             (Do
                (ArbitraryAfterError ("hardwhiteDoBinding1", (3,2--3,2)),
                 (3,0--3,2)), (3,0--3,2));
           Expr (Const (Int32 2, (5,0--5,1)), (5,0--5,1))],
          PreXmlDoc ((1,0), FSharp.Compiler.Xml.XmlDocCollector), [], None,
          (1,0--5,1), { LeadingKeyword = Module (1,0--1,6) })], (true, true),
      { ConditionalDirectives = []
        WarnDirectives = []
        CodeComments = [] }, set []))

(5,0)-(5,1) parse error Unexpected syntax or possible incorrect indentation: this token is offside of context started at position (3:1). Try indenting this further.
To continue using non-conforming indentation, pass the '--strict-indentation-' flag to the compiler, or set the language version to F# 7.
(5,0)-(5,1) parse error Expecting expression
