```
---
- Package:
    doc: "Implements a max-priority-queue over a binary heap singleton that must be\n locked for use.\n\n The heap is nominally a single `real array`."
    name: WurstRealHeapGuard
    classes:
      - doc: ~
        abstract_: true
        name: NodeChildrenAnyPred
        extends: ~
        implements: []
        fns:
          - doc: ~
            static_: false
            extensor: ~
            name: call
            params:
              - typ: int
                name: idx
            returns: bool
      - doc: ~
        abstract_: true
        name: NodeParentAndThen
        extends: ~
        implements: []
        fns:
          - doc: ~
            static_: false
            extensor: ~
            name: call
            params:
              - typ: int
                name: idx
            returns: bool
      - doc: ~
        abstract_: true
        name: WithRealHeapGuard<T>
        extends: ~
        implements: []
        fns:
          - doc: ~
            static_: false
            extensor: ~
            name: call
            params:
              - typ: RealHeapGuard<T>
                name: heap
            returns: ~
      - doc: ~
        abstract_: false
        name: RealHeapGuard<T>
        extends: ~
        implements: []
        fns:
          - doc: ~
            static_: false
            extensor: ~
            name: construct
            params:
              - typ: WithRealHeapGuard<T>
                name: callback
            returns: ~
          - doc: ~
            static_: false
            extensor: ~
            name: peek_weight
            params: []
            returns: maybe_real
          - doc: ~
            static_: false
            extensor: ~
            name: pop
            params: []
            returns: T
          - doc: ~
            static_: false
            extensor: ~
            name: is_empty
            params: []
            returns: bool
          - doc: ~
            static_: false
            extensor: ~
            name: push
            params:
              - typ: real
                name: weight
              - typ: T
                name: obj
            returns: ~
          - doc: ~
            static_: false
            extensor: ~
            name: print_raw
            params: []
            returns: ~
          - doc: ~
            static_: false
            extensor: ~
            name: ondestroy
            params: []
            returns: ~
          - doc: ~
            static_: false
            extensor: ~
            name: halfRealAsInts
            params: []
            returns: ~
          - doc: ~
            static_: false
            extensor: ~
            name: heapParentWorks
            params: []
            returns: ~
          - doc: ~
            static_: false
            extensor: ~
            name: heapChildrenWorks
            params: []
            returns: ~
          - doc: ~
            static_: false
            extensor: ~
            name: construct
            params:
              - typ: string
                name: name
            returns: ~
    enums: []
    free_fns:
      - doc: ~
        static_: false
        extensor: maybe_node_children
        name: any
        params:
          - typ: NodeChildrenAnyPred
            name: pred
        returns: bool
      - doc: ~
        static_: false
        extensor: maybe_node_children
        name: max_idx
        params: []
        returns: int
      - doc: ~
        static_: false
        extensor: maybe_node_parent
        name: and_then_heap_less_than_other_idx
        params:
          - typ: int
            name: other_idx
        returns: bool
    interfaces: []
```
