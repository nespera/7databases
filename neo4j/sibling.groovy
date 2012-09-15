Gremlin.defineStep('sibling',
  [Vertex, Pipe],
  {
    def start
    _().sideEffect{start = it}.in('parent_of').out('parent_of').filter{it.name != start.name}.dedup
  }
)

Gremlin.defineStep('sibling2',
  [Vertex, Pipe],
  {
    def start
    _().sideEffect{start = it}.in('parent_of').out('parent_of').except([start]).dedup
  }
)
