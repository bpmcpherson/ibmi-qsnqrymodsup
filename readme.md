# Query Display Mode Support (QsnQryModSup) API

This is a simple implementation of the [QsnQryModSup procedure][QsnQryModSup] provided by IBM on the IBM i/AS400 to determine if a display device can support a screen size. Handy when working with green screens and need to support only one (or both) sizes. This project provides a copy book containing a procedure prototype, constants for handling the display sizes, and an API error code template (useful for other interal IBM APIs!) for easy implementation of the API, along with an example program to play around with the API. 

### Installation

With [Visual Studio Code][vscode], clone this repository to your local machine and use [Code for IBM i][codeforidoc] to 
connect to your target IBM i (check the [IBM i Developer Guide Setup][devguide] for details). 

This project utilizes [IBM i Bob][ibmbobdoc] to install the software. Project settings are controlled by the iproj.json file.

To specify the target library for compilation, a .env file should be generated ([IBM i Project Explorer][ibmiprojexp] will help to facilitate this) and an OBJLIB variable needs to be assigned a value.

    OBJLIB=Library to Compile To

Additional dependent libraries and include directories need to be listed in the iproj.json file, as this may vary by system. 

Once set up, utilize the "Run" option in Project Explorer and select "Build" to do a complete deployment on the IBM i system. 

### Recommended Development Tools

- [Visual Studio Code][vscode] - Open source IDE with extensions to customize development needs.
- [Code for IBM i][codeforidoc] - VS Code Extension for modern IBM i development.
- [IBM i Bob][ibmbobdoc] - Open source build system for the IBM i platform (installed on the IBM i).
- [IBM i Project Explorer][ibmiprojexp] - VS Code Extension supporting local buildable projects for IBM i development.
- [Source Orbit][sourceorbitdoc] - A dependency management system for the IBM i (installed on the IBM i).

[codeforidoc]: https://codefori.github.io/docs/#/
[ibmbobdoc]: https://ibm.github.io/ibmi-bob/#/
[sourceorbitdoc]: https://ibm.github.io/sourceorbit/#/
[ibmiprojexp]: https://ibm.github.io/vscode-ibmi-projectexplorer/#/
[vscode]: https://code.visualstudio.com
[QsnQryModSup]: https://www.ibm.com/docs/en/i/7.5?topic=ssw_ibm_i_75/apis/QsnQryModSup.html