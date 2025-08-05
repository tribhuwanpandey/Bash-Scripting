File Extensions and Shebang in Bash Scripts

File Extensions

1: .sh is the common extension for shell scripts.

2: Not required, but helps identify the file as a script.

3: Enables syntax highlighting and clarity.


Shebang (#!)

1: The first line in a script that tells the system which interpreter to use.

2: Common shebang for Bash:

#!/bin/bash or #!/usr/bin/env bash

Why use #!/usr/bin/env bash?

It uses the environment's bash, making it more portable across systems where bash might be in different locations.

How it works

1: When you run a script directly (./script.sh), the OS looks at the shebang line to decide which program to run it with.

2: Without shebang, you need to run scripts by explicitly calling the interpreter:

bash script.sh

Making scripts executable

Before running a script with ./script.sh, you need to make it executable:

chmod +x script.sh

