require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require './app'

namespace :docker do
  desc 'Start containers and services'
  task :start do
    sh 'docker-compose up -d'
  end

  desc 'Remove containers'
  task :rm do
    sh 'docker-compose rm -f'
  end

  desc 'Stop containers'
  task :stop do
    sh 'docker-compose kill'
  end

  desc 'Stop and remove containers'
  task :kill do
    Rake::Task['docker:stop'].invoke && Rake::Task['docker:rm'].invoke
  end

  desc 'Update docker images'
  task :update do
    sh 'docker-compose pull'
  end

  desc 'Run bash into the service'
  task :bash do
    @id = `docker ps -f "name=backend" --format "{{.ID}}"`
    sh "docker exec -it #{@id.strip} bash"
  end

  desc 'Run bash into the db'
  task :db do
    @id = `docker ps -f "name=db" --format "{{.ID}}"`
    sh "docker exec -it #{@id.strip} bash"
  end
end
