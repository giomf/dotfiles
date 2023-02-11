#! bash oh-my-bash.module

if [[ ! -f  "/tmp/ssh-agent.env" ]]; then
    ssh-agent > /tmp/ssh-agent.env
    source /tmp/ssh-agent.env >/dev/null
else 
    source /tmp/ssh-agent.env >/dev/null
fi
