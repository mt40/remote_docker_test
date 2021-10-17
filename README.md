This is a test for using remote docker daemon for development.

More specifically, this support the following development flow:
1. Change code
2. Click run
3. IntelliJ deploy code changes to remote server
4. IntelliJ spawns a container with the code changes, using volume
5. IntelliJ run the code

# Set up
**This project is already setup correctly but if you want to setup a new project, you need to do the setup steps below.**

---

IntelliJ is naive, so we need to tell it a bit how to do our work.

1. Configure automatic deployment to remote server:
   1. In **Preferences > Deployment**, setup your ssh connection
   2. In **Mappings** tab, make sure **Local Path** is the path of the code base on your laptop. **Deployment Path** must be the same as Local Path.
   3. In **Preferences > Deployment > Options > Upload changed files automatically...**, choose `Always`

2. Create a remote Python sdk:
   1. In **Project Structure > SDKs**, create a new Python SDK by **+ > Add Python SDK > Docker**. Choose your remote docker server and a suitable image.

Now you can run main.py by **right click > Run**.