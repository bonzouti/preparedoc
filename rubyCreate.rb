def mkdiruby
    abort("Veuillez saisir un nom de projet.") if ARGV.empty?
    Dir.mkdir(ARGV.join(" "))
    Dir.mkdir("#{ARGV.join(" ")}/lib")
    readme = File.open("#{ARGV.join(" ")}/README.md", "w")
    gemfile = File.open("#{ARGV.join(" ")}/Gemfile", "w")
    env = File.open("#{ARGV.join(" ")}/.env", "w")
    gitignore = File.open("#{ARGV.join(" ")}/.gitignore", "w")
    readme.puts("# Project Title\nOne Paragraph of project description goes here\n## Getting Started\nThese instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.\n### Prerequisites\nWhat things you need to install the software and how to install them\n```\nGive examples\n```\n### Installing\nA step by step series of examples that tell you how to get a development env running\nSay what the step will be\n```\nGive the example\n```\nAnd repeat\n```\nuntil finished\n```\nEnd with an example of getting some data out of the system or using it for a little demo\n## Running the tests\nExplain how to run the automated tests for this system\n### Break down into end to end tests\nExplain what these tests test and why\n```\nGive an example\n```\n### And coding style tests\nExplain what these tests test and why\n```\nGive an example\n```\n## Deployment\nAdd additional notes about how to deploy this on a live system\n## Built With\n* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used\n* [Maven](https://maven.apache.org/) - Dependency Management\n* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds\n## Contributing\nPlease read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.\n## Versioning\nWe use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).\n## Authors\n* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)\nSee also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.\n## License\nThis project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details\n## Acknowledgments\n* Hat tip to anyone whose code was used\n* Inspiration\n* etc")
    gemfile.puts("source \"https://rubygems.org\"\nruby '2.5.1'\ngem 'rspec'\ngem 'pry'\ngem 'rubocop', '~> 0.57.2'\ngem 'dotenv'\ngem 'nokogiri'")
    gitignore.puts(".env")
    Dir.chdir("#{ARGV.join(" ")}") {
        system("rspec --init")
        system("bundle install")
    }
end

mkdiruby