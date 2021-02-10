let GitHubActions = (../imports.dhall).GitHubActions

let Setup = ../setup.dhall

let Job = Setup.Job

in  Job::{
    , name = Some "asdf plugin test"
    , strategy = Some GitHubActions.Strategy::{
      , matrix = toMap { os = [ "ubuntu-latest", "macos-latest" ] }
      }
    , runs-on = GitHubActions.RunsOn.Type.`${{ matrix.os }}`
    , steps =
          Setup.ASDFSteps
        # [ GitHubActions.Step::{
            , name = Some "asdf-plugin-test"
            , uses = Some "asdf-vm/actions/plugin-test@v1.0.0"
            , `with` = Some (toMap { command = "comby -version" })
            , env = Some
                (toMap { GITHUB_API_TOKEN = "\${{ secrets.GITHUB_TOKEN }}" })
            }
          ]
    }
