class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.master.vm':}
  dockeragent::node {'db.master.vm':}
}
