class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'abraham':}
  dockeragent::node {'db':}
}
