1. Run the program and evalutate for free.
2. Click IDE menu "Configure" or "Help" -> "Edit Custom VM Options..."
3. Append "-javaagent:/absolute/path/to/jetbrains-agent.jar" to end line.
    example:
      windows:  -javaagent:C:\Users\admin\jetbrains-agent.jar
4. Restart IDE.
5. Click IDE menu "Help" -> "Register..." or "Configure" -> "Manage License..."
   Support "License server" and "Activation code":
   - Entry license server address: http://fls.jetbrains-agent.com