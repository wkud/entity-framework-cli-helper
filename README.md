# Entity Framework CLI Helper
Meant for **Windows** users, to shorten commands executed in specific project. 

## Setup
1. Download `ef-your-project.cmd` file from this repository.
2. Rename the file to corelate with given project and it's configuration. E.g. `ef-car-app` 
    - Make sure to come up with a short name, as this is meant to be a shortcut
    - You can also name it `ef.cmd` for extra efficiency ⏩
4. Move it to desired directory. Recommended path: `C:\ef-cli-helper`
> Don't move it to a directory or path that meets one or both of the following conditions: \
> - The path contains special characters or spaces. \
> - The path requires elevated privileges. \

> As an example, `C:\Program Files` fails both conditions.

4. Add your chosen path (e.g. `C:\ef-cli-helper`) to `PATH` environment variables.

## Usage
Enter you project directory and run `ef <your entity framework parameters>`
Supported and tested commands:
- `ef migrations add`
- `ef migrations remove` 
- `ef migrations remove --force`
- `ef database update`
- `ef database update 0`
- `ef database update <previous-migration-name>`

And possibly more :)
