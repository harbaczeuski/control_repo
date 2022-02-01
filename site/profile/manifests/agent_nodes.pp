class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.abraham':}
  dockeragent::node {'db.abraham':}
}
