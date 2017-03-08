require "./kute/*"
include Kute

check_dependencies
check_args

case ARGV[0]
when "help", "--help", "-h"
  help_text
when "cont", "con", "context"
  puts `kubectl config current-context`
when "cd"
  puts `kubectl config use-context #{ARGV[1]}`
when "go"
  unless ARGV.size == 3
    puts "Needs 2 args: namespace and container type"
    exit
  end
  namespace = ARGV[1]
  container_type = ARGV[2]
  podname = `kubectl get pods -n #{namespace} | grep -m 1 #{container_type} | awk '{print $1}'`.rstrip
  system("kubectl exec -ti #{podname} -n #{namespace} -c #{container_type} /bin/bash")
when "version", "--version", "-version"
  puts Kute::VERSION
else
  system("kubectl #{ARGV.join(" ")}")
end
