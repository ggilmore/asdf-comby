let GitHubActions = (../imports.dhall).GitHubActions

let Setup = ../setup.dhall

let SetupSteps = Setup.SetupSteps

let Job = Setup.Job

in  Job::{
    , name = Some "asdf plugin test"
    , strategy = Some GitHubActions.Strategy::{
      , matrix = toMap { os = [ "ubuntu-latest", "macos-latest" ] }
      }
    , runs-on = GitHubActions.RunsOn.Type.`${{ matrix.os }}`
    , steps =
          SetupSteps
        # [ GitHubActions.Step::{
            , name = Some "asdf-plugin-test"
            , uses = Some "asdf-vm/actions/plugin-test@v1.0.0"
            , `with` = Some (toMap { command = "comby -help" })
            , env = Some
                (toMap { GITHUB_API_TOKEN = "\${{ secrets.GITHUB_TOKEN }}" })
            }
          ]
    }
