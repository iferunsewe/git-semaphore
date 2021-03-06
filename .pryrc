# this loads all of "git semaphore"
load "exe/git-semaphore" unless Kernel.const_defined? 'Git::Semaphore'

# utility function to set pry context
# to an instance of <Rugged::Repository>
def repository() pry Git::Semaphore.git_repo ; end

# utility function to set pry context
# to an instance of <Git::Semaphore::Project>
def project() pry Git::Semaphore::Project.from_repo(Git::Semaphore.git_repo) ; end
