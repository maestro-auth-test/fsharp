# The F# compiler, F# core library, and F# editor tools
[![Build Status](https://dev.azure.com/dnceng-public/public/_apis/build/status/dotnet/fsharp/fsharp-ci?branchName=main)](https://dev.azure.com/dnceng-public/public/_build/latest?definitionId=90&branchName=main)
[![Help Wanted](https://img.shields.io/github/issues/dotnet/fsharp/help%20wanted?style=flat-square&color=%232EA043&label=help%20wanted)](https://github.com/dotnet/fsharp/labels/help%20wanted)


You're invited to contribute to future releases of the F# compiler, core library, and tools. Development of this repository can be done on any OS supported by [.NET](https://dotnet.microsoft.com/).

You will also need .NET SDK installed from [here](https://dotnet.microsoft.com/download/dotnet), exact version can be found in the global.json file in the root of the repository.

## Contributing

### Quickstart on Windows

Build from the command line:

```shell
build.cmd
```

The build depends on an installation of Visual Studio. To build the compiler without this dependency use:

```shell
build.cmd -noVisualStudio
```

After it's finished, open either `FSharp.sln` or `VisualFSharp.sln` in your editor of choice. The latter solution is larger but includes the F# tools for Visual Studio and its associated infrastructure.

### Quickstart on Linux or macOS

Build from the command line:

```shell
./build.sh
```

After it's finished, open `FSharp.sln` in your editor of choice.

### Documentation for contributors

* The [Compiler Documentation](docs/index.md) is essential reading for any larger contributions to the F# compiler codebase and contains links to learning videos, architecture diagrams, and other resources.

* The same docs are also published as [The F# Compiler Guide](https://fsharp.github.io/fsharp-compiler-docs/). It also contains the public searchable docs for FSharp.Compiler.Service component.

* See [DEVGUIDE.md](DEVGUIDE.md) for more details on configurations for building the codebase. In practice, you only need to run `build.cmd`/`build.sh`.

* See [TESTGUIDE.md](TESTGUIDE.md) for information about the various test suites in this codebase and how to run them individually.

### Documentation for F# community

* [The F# Documentation](https://learn.microsoft.com/dotnet/fsharp/) is the primary documentation for F#. The source for the content is [here](https://github.com/dotnet/docs/tree/main/docs/fsharp).

* [The F# Language Design Process](https://github.com/fsharp/fslang-design/) is the fundamental design process for the language, from [suggestions](https://github.com/fsharp/fslang-suggestions) to completed RFCs.  There are also [tooling RFCs](https://github.com/fsharp/fslang-design/tree/main/tooling) for some topics where cross-community co-operation and visibility are most useful.

* [The F# Language Specification](https://fsharp.org/specs/language-spec/) is an in-depth description of the F# language. This is essential for understanding some behaviors of the F# compiler and some of the rules within the compiler codebase. For example, the order and way name resolution happens are specified here, which greatly impacts how the code in Name Resolutions works and why certain decisions are made.

### No contribution is too small

Even if you find a single-character typo, we're happy to take the change! Although the codebase can feel daunting for beginners, we and other contributors are happy to help you along.

Not sure where to contribute?
Look at the [curated list of issues asking for help](https://github.com/dotnet/fsharp/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22help%20wanted%22). If you want to tackle any of those, use the comments section of the chosen issue to indicate interest and feel free to ask for initial guidance. We are happy to help with resolving outstanding issues while making a successful PR addressing the issue.

The issues in this repository can have big differences in the complexity for fixing them.
Are you getting started? We do have a label for [good first issues](https://github.com/dotnet/fsharp/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22good%20first%20issue%22) as well.

## Per-build NuGet packages

### 7.0.40x series

[FSharp.Compiler.Service 43.7.400-preview](https://dev.azure.com/dnceng/public/_artifacts/feed/dotnet7/NuGet/FSharp.Compiler.Service/versions/)

```xml
<add key="fsharp-prerelease" value="https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet7/nuget/v3/index.json" />
```

### 8.0.10x series

[FSharp.Compiler.Service 43.8.100-preview](https://dev.azure.com/dnceng/public/_artifacts/feed/dotnet8/NuGet/FSharp.Compiler.Service/versions/)

```xml
<add key="fsharp-prerelease" value="https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet8/nuget/v3/index.json" />
```

**NOTE:** Official NuGet releases of FCS and FSharp.Core are synched with SDK releases (on purpose - we want to be in sync). Nightly packages release to Azure feeds on every successful insertion.

## Branches

These are the branches in use:

* `main`
  * Almost all contributions go here.
  * Able to be built, installed and used in the latest public Visual Studio release.
  * May contain updated F# features and logic.
  * Used to build nightly VSIX (see above).

* `release/dev15.9`
  * Long-term servicing branch for VS 2017 update 15.9.x. We do not expect to service that release, but if we do, that's where the changes will go.

* `release/dev17.x`
  * Latest release branch for the particular point release of Visual Studio.
  * Incorporates features and fixes from main up to a particular branch point, then selective cherry-picks.
  * May contain new features that depend on new things or fixes in the corresponding forthcoming Visual Studio release.
  * Gets integrated back into main once the corresponding Visual Studio release is made.

## F# language and core library evolution

Evolution of the F# language and core library follows a process spanning two additional repositories. The process is as follows:

1. Use the [F# language suggestions repo](https://github.com/fsharp/fslang-suggestions/) to search for ideas, vote on ones you like, submit new ideas, and discuss details with the F# community.
2. Ideas that are "approved in principle" are eligible for a new RFC in the [F# language design repo](https://github.com/fsharp/fslang-design). This is where the technical specification and discussion of approved suggestions go.
3. Implementations and testing of an RFC are submitted to this repository.

## License

This project is subject to the MIT License. A copy of this license is in [License.txt](License.txt).

## Code of Conduct

This project has adopted the [Contributor Covenant](https://contributor-covenant.org/) code of conduct to clarify expected behavior in our community. You can read it at [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md).

## Get In Touch

Members of the [F# Software Foundation](https://fsharp.org) are invited to the [FSSF Slack](https://fsharp.org/guides/slack/). You can find support from other contributors in the `#compiler` and `#editor-support` channels.

Additionally, you can use the `#fsharp` tag on Twitter if you have general F# questions, including about this repository. Chances are you'll get multiple responses.

## About F\#

If you're curious about F# itself, check out these links:

* [What is F#](https://learn.microsoft.com/dotnet/fsharp/what-is-fsharp)
* [Get started with F#](https://learn.microsoft.com/dotnet/fsharp/get-started/)
* [F# Software Foundation](https://fsharp.org)
* [F# Testimonials](https://fsharp.org/testimonials)

## Contributors ✨

F# exists because of these wonderful people:

<a href="https://github.com/dotnet/fsharp/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=dotnet/fsharp" />
</a>

Made with [contrib.rocks](https://contrib.rocks).
