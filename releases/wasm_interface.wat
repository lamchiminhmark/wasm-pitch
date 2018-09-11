(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func))
  (type $t2 (func (param i32 i32 i32 i32)))
  (type $t3 (func (param i32 i32 i32 i32 i32 i32)))
  (type $t4 (func (param i32 i32 i32 i32 i32)))
  (type $t5 (func (param i32) (result i32)))
  (type $t6 (func (param i32)))
  (type $t7 (func (result i32)))
  (type $t8 (func (param i32 i32 i32)))
  (type $t9 (func (param i32 i32) (result i32)))
  (type $t10 (func (param i32 i32)))
  (type $t11 (func (param i32 i32 i32) (result f64)))
  (type $t12 (func (param i32 i32) (result f64)))
  (type $t13 (func (param i32 i32 f64)))
  (type $t14 (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "memory" (memory $env.memory 256 256))
  (import "env" "table" (table $env.table 41 41 anyfunc))
  (import "env" "tableBase" (global $env.tableBase i32))
  (import "env" "DYNAMICTOP_PTR" (global $env.DYNAMICTOP_PTR i32))
  (import "env" "STACKTOP" (global $env.STACKTOP i32))
  (import "env" "STACK_MAX" (global $env.STACK_MAX i32))
  (import "env" "enlargeMemory" (func $env.enlargeMemory (type $t7)))
  (import "env" "getTotalMemory" (func $env.getTotalMemory (type $t7)))
  (import "env" "abortOnCannotGrowMemory" (func $env.abortOnCannotGrowMemory (type $t7)))
  (import "env" "abortStackOverflow" (func $env.abortStackOverflow (type $t6)))
  (import "env" "nullFunc_ii" (func $env.nullFunc_ii (type $t6)))
  (import "env" "nullFunc_iiii" (func $env.nullFunc_iiii (type $t6)))
  (import "env" "nullFunc_v" (func $env.nullFunc_v (type $t6)))
  (import "env" "nullFunc_vi" (func $env.nullFunc_vi (type $t6)))
  (import "env" "nullFunc_viiii" (func $env.nullFunc_viiii (type $t6)))
  (import "env" "nullFunc_viiiii" (func $env.nullFunc_viiiii (type $t6)))
  (import "env" "nullFunc_viiiiii" (func $env.nullFunc_viiiiii (type $t6)))
  (import "env" "___cxa_allocate_exception" (func $env.___cxa_allocate_exception (type $t5)))
  (import "env" "___cxa_throw" (func $env.___cxa_throw (type $t8)))
  (import "env" "___lock" (func $env.___lock (type $t6)))
  (import "env" "___setErrNo" (func $env.___setErrNo (type $t6)))
  (import "env" "___syscall140" (func $env.___syscall140 (type $t9)))
  (import "env" "___syscall146" (func $env.___syscall146 (type $t9)))
  (import "env" "___syscall54" (func $env.___syscall54 (type $t9)))
  (import "env" "___syscall6" (func $env.___syscall6 (type $t9)))
  (import "env" "___unlock" (func $env.___unlock (type $t6)))
  (import "env" "_abort" (func $env._abort (type $t1)))
  (import "env" "_emscripten_memcpy_big" (func $env._emscripten_memcpy_big (type $t0)))
  (func $_free (type $t6) (param $p0 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    get_local $p0
    i32.eqz
    if $I0
      return
    end
    i32.const 1616
    i32.load
    set_local $l3
    get_local $p0
    i32.const -8
    i32.add
    tee_local $l1
    get_local $p0
    i32.const -4
    i32.add
    i32.load
    tee_local $l2
    i32.const -8
    i32.and
    tee_local $p0
    i32.add
    set_local $l4
    block $B1 (result i32)
      get_local $l2
      i32.const 1
      i32.and
      if $I2 (result i32)
        get_local $l1
      else
        get_local $l1
        i32.load
        set_local $l0
        get_local $l2
        i32.const 3
        i32.and
        i32.eqz
        if $I3
          return
        end
        get_local $l1
        get_local $l0
        i32.sub
        tee_local $l1
        get_local $l3
        i32.lt_u
        if $I4
          return
        end
        get_local $l0
        get_local $p0
        i32.add
        set_local $p0
        i32.const 1620
        i32.load
        get_local $l1
        i32.eq
        if $I5
          get_local $l1
          get_local $l4
          i32.const 4
          i32.add
          tee_local $l0
          i32.load
          tee_local $l2
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if $B1
          drop
          i32.const 1608
          get_local $p0
          i32.store
          get_local $l0
          get_local $l2
          i32.const -2
          i32.and
          i32.store
          get_local $l1
          get_local $p0
          i32.const 1
          i32.or
          i32.store offset=4
          get_local $l1
          get_local $p0
          i32.add
          get_local $p0
          i32.store
          return
        end
        get_local $l0
        i32.const 3
        i32.shr_u
        set_local $l3
        get_local $l0
        i32.const 256
        i32.lt_u
        if $I6
          get_local $l1
          i32.load offset=12
          tee_local $l0
          get_local $l1
          i32.load offset=8
          tee_local $l2
          i32.eq
          if $I7
            i32.const 1600
            i32.const 1600
            i32.load
            i32.const 1
            get_local $l3
            i32.shl
            i32.const -1
            i32.xor
            i32.and
            i32.store
          else
            get_local $l2
            get_local $l0
            i32.store offset=12
            get_local $l0
            get_local $l2
            i32.store offset=8
          end
          get_local $l1
          br $B1
        end
        get_local $l1
        i32.load offset=24
        set_local $l6
        block $B8
          get_local $l1
          i32.load offset=12
          tee_local $l0
          get_local $l1
          i32.eq
          if $I9
            get_local $l1
            i32.const 16
            i32.add
            tee_local $l2
            i32.const 4
            i32.add
            tee_local $l3
            i32.load
            tee_local $l0
            if $I10
              get_local $l3
              set_local $l2
            else
              get_local $l2
              i32.load
              tee_local $l0
              i32.eqz
              if $I11
                i32.const 0
                set_local $l0
                br $B8
              end
            end
            loop $L12
              block $B13
                get_local $l0
                i32.const 20
                i32.add
                tee_local $l3
                i32.load
                tee_local $l5
                i32.eqz
                if $I14
                  get_local $l0
                  i32.const 16
                  i32.add
                  tee_local $l3
                  i32.load
                  tee_local $l5
                  i32.eqz
                  br_if $B13
                end
                get_local $l3
                set_local $l2
                get_local $l5
                set_local $l0
                br $L12
              end
            end
            get_local $l2
            i32.const 0
            i32.store
          else
            get_local $l1
            i32.load offset=8
            tee_local $l2
            get_local $l0
            i32.store offset=12
            get_local $l0
            get_local $l2
            i32.store offset=8
          end
        end
        get_local $l6
        if $I15 (result i32)
          get_local $l1
          i32.load offset=28
          tee_local $l2
          i32.const 2
          i32.shl
          i32.const 1904
          i32.add
          tee_local $l3
          i32.load
          get_local $l1
          i32.eq
          if $I16
            get_local $l3
            get_local $l0
            i32.store
            get_local $l0
            i32.eqz
            if $I17
              i32.const 1604
              i32.const 1604
              i32.load
              i32.const 1
              get_local $l2
              i32.shl
              i32.const -1
              i32.xor
              i32.and
              i32.store
              get_local $l1
              br $B1
            end
          else
            get_local $l6
            i32.const 20
            i32.add
            set_local $l2
            get_local $l6
            i32.const 16
            i32.add
            tee_local $l3
            i32.load
            get_local $l1
            i32.eq
            if $I18 (result i32)
              get_local $l3
            else
              get_local $l2
            end
            get_local $l0
            i32.store
            get_local $l1
            get_local $l0
            i32.eqz
            br_if $B1
            drop
          end
          get_local $l0
          get_local $l6
          i32.store offset=24
          get_local $l1
          i32.const 16
          i32.add
          tee_local $l3
          i32.load
          tee_local $l2
          if $I19
            get_local $l0
            get_local $l2
            i32.store offset=16
            get_local $l2
            get_local $l0
            i32.store offset=24
          end
          get_local $l3
          i32.load offset=4
          tee_local $l2
          if $I20
            get_local $l0
            get_local $l2
            i32.store offset=20
            get_local $l2
            get_local $l0
            i32.store offset=24
          end
          get_local $l1
        else
          get_local $l1
        end
      end
    end
    tee_local $l6
    get_local $l4
    i32.ge_u
    if $I21
      return
    end
    get_local $l4
    i32.const 4
    i32.add
    tee_local $l2
    i32.load
    tee_local $l0
    i32.const 1
    i32.and
    i32.eqz
    if $I22
      return
    end
    get_local $l0
    i32.const 2
    i32.and
    if $I23
      get_local $l2
      get_local $l0
      i32.const -2
      i32.and
      i32.store
      get_local $l1
      get_local $p0
      i32.const 1
      i32.or
      i32.store offset=4
      get_local $l6
      get_local $p0
      i32.add
      get_local $p0
      i32.store
      get_local $p0
      set_local $l2
    else
      i32.const 1624
      i32.load
      get_local $l4
      i32.eq
      if $I24
        i32.const 1612
        i32.const 1612
        i32.load
        get_local $p0
        i32.add
        tee_local $p0
        i32.store
        i32.const 1624
        get_local $l1
        i32.store
        get_local $l1
        get_local $p0
        i32.const 1
        i32.or
        i32.store offset=4
        get_local $l1
        i32.const 1620
        i32.load
        i32.ne
        if $I25
          return
        end
        i32.const 1620
        i32.const 0
        i32.store
        i32.const 1608
        i32.const 0
        i32.store
        return
      end
      i32.const 1620
      i32.load
      get_local $l4
      i32.eq
      if $I26
        i32.const 1608
        i32.const 1608
        i32.load
        get_local $p0
        i32.add
        tee_local $p0
        i32.store
        i32.const 1620
        get_local $l6
        i32.store
        get_local $l1
        get_local $p0
        i32.const 1
        i32.or
        i32.store offset=4
        get_local $l6
        get_local $p0
        i32.add
        get_local $p0
        i32.store
        return
      end
      get_local $l0
      i32.const -8
      i32.and
      get_local $p0
      i32.add
      set_local $l2
      get_local $l0
      i32.const 3
      i32.shr_u
      set_local $l3
      block $B27
        get_local $l0
        i32.const 256
        i32.lt_u
        if $I28
          get_local $l4
          i32.load offset=12
          tee_local $p0
          get_local $l4
          i32.load offset=8
          tee_local $l0
          i32.eq
          if $I29
            i32.const 1600
            i32.const 1600
            i32.load
            i32.const 1
            get_local $l3
            i32.shl
            i32.const -1
            i32.xor
            i32.and
            i32.store
          else
            get_local $l0
            get_local $p0
            i32.store offset=12
            get_local $p0
            get_local $l0
            i32.store offset=8
          end
        else
          get_local $l4
          i32.load offset=24
          set_local $l7
          block $B30
            get_local $l4
            i32.load offset=12
            tee_local $p0
            get_local $l4
            i32.eq
            if $I31
              get_local $l4
              i32.const 16
              i32.add
              tee_local $l0
              i32.const 4
              i32.add
              tee_local $l3
              i32.load
              tee_local $p0
              if $I32
                get_local $l3
                set_local $l0
              else
                get_local $l0
                i32.load
                tee_local $p0
                i32.eqz
                if $I33
                  i32.const 0
                  set_local $p0
                  br $B30
                end
              end
              loop $L34
                block $B35
                  get_local $p0
                  i32.const 20
                  i32.add
                  tee_local $l3
                  i32.load
                  tee_local $l5
                  i32.eqz
                  if $I36
                    get_local $p0
                    i32.const 16
                    i32.add
                    tee_local $l3
                    i32.load
                    tee_local $l5
                    i32.eqz
                    br_if $B35
                  end
                  get_local $l3
                  set_local $l0
                  get_local $l5
                  set_local $p0
                  br $L34
                end
              end
              get_local $l0
              i32.const 0
              i32.store
            else
              get_local $l4
              i32.load offset=8
              tee_local $l0
              get_local $p0
              i32.store offset=12
              get_local $p0
              get_local $l0
              i32.store offset=8
            end
          end
          get_local $l7
          if $I37
            get_local $l4
            i32.load offset=28
            tee_local $l0
            i32.const 2
            i32.shl
            i32.const 1904
            i32.add
            tee_local $l3
            i32.load
            get_local $l4
            i32.eq
            if $I38
              get_local $l3
              get_local $p0
              i32.store
              get_local $p0
              i32.eqz
              if $I39
                i32.const 1604
                i32.const 1604
                i32.load
                i32.const 1
                get_local $l0
                i32.shl
                i32.const -1
                i32.xor
                i32.and
                i32.store
                br $B27
              end
            else
              get_local $l7
              i32.const 20
              i32.add
              set_local $l0
              get_local $l7
              i32.const 16
              i32.add
              tee_local $l3
              i32.load
              get_local $l4
              i32.eq
              if $I40 (result i32)
                get_local $l3
              else
                get_local $l0
              end
              get_local $p0
              i32.store
              get_local $p0
              i32.eqz
              br_if $B27
            end
            get_local $p0
            get_local $l7
            i32.store offset=24
            get_local $l4
            i32.const 16
            i32.add
            tee_local $l3
            i32.load
            tee_local $l0
            if $I41
              get_local $p0
              get_local $l0
              i32.store offset=16
              get_local $l0
              get_local $p0
              i32.store offset=24
            end
            get_local $l3
            i32.load offset=4
            tee_local $l0
            if $I42
              get_local $p0
              get_local $l0
              i32.store offset=20
              get_local $l0
              get_local $p0
              i32.store offset=24
            end
          end
        end
      end
      get_local $l1
      get_local $l2
      i32.const 1
      i32.or
      i32.store offset=4
      get_local $l6
      get_local $l2
      i32.add
      get_local $l2
      i32.store
      get_local $l1
      i32.const 1620
      i32.load
      i32.eq
      if $I43
        i32.const 1608
        get_local $l2
        i32.store
        return
      end
    end
    get_local $l2
    i32.const 3
    i32.shr_u
    set_local $l0
    get_local $l2
    i32.const 256
    i32.lt_u
    if $I44
      get_local $l0
      i32.const 3
      i32.shl
      i32.const 1640
      i32.add
      set_local $p0
      i32.const 1600
      i32.load
      tee_local $l2
      i32.const 1
      get_local $l0
      i32.shl
      tee_local $l0
      i32.and
      if $I45 (result i32)
        get_local $p0
        i32.const 8
        i32.add
        tee_local $l2
        i32.load
      else
        i32.const 1600
        get_local $l2
        get_local $l0
        i32.or
        i32.store
        get_local $p0
        i32.const 8
        i32.add
        set_local $l2
        get_local $p0
      end
      set_local $l0
      get_local $l2
      get_local $l1
      i32.store
      get_local $l0
      get_local $l1
      i32.store offset=12
      get_local $l1
      get_local $l0
      i32.store offset=8
      get_local $l1
      get_local $p0
      i32.store offset=12
      return
    end
    get_local $l2
    i32.const 8
    i32.shr_u
    tee_local $p0
    if $I46 (result i32)
      get_local $l2
      i32.const 16777215
      i32.gt_u
      if $I47 (result i32)
        i32.const 31
      else
        get_local $l2
        i32.const 14
        get_local $p0
        get_local $p0
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        tee_local $p0
        i32.shl
        tee_local $l0
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        tee_local $l3
        get_local $p0
        i32.or
        get_local $l0
        get_local $l3
        i32.shl
        tee_local $p0
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        tee_local $l0
        i32.or
        i32.sub
        get_local $p0
        get_local $l0
        i32.shl
        i32.const 15
        i32.shr_u
        i32.add
        tee_local $p0
        i32.const 7
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        get_local $p0
        i32.const 1
        i32.shl
        i32.or
      end
    else
      i32.const 0
    end
    tee_local $l0
    i32.const 2
    i32.shl
    i32.const 1904
    i32.add
    set_local $p0
    get_local $l1
    get_local $l0
    i32.store offset=28
    get_local $l1
    i32.const 0
    i32.store offset=20
    get_local $l1
    i32.const 0
    i32.store offset=16
    block $B48
      i32.const 1604
      i32.load
      tee_local $l3
      i32.const 1
      get_local $l0
      i32.shl
      tee_local $l5
      i32.and
      if $I49
        block $B50
          get_local $p0
          i32.load
          tee_local $p0
          i32.load offset=4
          i32.const -8
          i32.and
          get_local $l2
          i32.eq
          if $I51 (result i32)
            get_local $p0
          else
            i32.const 25
            get_local $l0
            i32.const 1
            i32.shr_u
            i32.sub
            set_local $l3
            get_local $l2
            get_local $l0
            i32.const 31
            i32.eq
            if $I52 (result i32)
              i32.const 0
            else
              get_local $l3
            end
            i32.shl
            set_local $l3
            loop $L53
              get_local $p0
              i32.const 16
              i32.add
              get_local $l3
              i32.const 31
              i32.shr_u
              i32.const 2
              i32.shl
              i32.add
              tee_local $l5
              i32.load
              tee_local $l0
              if $I54
                get_local $l3
                i32.const 1
                i32.shl
                set_local $l3
                get_local $l0
                i32.load offset=4
                i32.const -8
                i32.and
                get_local $l2
                i32.eq
                br_if $B50
                get_local $l0
                set_local $p0
                br $L53
              end
            end
            get_local $l5
            get_local $l1
            i32.store
            get_local $l1
            get_local $p0
            i32.store offset=24
            get_local $l1
            get_local $l1
            i32.store offset=12
            get_local $l1
            get_local $l1
            i32.store offset=8
            br $B48
          end
          set_local $l0
        end
        get_local $l0
        i32.const 8
        i32.add
        tee_local $p0
        i32.load
        tee_local $l2
        get_local $l1
        i32.store offset=12
        get_local $p0
        get_local $l1
        i32.store
        get_local $l1
        get_local $l2
        i32.store offset=8
        get_local $l1
        get_local $l0
        i32.store offset=12
        get_local $l1
        i32.const 0
        i32.store offset=24
      else
        i32.const 1604
        get_local $l3
        get_local $l5
        i32.or
        i32.store
        get_local $p0
        get_local $l1
        i32.store
        get_local $l1
        get_local $p0
        i32.store offset=24
        get_local $l1
        get_local $l1
        i32.store offset=12
        get_local $l1
        get_local $l1
        i32.store offset=8
      end
    end
    i32.const 1632
    i32.const 1632
    i32.load
    i32.const -1
    i32.add
    tee_local $p0
    i32.store
    get_local $p0
    if $I55
      return
    end
    i32.const 2056
    set_local $p0
    loop $L56
      get_local $p0
      i32.load
      tee_local $l1
      i32.const 8
      i32.add
      set_local $p0
      get_local $l1
      br_if $L56
    end
    i32.const 1632
    i32.const -1
    i32.store)
  (func $f23 (type $t6) (param $p0 i32)
    i32.const 3
    call $env.nullFunc_vi)
  (func $_sbrk (type $t5) (param $p0 i32) (result i32)
    (local $l0 i32)
    get_local $p0
    i32.const 0
    i32.gt_s
    get_global $g4
    i32.load
    tee_local $l0
    get_local $p0
    i32.add
    tee_local $p0
    get_local $l0
    i32.lt_s
    i32.and
    get_local $p0
    i32.const 0
    i32.lt_s
    i32.or
    if $I0
      call $env.abortOnCannotGrowMemory
      drop
      i32.const 12
      call $env.___setErrNo
      i32.const -1
      return
    end
    get_global $g4
    get_local $p0
    i32.store
    get_local $p0
    call $env.getTotalMemory
    i32.gt_s
    if $I1
      call $env.enlargeMemory
      i32.eqz
      if $I2
        get_global $g4
        get_local $l0
        i32.store
        i32.const 12
        call $env.___setErrNo
        i32.const -1
        return
      end
    end
    get_local $l0)
  (func $f25 (type $t5) (param $p0 i32) (result i32)
    (local $l0 i32)
    get_local $p0
    i32.eqz
    if $I0
      i32.const 1
      set_local $p0
    end
    loop $L1 (result i32)
      block $B2 (result i32)
        get_local $p0
        call $_malloc
        tee_local $l0
        if $I3
          get_local $l0
          br $B2
        end
        block $B4 (result i32)
          i32.const 2112
          i32.const 2112
          i32.load
          tee_local $l0
          i32.store
          get_local $l0
        end
        if $I5 (result i32)
          i32.const 12
          call_indirect (type $t1)
          br $L1
        else
          i32.const 0
        end
      end
    end)
  (func $f26 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    i32.const 1
    call $env.nullFunc_iiii
    i32.const 0)
  (func $f27 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    get_local $p2
    i32.const 8192
    i32.ge_s
    if $I0
      get_local $p0
      get_local $p1
      get_local $p2
      call $env._emscripten_memcpy_big
      return
    end
    get_local $p0
    set_local $l1
    get_local $p0
    get_local $p2
    i32.add
    set_local $l0
    get_local $p0
    i32.const 3
    i32.and
    get_local $p1
    i32.const 3
    i32.and
    i32.eq
    if $I1
      loop $L2
        get_local $p0
        i32.const 3
        i32.and
        if $I3
          get_local $p2
          i32.eqz
          if $I4
            get_local $l1
            return
          end
          get_local $p0
          get_local $p1
          i32.load8_s
          i32.store8
          get_local $p0
          i32.const 1
          i32.add
          set_local $p0
          get_local $p1
          i32.const 1
          i32.add
          set_local $p1
          get_local $p2
          i32.const 1
          i32.sub
          set_local $p2
          br $L2
        end
      end
      get_local $l0
      i32.const -4
      i32.and
      tee_local $p2
      i32.const -64
      i32.add
      set_local $l2
      loop $L5
        get_local $p0
        get_local $l2
        i32.le_s
        if $I6
          get_local $p0
          get_local $p1
          i32.load
          i32.store
          get_local $p0
          get_local $p1
          i32.load offset=4
          i32.store offset=4
          get_local $p0
          get_local $p1
          i32.load offset=8
          i32.store offset=8
          get_local $p0
          get_local $p1
          i32.load offset=12
          i32.store offset=12
          get_local $p0
          get_local $p1
          i32.load offset=16
          i32.store offset=16
          get_local $p0
          get_local $p1
          i32.load offset=20
          i32.store offset=20
          get_local $p0
          get_local $p1
          i32.load offset=24
          i32.store offset=24
          get_local $p0
          get_local $p1
          i32.load offset=28
          i32.store offset=28
          get_local $p0
          get_local $p1
          i32.load offset=32
          i32.store offset=32
          get_local $p0
          get_local $p1
          i32.load offset=36
          i32.store offset=36
          get_local $p0
          get_local $p1
          i32.load offset=40
          i32.store offset=40
          get_local $p0
          get_local $p1
          i32.load offset=44
          i32.store offset=44
          get_local $p0
          get_local $p1
          i32.load offset=48
          i32.store offset=48
          get_local $p0
          get_local $p1
          i32.load offset=52
          i32.store offset=52
          get_local $p0
          get_local $p1
          i32.load offset=56
          i32.store offset=56
          get_local $p0
          get_local $p1
          i32.load offset=60
          i32.store offset=60
          get_local $p0
          i32.const -64
          i32.sub
          set_local $p0
          get_local $p1
          i32.const -64
          i32.sub
          set_local $p1
          br $L5
        end
      end
      loop $L7
        get_local $p0
        get_local $p2
        i32.lt_s
        if $I8
          get_local $p0
          get_local $p1
          i32.load
          i32.store
          get_local $p0
          i32.const 4
          i32.add
          set_local $p0
          get_local $p1
          i32.const 4
          i32.add
          set_local $p1
          br $L7
        end
      end
    else
      get_local $l0
      i32.const 4
      i32.sub
      set_local $p2
      loop $L9
        get_local $p0
        get_local $p2
        i32.lt_s
        if $I10
          get_local $p0
          get_local $p1
          i32.load8_s
          i32.store8
          get_local $p0
          get_local $p1
          i32.load8_s offset=1
          i32.store8 offset=1
          get_local $p0
          get_local $p1
          i32.load8_s offset=2
          i32.store8 offset=2
          get_local $p0
          get_local $p1
          i32.load8_s offset=3
          i32.store8 offset=3
          get_local $p0
          i32.const 4
          i32.add
          set_local $p0
          get_local $p1
          i32.const 4
          i32.add
          set_local $p1
          br $L9
        end
      end
    end
    loop $L11
      get_local $p0
      get_local $l0
      i32.lt_s
      if $I12
        get_local $p0
        get_local $p1
        i32.load8_s
        i32.store8
        get_local $p0
        i32.const 1
        i32.add
        set_local $p0
        get_local $p1
        i32.const 1
        i32.add
        set_local $p1
        br $L11
      end
    end
    get_local $l1)
  (func $f28 (type $t6) (param $p0 i32)
    nop)
  (func $f29 (type $t10) (param $p0 i32) (param $p1 i32)
    get_local $p0
    i32.const 1336
    i32.store
    get_local $p0
    i32.const 4
    i32.add
    get_local $p1
    call $f65)
  (func $f30 (type $t5) (param $p0 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    block $B0 (result i32)
      block $B1
        get_local $p0
        i32.const 20
        i32.add
        tee_local $l0
        i32.load
        get_local $p0
        i32.const 28
        i32.add
        tee_local $l1
        i32.load
        i32.le_u
        br_if $B1
        get_local $p0
        i32.const 0
        i32.const 0
        get_local $p0
        i32.load offset=36
        i32.const 7
        i32.and
        i32.const 4
        i32.add
        call_indirect (type $t0)
        drop
        get_local $l0
        i32.load
        br_if $B1
        i32.const -1
        br $B0
      end
      get_local $p0
      i32.const 4
      i32.add
      tee_local $l2
      i32.load
      tee_local $l3
      get_local $p0
      i32.const 8
      i32.add
      tee_local $l4
      i32.load
      tee_local $l5
      i32.lt_u
      if $I2
        get_local $p0
        get_local $l3
        get_local $l5
        i32.sub
        i32.const 1
        get_local $p0
        i32.load offset=40
        i32.const 7
        i32.and
        i32.const 4
        i32.add
        call_indirect (type $t0)
        drop
      end
      get_local $p0
      i32.const 0
      i32.store offset=16
      get_local $l1
      i32.const 0
      i32.store
      get_local $l0
      i32.const 0
      i32.store
      get_local $l4
      i32.const 0
      i32.store
      get_local $l2
      i32.const 0
      i32.store
      i32.const 0
    end
    tee_local $p0)
  (func $f31 (type $t10) (param $p0 i32) (param $p1 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    get_local $p0
    i32.const 4
    i32.add
    tee_local $l5
    i32.load
    get_local $p0
    i32.load
    tee_local $l2
    i32.sub
    tee_local $l4
    i32.const 3
    i32.shr_s
    tee_local $l6
    i32.const 1
    i32.add
    tee_local $l1
    i32.const 536870911
    i32.gt_u
    if $I0
      call $env._abort
    end
    get_local $p0
    i32.const 8
    i32.add
    tee_local $l7
    i32.load
    get_local $l2
    i32.sub
    tee_local $l0
    i32.const 3
    i32.shr_s
    i32.const 268435455
    i32.lt_u
    set_local $l8
    get_local $l0
    i32.const 2
    i32.shr_s
    tee_local $l0
    get_local $l1
    i32.ge_u
    if $I1
      get_local $l0
      set_local $l1
    end
    get_local $l8
    if $I2 (result i32)
      get_local $l1
    else
      i32.const 536870911
      tee_local $l1
    end
    if $I3
      get_local $l1
      i32.const 536870911
      i32.gt_u
      if $I4
        i32.const 8
        call $env.___cxa_allocate_exception
        tee_local $l0
        i32.const 1368
        call $f29
        get_local $l0
        i32.const 1356
        i32.store
        get_local $l0
        i32.const 1104
        i32.const 6
        call $env.___cxa_throw
      else
        get_local $l1
        i32.const 3
        i32.shl
        call $f25
        tee_local $l9
        set_local $l3
      end
    end
    get_local $l3
    get_local $l6
    i32.const 3
    i32.shl
    i32.add
    tee_local $l0
    get_local $p1
    f64.load
    f64.store
    get_local $l4
    i32.const 0
    i32.gt_s
    if $I5
      get_local $l9
      get_local $l2
      get_local $l4
      call $f27
      drop
    end
    get_local $p0
    get_local $l3
    i32.store
    get_local $l5
    get_local $l0
    i32.const 8
    i32.add
    i32.store
    get_local $l7
    get_local $l3
    get_local $l1
    i32.const 3
    i32.shl
    i32.add
    i32.store
    get_local $l2
    i32.eqz
    if $I6
      return
    end
    get_local $l2
    call $_free)
  (func $f32 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    i32.const 6
    call $env.nullFunc_viiiiii)
  (func $f33 (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    i32.const 5
    call $env.nullFunc_viiiii)
  (func $f34 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    i32.const 4
    call $env.nullFunc_viiii)
  (func $f35 (type $t5) (param $p0 i32) (result i32)
    i32.const 0
    call $env.nullFunc_ii
    i32.const 0)
  (func $f36 (type $t6) (param $p0 i32)
    get_local $p0
    call $f37
    get_local $p0
    call $_free)
  (func $f37 (type $t6) (param $p0 i32)
    get_local $p0
    i32.const 1336
    i32.store
    get_local $p0
    i32.const 4
    i32.add
    call $f53)
  (func $f38 (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    get_local $p1
    i32.const 1
    i32.store8 offset=53
    block $B0
      get_local $p1
      i32.load offset=4
      get_local $p3
      i32.eq
      if $I1
        get_local $p1
        i32.const 1
        i32.store8 offset=52
        get_local $p1
        i32.const 16
        i32.add
        tee_local $p0
        i32.load
        tee_local $p3
        i32.eqz
        if $I2
          get_local $p0
          get_local $p2
          i32.store
          get_local $p1
          get_local $p4
          i32.store offset=24
          get_local $p1
          i32.const 1
          i32.store offset=36
          get_local $p4
          i32.const 1
          i32.eq
          get_local $p1
          i32.load offset=48
          i32.const 1
          i32.eq
          i32.and
          i32.eqz
          br_if $B0
          get_local $p1
          i32.const 1
          i32.store8 offset=54
          br $B0
        end
        get_local $p3
        get_local $p2
        i32.ne
        if $I3
          get_local $p1
          i32.const 36
          i32.add
          tee_local $p0
          get_local $p0
          i32.load
          i32.const 1
          i32.add
          i32.store
          get_local $p1
          i32.const 1
          i32.store8 offset=54
          br $B0
        end
        get_local $p1
        i32.const 24
        i32.add
        tee_local $p2
        i32.load
        tee_local $p0
        i32.const 2
        i32.eq
        if $I4
          get_local $p2
          get_local $p4
          i32.store
        else
          get_local $p0
          set_local $p4
        end
        get_local $p1
        i32.load offset=48
        i32.const 1
        i32.eq
        get_local $p4
        i32.const 1
        i32.eq
        i32.and
        if $I5
          get_local $p1
          i32.const 1
          i32.store8 offset=54
        end
      end
    end)
  (func $f39 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l0 i32)
    block $B0
      get_local $p1
      i32.const 16
      i32.add
      tee_local $p0
      i32.load
      tee_local $l0
      if $I1
        get_local $l0
        get_local $p2
        i32.ne
        if $I2
          get_local $p1
          i32.const 36
          i32.add
          tee_local $p0
          get_local $p0
          i32.load
          i32.const 1
          i32.add
          i32.store
          get_local $p1
          i32.const 2
          i32.store offset=24
          get_local $p1
          i32.const 1
          i32.store8 offset=54
          br $B0
        end
        get_local $p1
        i32.const 24
        i32.add
        tee_local $p0
        i32.load
        i32.const 2
        i32.eq
        if $I3
          get_local $p0
          get_local $p3
          i32.store
        end
      else
        get_local $p0
        get_local $p2
        i32.store
        get_local $p1
        get_local $p3
        i32.store offset=24
        get_local $p1
        i32.const 1
        i32.store offset=36
      end
    end)
  (func $f40 (type $t6) (param $p0 i32)
    get_local $p0
    call $_free)
  (func $_fflush (type $t5) (param $p0 i32) (result i32)
    (local $l0 i32) (local $l1 i32)
    block $B0
      get_local $p0
      if $I1
        get_local $p0
        i32.load offset=76
        i32.const -1
        i32.le_s
        if $I2
          get_local $p0
          call $f30
          set_local $p0
          br $B0
        end
        get_local $p0
        call $f30
        tee_local $l0
        set_local $p0
      else
        i32.const 1244
        i32.load
        if $I3 (result i32)
          i32.const 1244
          i32.load
          call $_fflush
        else
          i32.const 0
        end
        set_local $p0
        block $B4 (result i32)
          i32.const 2100
          call $env.___lock
          i32.const 2108
          i32.load
          tee_local $l0
        end
        if $I5
          loop $L6
            get_local $l0
            i32.load offset=76
            drop
            get_local $l0
            i32.load offset=20
            get_local $l0
            i32.load offset=28
            i32.gt_u
            if $I7
              get_local $l0
              call $f30
              get_local $p0
              i32.or
              set_local $p0
            end
            get_local $l0
            i32.load offset=56
            tee_local $l0
            br_if $L6
          end
        end
        i32.const 2100
        call $env.___unlock
      end
    end
    get_local $p0)
  (func $f42 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    get_global $g5
    set_local $l2
    get_global $g5
    i32.const 48
    i32.add
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      i32.const 48
      call $env.abortStackOverflow
    end
    get_local $l2
    i32.const 16
    i32.add
    set_local $l4
    get_local $l2
    i32.const 32
    i32.add
    tee_local $l0
    get_local $p0
    i32.const 28
    i32.add
    tee_local $l6
    i32.load
    tee_local $l3
    i32.store
    get_local $l0
    get_local $p0
    i32.const 20
    i32.add
    tee_local $l7
    i32.load
    get_local $l3
    i32.sub
    tee_local $l3
    i32.store offset=4
    get_local $l0
    get_local $p1
    i32.store offset=8
    get_local $l0
    get_local $p2
    i32.store offset=12
    get_local $l2
    get_local $p0
    i32.const 60
    i32.add
    tee_local $l9
    i32.load
    i32.store
    get_local $l2
    get_local $l0
    i32.store offset=4
    get_local $l2
    i32.const 2
    i32.store offset=8
    block $B1
      block $B2
        get_local $l3
        get_local $p2
        i32.add
        tee_local $l3
        i32.const 146
        get_local $l2
        call $env.___syscall146
        tee_local $l1
        i32.const -4096
        i32.gt_u
        if $I3 (result i32)
          i32.const 2096
          i32.const 0
          get_local $l1
          i32.sub
          i32.store
          i32.const -1
          tee_local $l1
        else
          get_local $l1
        end
        i32.eq
        br_if $B2
        i32.const 2
        set_local $l5
        get_local $l0
        set_local $p1
        get_local $l1
        set_local $l0
        loop $L4
          get_local $l0
          i32.const 0
          i32.ge_s
          if $I5
            get_local $l3
            get_local $l0
            i32.sub
            set_local $l3
            get_local $p1
            i32.const 8
            i32.add
            set_local $l1
            get_local $l0
            get_local $p1
            i32.load offset=4
            tee_local $l10
            i32.gt_u
            tee_local $l8
            if $I6
              get_local $l1
              set_local $p1
            end
            get_local $l5
            get_local $l8
            i32.const 31
            i32.shl
            i32.const 31
            i32.shr_s
            i32.add
            set_local $l5
            get_local $p1
            get_local $p1
            i32.load
            get_local $l0
            get_local $l8
            if $I7 (result i32)
              get_local $l10
            else
              i32.const 0
            end
            i32.sub
            tee_local $l0
            i32.add
            i32.store
            get_local $p1
            i32.const 4
            i32.add
            tee_local $l1
            get_local $l1
            i32.load
            get_local $l0
            i32.sub
            i32.store
            get_local $l4
            get_local $l9
            i32.load
            i32.store
            get_local $l4
            get_local $p1
            i32.store offset=4
            get_local $l4
            get_local $l5
            i32.store offset=8
            get_local $l3
            i32.const 146
            get_local $l4
            call $env.___syscall146
            tee_local $l0
            i32.const -4096
            i32.gt_u
            if $I8 (result i32)
              i32.const 2096
              i32.const 0
              get_local $l0
              i32.sub
              i32.store
              i32.const -1
              tee_local $l0
            else
              get_local $l0
            end
            i32.eq
            br_if $B2
            br $L4
          end
        end
        get_local $p0
        i32.const 0
        i32.store offset=16
        get_local $l6
        i32.const 0
        i32.store
        get_local $l7
        i32.const 0
        i32.store
        get_local $p0
        get_local $p0
        i32.load
        i32.const 32
        i32.or
        i32.store
        get_local $l5
        i32.const 2
        i32.eq
        if $I9 (result i32)
          i32.const 0
        else
          get_local $p2
          get_local $p1
          i32.load offset=4
          i32.sub
        end
        set_local $p2
        br $B1
      end
      get_local $p0
      get_local $p0
      i32.load offset=44
      tee_local $p1
      get_local $p0
      i32.load offset=48
      i32.add
      i32.store offset=16
      get_local $l6
      get_local $p1
      i32.store
      get_local $l7
      get_local $p1
      i32.store
    end
    get_local $l2
    set_global $g5
    get_local $p2)
  (func $_malloc (type $t5) (param $p0 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    block $B0
      block $B1
        block $B2
          get_global $g5
          set_local $l0
          get_global $g5
          i32.const 16
          i32.add
          set_global $g5
          get_global $g5
          get_global $g6
          i32.ge_s
          if $I3
            i32.const 16
            call $env.abortStackOverflow
          end
          get_local $l0
          set_local $l9
          block $B4
            get_local $p0
            i32.const 245
            i32.lt_u
            if $I5
              get_local $p0
              i32.const 11
              i32.add
              i32.const -8
              i32.and
              set_local $l0
              i32.const 1600
              i32.load
              tee_local $l5
              get_local $p0
              i32.const 11
              i32.lt_u
              if $I6 (result i32)
                i32.const 16
              else
                get_local $l0
              end
              tee_local $p0
              i32.const 3
              i32.shr_u
              tee_local $l0
              i32.shr_u
              tee_local $l1
              i32.const 3
              i32.and
              if $I7
                get_local $l1
                i32.const 1
                i32.and
                i32.const 1
                i32.xor
                get_local $l0
                i32.add
                tee_local $p0
                i32.const 3
                i32.shl
                i32.const 1640
                i32.add
                tee_local $l0
                i32.const 8
                i32.add
                tee_local $l3
                i32.load
                tee_local $l1
                i32.const 8
                i32.add
                tee_local $l4
                i32.load
                tee_local $l2
                get_local $l0
                i32.eq
                if $I8
                  i32.const 1600
                  get_local $l5
                  i32.const 1
                  get_local $p0
                  i32.shl
                  i32.const -1
                  i32.xor
                  i32.and
                  i32.store
                else
                  get_local $l2
                  get_local $l0
                  i32.store offset=12
                  get_local $l3
                  get_local $l2
                  i32.store
                end
                get_local $l1
                get_local $p0
                i32.const 3
                i32.shl
                tee_local $p0
                i32.const 3
                i32.or
                i32.store offset=4
                get_local $l1
                get_local $p0
                i32.add
                i32.const 4
                i32.add
                tee_local $p0
                get_local $p0
                i32.load
                i32.const 1
                i32.or
                i32.store
                get_local $l9
                set_global $g5
                get_local $l4
                return
              end
              get_local $p0
              i32.const 1608
              i32.load
              tee_local $l6
              i32.gt_u
              if $I9
                get_local $l1
                if $I10
                  get_local $l1
                  get_local $l0
                  i32.shl
                  i32.const 2
                  get_local $l0
                  i32.shl
                  tee_local $l0
                  i32.const 0
                  get_local $l0
                  i32.sub
                  i32.or
                  i32.and
                  tee_local $l0
                  i32.const 0
                  get_local $l0
                  i32.sub
                  i32.and
                  i32.const -1
                  i32.add
                  tee_local $l1
                  i32.const 12
                  i32.shr_u
                  i32.const 16
                  i32.and
                  set_local $l0
                  get_local $l1
                  get_local $l0
                  i32.shr_u
                  tee_local $l1
                  i32.const 5
                  i32.shr_u
                  i32.const 8
                  i32.and
                  tee_local $l2
                  get_local $l0
                  i32.or
                  get_local $l1
                  get_local $l2
                  i32.shr_u
                  tee_local $l0
                  i32.const 2
                  i32.shr_u
                  i32.const 4
                  i32.and
                  tee_local $l1
                  i32.or
                  get_local $l0
                  get_local $l1
                  i32.shr_u
                  tee_local $l0
                  i32.const 1
                  i32.shr_u
                  i32.const 2
                  i32.and
                  tee_local $l1
                  i32.or
                  get_local $l0
                  get_local $l1
                  i32.shr_u
                  tee_local $l0
                  i32.const 1
                  i32.shr_u
                  i32.const 1
                  i32.and
                  tee_local $l1
                  i32.or
                  get_local $l0
                  get_local $l1
                  i32.shr_u
                  i32.add
                  tee_local $l2
                  i32.const 3
                  i32.shl
                  i32.const 1640
                  i32.add
                  tee_local $l0
                  i32.const 8
                  i32.add
                  tee_local $l4
                  i32.load
                  tee_local $l1
                  i32.const 8
                  i32.add
                  tee_local $l7
                  i32.load
                  tee_local $l3
                  get_local $l0
                  i32.eq
                  if $I11
                    i32.const 1600
                    get_local $l5
                    i32.const 1
                    get_local $l2
                    i32.shl
                    i32.const -1
                    i32.xor
                    i32.and
                    tee_local $l0
                    i32.store
                  else
                    get_local $l3
                    get_local $l0
                    i32.store offset=12
                    get_local $l4
                    get_local $l3
                    i32.store
                    get_local $l5
                    set_local $l0
                  end
                  get_local $l1
                  get_local $p0
                  i32.const 3
                  i32.or
                  i32.store offset=4
                  get_local $l1
                  get_local $p0
                  i32.add
                  tee_local $l5
                  get_local $l2
                  i32.const 3
                  i32.shl
                  tee_local $l2
                  get_local $p0
                  i32.sub
                  tee_local $l3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  get_local $l1
                  get_local $l2
                  i32.add
                  get_local $l3
                  i32.store
                  get_local $l6
                  if $I12
                    i32.const 1620
                    i32.load
                    set_local $l2
                    get_local $l6
                    i32.const 3
                    i32.shr_u
                    tee_local $l1
                    i32.const 3
                    i32.shl
                    i32.const 1640
                    i32.add
                    set_local $p0
                    get_local $l0
                    i32.const 1
                    get_local $l1
                    i32.shl
                    tee_local $l1
                    i32.and
                    if $I13 (result i32)
                      get_local $p0
                      i32.const 8
                      i32.add
                      tee_local $l1
                      i32.load
                    else
                      i32.const 1600
                      get_local $l0
                      get_local $l1
                      i32.or
                      i32.store
                      get_local $p0
                      i32.const 8
                      i32.add
                      set_local $l1
                      get_local $p0
                    end
                    set_local $l0
                    get_local $l1
                    get_local $l2
                    i32.store
                    get_local $l0
                    get_local $l2
                    i32.store offset=12
                    get_local $l2
                    get_local $l0
                    i32.store offset=8
                    get_local $l2
                    get_local $p0
                    i32.store offset=12
                  end
                  i32.const 1608
                  get_local $l3
                  i32.store
                  i32.const 1620
                  get_local $l5
                  i32.store
                  get_local $l9
                  set_global $g5
                  get_local $l7
                  return
                end
                i32.const 1604
                i32.load
                tee_local $l11
                if $I14
                  get_local $l11
                  i32.const 0
                  get_local $l11
                  i32.sub
                  i32.and
                  i32.const -1
                  i32.add
                  tee_local $l1
                  i32.const 12
                  i32.shr_u
                  i32.const 16
                  i32.and
                  set_local $l0
                  get_local $l1
                  get_local $l0
                  i32.shr_u
                  tee_local $l1
                  i32.const 5
                  i32.shr_u
                  i32.const 8
                  i32.and
                  tee_local $l2
                  get_local $l0
                  i32.or
                  get_local $l1
                  get_local $l2
                  i32.shr_u
                  tee_local $l0
                  i32.const 2
                  i32.shr_u
                  i32.const 4
                  i32.and
                  tee_local $l1
                  i32.or
                  get_local $l0
                  get_local $l1
                  i32.shr_u
                  tee_local $l0
                  i32.const 1
                  i32.shr_u
                  i32.const 2
                  i32.and
                  tee_local $l1
                  i32.or
                  get_local $l0
                  get_local $l1
                  i32.shr_u
                  tee_local $l0
                  i32.const 1
                  i32.shr_u
                  i32.const 1
                  i32.and
                  tee_local $l1
                  i32.or
                  get_local $l0
                  get_local $l1
                  i32.shr_u
                  i32.add
                  i32.const 2
                  i32.shl
                  i32.const 1904
                  i32.add
                  i32.load
                  tee_local $l2
                  set_local $l0
                  get_local $l2
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  get_local $p0
                  i32.sub
                  set_local $l3
                  loop $L15
                    block $B16
                      get_local $l0
                      i32.load offset=16
                      tee_local $l1
                      if $I17
                        get_local $l1
                        set_local $l0
                      else
                        get_local $l0
                        i32.load offset=20
                        tee_local $l0
                        i32.eqz
                        br_if $B16
                      end
                      get_local $l0
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      get_local $p0
                      i32.sub
                      tee_local $l1
                      get_local $l3
                      i32.lt_u
                      tee_local $l4
                      i32.eqz
                      if $I18
                        get_local $l3
                        set_local $l1
                      end
                      get_local $l4
                      if $I19
                        get_local $l0
                        set_local $l2
                      end
                      get_local $l1
                      set_local $l3
                      br $L15
                    end
                  end
                  get_local $l2
                  get_local $p0
                  i32.add
                  tee_local $l10
                  get_local $l2
                  i32.gt_u
                  if $I20
                    get_local $l2
                    i32.load offset=24
                    set_local $l8
                    block $B21
                      get_local $l2
                      i32.load offset=12
                      tee_local $l0
                      get_local $l2
                      i32.eq
                      if $I22
                        get_local $l2
                        i32.const 20
                        i32.add
                        tee_local $l1
                        i32.load
                        tee_local $l0
                        i32.eqz
                        if $I23
                          get_local $l2
                          i32.const 16
                          i32.add
                          tee_local $l1
                          i32.load
                          tee_local $l0
                          i32.eqz
                          if $I24
                            i32.const 0
                            set_local $l0
                            br $B21
                          end
                        end
                        loop $L25
                          block $B26
                            get_local $l0
                            i32.const 20
                            i32.add
                            tee_local $l4
                            i32.load
                            tee_local $l7
                            i32.eqz
                            if $I27
                              get_local $l0
                              i32.const 16
                              i32.add
                              tee_local $l4
                              i32.load
                              tee_local $l7
                              i32.eqz
                              br_if $B26
                            end
                            get_local $l4
                            set_local $l1
                            get_local $l7
                            set_local $l0
                            br $L25
                          end
                        end
                        get_local $l1
                        i32.const 0
                        i32.store
                      else
                        get_local $l2
                        i32.load offset=8
                        tee_local $l1
                        get_local $l0
                        i32.store offset=12
                        get_local $l0
                        get_local $l1
                        i32.store offset=8
                      end
                    end
                    block $B28
                      get_local $l8
                      if $I29
                        get_local $l2
                        get_local $l2
                        i32.load offset=28
                        tee_local $l1
                        i32.const 2
                        i32.shl
                        i32.const 1904
                        i32.add
                        tee_local $l4
                        i32.load
                        i32.eq
                        if $I30
                          get_local $l4
                          get_local $l0
                          i32.store
                          get_local $l0
                          i32.eqz
                          if $I31
                            i32.const 1604
                            get_local $l11
                            i32.const 1
                            get_local $l1
                            i32.shl
                            i32.const -1
                            i32.xor
                            i32.and
                            i32.store
                            br $B28
                          end
                        else
                          get_local $l8
                          i32.const 20
                          i32.add
                          set_local $l1
                          get_local $l8
                          i32.const 16
                          i32.add
                          tee_local $l4
                          i32.load
                          get_local $l2
                          i32.eq
                          if $I32 (result i32)
                            get_local $l4
                          else
                            get_local $l1
                          end
                          get_local $l0
                          i32.store
                          get_local $l0
                          i32.eqz
                          br_if $B28
                        end
                        get_local $l0
                        get_local $l8
                        i32.store offset=24
                        get_local $l2
                        i32.load offset=16
                        tee_local $l1
                        if $I33
                          get_local $l0
                          get_local $l1
                          i32.store offset=16
                          get_local $l1
                          get_local $l0
                          i32.store offset=24
                        end
                        get_local $l2
                        i32.load offset=20
                        tee_local $l1
                        if $I34
                          get_local $l0
                          get_local $l1
                          i32.store offset=20
                          get_local $l1
                          get_local $l0
                          i32.store offset=24
                        end
                      end
                    end
                    get_local $l3
                    i32.const 16
                    i32.lt_u
                    if $I35
                      get_local $l2
                      get_local $l3
                      get_local $p0
                      i32.add
                      tee_local $p0
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      get_local $l2
                      get_local $p0
                      i32.add
                      i32.const 4
                      i32.add
                      tee_local $p0
                      get_local $p0
                      i32.load
                      i32.const 1
                      i32.or
                      i32.store
                    else
                      get_local $l2
                      get_local $p0
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      get_local $l10
                      get_local $l3
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      get_local $l10
                      get_local $l3
                      i32.add
                      get_local $l3
                      i32.store
                      get_local $l6
                      if $I36
                        i32.const 1620
                        i32.load
                        set_local $l4
                        get_local $l6
                        i32.const 3
                        i32.shr_u
                        tee_local $l0
                        i32.const 3
                        i32.shl
                        i32.const 1640
                        i32.add
                        set_local $p0
                        i32.const 1
                        get_local $l0
                        i32.shl
                        tee_local $l0
                        get_local $l5
                        i32.and
                        if $I37 (result i32)
                          get_local $p0
                          i32.const 8
                          i32.add
                          tee_local $l1
                          i32.load
                        else
                          i32.const 1600
                          get_local $l0
                          get_local $l5
                          i32.or
                          i32.store
                          get_local $p0
                          i32.const 8
                          i32.add
                          set_local $l1
                          get_local $p0
                        end
                        set_local $l0
                        get_local $l1
                        get_local $l4
                        i32.store
                        get_local $l0
                        get_local $l4
                        i32.store offset=12
                        get_local $l4
                        get_local $l0
                        i32.store offset=8
                        get_local $l4
                        get_local $p0
                        i32.store offset=12
                      end
                      i32.const 1608
                      get_local $l3
                      i32.store
                      i32.const 1620
                      get_local $l10
                      i32.store
                    end
                    get_local $l9
                    set_global $g5
                    get_local $l2
                    i32.const 8
                    i32.add
                    return
                  end
                end
              end
            else
              get_local $p0
              i32.const -65
              i32.gt_u
              if $I38
                i32.const -1
                set_local $p0
              else
                get_local $p0
                i32.const 11
                i32.add
                tee_local $l0
                i32.const -8
                i32.and
                set_local $p0
                i32.const 1604
                i32.load
                tee_local $l3
                if $I39
                  get_local $l0
                  i32.const 8
                  i32.shr_u
                  tee_local $l0
                  if $I40 (result i32)
                    get_local $p0
                    i32.const 16777215
                    i32.gt_u
                    if $I41 (result i32)
                      i32.const 31
                    else
                      get_local $p0
                      i32.const 14
                      get_local $l0
                      get_local $l0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      tee_local $l0
                      i32.shl
                      tee_local $l1
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      tee_local $l2
                      get_local $l0
                      i32.or
                      get_local $l1
                      get_local $l2
                      i32.shl
                      tee_local $l0
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      tee_local $l1
                      i32.or
                      i32.sub
                      get_local $l0
                      get_local $l1
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      i32.add
                      tee_local $l0
                      i32.const 7
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      get_local $l0
                      i32.const 1
                      i32.shl
                      i32.or
                    end
                  else
                    i32.const 0
                  end
                  set_local $l6
                  i32.const 0
                  get_local $p0
                  i32.sub
                  set_local $l2
                  block $B42
                    block $B43
                      get_local $l6
                      i32.const 2
                      i32.shl
                      i32.const 1904
                      i32.add
                      i32.load
                      tee_local $l0
                      if $I44 (result i32)
                        i32.const 25
                        get_local $l6
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        set_local $l5
                        i32.const 0
                        set_local $l1
                        get_local $p0
                        get_local $l6
                        i32.const 31
                        i32.eq
                        if $I45 (result i32)
                          i32.const 0
                        else
                          get_local $l5
                        end
                        i32.shl
                        set_local $l4
                        i32.const 0
                        set_local $l5
                        loop $L46
                          get_local $l0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          get_local $p0
                          i32.sub
                          tee_local $l7
                          get_local $l2
                          i32.lt_u
                          if $I47
                            get_local $l7
                            if $I48 (result i32)
                              get_local $l7
                              set_local $l2
                              get_local $l0
                            else
                              i32.const 0
                              set_local $l2
                              get_local $l0
                              set_local $l1
                              br $B43
                            end
                            set_local $l1
                          end
                          get_local $l0
                          i32.load offset=20
                          tee_local $l7
                          i32.eqz
                          get_local $l7
                          get_local $l0
                          i32.const 16
                          i32.add
                          get_local $l4
                          i32.const 31
                          i32.shr_u
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.load
                          tee_local $l0
                          i32.eq
                          i32.or
                          i32.eqz
                          if $I49
                            get_local $l7
                            set_local $l5
                          end
                          get_local $l4
                          i32.const 1
                          i32.shl
                          set_local $l4
                          get_local $l0
                          br_if $L46
                        end
                        get_local $l1
                      else
                        i32.const 0
                      end
                      set_local $l0
                      get_local $l5
                      get_local $l0
                      i32.or
                      if $I50 (result i32)
                        get_local $l5
                      else
                        i32.const 2
                        get_local $l6
                        i32.shl
                        tee_local $l0
                        i32.const 0
                        get_local $l0
                        i32.sub
                        i32.or
                        get_local $l3
                        i32.and
                        tee_local $l0
                        i32.eqz
                        br_if $B4
                        get_local $l0
                        i32.const 0
                        get_local $l0
                        i32.sub
                        i32.and
                        i32.const -1
                        i32.add
                        tee_local $l5
                        i32.const 12
                        i32.shr_u
                        i32.const 16
                        i32.and
                        set_local $l1
                        i32.const 0
                        set_local $l0
                        get_local $l5
                        get_local $l1
                        i32.shr_u
                        tee_local $l5
                        i32.const 5
                        i32.shr_u
                        i32.const 8
                        i32.and
                        tee_local $l4
                        get_local $l1
                        i32.or
                        get_local $l5
                        get_local $l4
                        i32.shr_u
                        tee_local $l1
                        i32.const 2
                        i32.shr_u
                        i32.const 4
                        i32.and
                        tee_local $l5
                        i32.or
                        get_local $l1
                        get_local $l5
                        i32.shr_u
                        tee_local $l1
                        i32.const 1
                        i32.shr_u
                        i32.const 2
                        i32.and
                        tee_local $l5
                        i32.or
                        get_local $l1
                        get_local $l5
                        i32.shr_u
                        tee_local $l1
                        i32.const 1
                        i32.shr_u
                        i32.const 1
                        i32.and
                        tee_local $l5
                        i32.or
                        get_local $l1
                        get_local $l5
                        i32.shr_u
                        i32.add
                        i32.const 2
                        i32.shl
                        i32.const 1904
                        i32.add
                        i32.load
                      end
                      tee_local $l1
                      br_if $B43
                      get_local $l0
                      set_local $l5
                      br $B42
                    end
                    get_local $l0
                    set_local $l4
                    get_local $l1
                    set_local $l0
                    loop $L51
                      get_local $l0
                      i32.load offset=4
                      set_local $l1
                      get_local $l0
                      i32.load offset=16
                      tee_local $l5
                      i32.eqz
                      if $I52
                        get_local $l0
                        i32.load offset=20
                        set_local $l5
                      end
                      get_local $l1
                      i32.const -8
                      i32.and
                      get_local $p0
                      i32.sub
                      tee_local $l1
                      get_local $l2
                      i32.lt_u
                      tee_local $l7
                      i32.eqz
                      if $I53
                        get_local $l2
                        set_local $l1
                      end
                      get_local $l7
                      i32.eqz
                      if $I54
                        get_local $l4
                        set_local $l0
                      end
                      get_local $l5
                      if $I55 (result i32)
                        get_local $l0
                        set_local $l4
                        get_local $l1
                        set_local $l2
                        get_local $l5
                        set_local $l0
                        br $L51
                      else
                        get_local $l0
                        set_local $l5
                        get_local $l1
                      end
                      set_local $l2
                    end
                  end
                  get_local $l5
                  if $I56
                    get_local $l2
                    i32.const 1608
                    i32.load
                    get_local $p0
                    i32.sub
                    i32.lt_u
                    if $I57
                      get_local $l5
                      get_local $p0
                      i32.add
                      tee_local $l6
                      get_local $l5
                      i32.gt_u
                      if $I58
                        get_local $l5
                        i32.load offset=24
                        set_local $l8
                        block $B59
                          get_local $l5
                          i32.load offset=12
                          tee_local $l0
                          get_local $l5
                          i32.eq
                          if $I60
                            get_local $l5
                            i32.const 20
                            i32.add
                            tee_local $l1
                            i32.load
                            tee_local $l0
                            i32.eqz
                            if $I61
                              get_local $l5
                              i32.const 16
                              i32.add
                              tee_local $l1
                              i32.load
                              tee_local $l0
                              i32.eqz
                              if $I62
                                i32.const 0
                                set_local $l0
                                br $B59
                              end
                            end
                            loop $L63
                              block $B64
                                get_local $l0
                                i32.const 20
                                i32.add
                                tee_local $l4
                                i32.load
                                tee_local $l7
                                i32.eqz
                                if $I65
                                  get_local $l0
                                  i32.const 16
                                  i32.add
                                  tee_local $l4
                                  i32.load
                                  tee_local $l7
                                  i32.eqz
                                  br_if $B64
                                end
                                get_local $l4
                                set_local $l1
                                get_local $l7
                                set_local $l0
                                br $L63
                              end
                            end
                            get_local $l1
                            i32.const 0
                            i32.store
                          else
                            get_local $l5
                            i32.load offset=8
                            tee_local $l1
                            get_local $l0
                            i32.store offset=12
                            get_local $l0
                            get_local $l1
                            i32.store offset=8
                          end
                        end
                        block $B66
                          get_local $l8
                          if $I67
                            get_local $l5
                            get_local $l5
                            i32.load offset=28
                            tee_local $l1
                            i32.const 2
                            i32.shl
                            i32.const 1904
                            i32.add
                            tee_local $l4
                            i32.load
                            i32.eq
                            if $I68
                              get_local $l4
                              get_local $l0
                              i32.store
                              get_local $l0
                              i32.eqz
                              if $I69
                                i32.const 1604
                                get_local $l3
                                i32.const 1
                                get_local $l1
                                i32.shl
                                i32.const -1
                                i32.xor
                                i32.and
                                tee_local $l0
                                i32.store
                                br $B66
                              end
                            else
                              get_local $l8
                              i32.const 20
                              i32.add
                              set_local $l1
                              get_local $l8
                              i32.const 16
                              i32.add
                              tee_local $l4
                              i32.load
                              get_local $l5
                              i32.eq
                              if $I70 (result i32)
                                get_local $l4
                              else
                                get_local $l1
                              end
                              get_local $l0
                              i32.store
                              get_local $l0
                              i32.eqz
                              if $I71
                                get_local $l3
                                set_local $l0
                                br $B66
                              end
                            end
                            get_local $l0
                            get_local $l8
                            i32.store offset=24
                            get_local $l5
                            i32.load offset=16
                            tee_local $l1
                            if $I72
                              get_local $l0
                              get_local $l1
                              i32.store offset=16
                              get_local $l1
                              get_local $l0
                              i32.store offset=24
                            end
                            get_local $l5
                            i32.load offset=20
                            tee_local $l1
                            if $I73
                              get_local $l0
                              get_local $l1
                              i32.store offset=20
                              get_local $l1
                              get_local $l0
                              i32.store offset=24
                            end
                          end
                          get_local $l3
                          set_local $l0
                        end
                        block $B74
                          get_local $l2
                          i32.const 16
                          i32.lt_u
                          if $I75
                            get_local $l5
                            get_local $l2
                            get_local $p0
                            i32.add
                            tee_local $p0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            get_local $l5
                            get_local $p0
                            i32.add
                            i32.const 4
                            i32.add
                            tee_local $p0
                            get_local $p0
                            i32.load
                            i32.const 1
                            i32.or
                            i32.store
                          else
                            get_local $l5
                            get_local $p0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            get_local $l6
                            get_local $l2
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            get_local $l6
                            get_local $l2
                            i32.add
                            get_local $l2
                            i32.store
                            get_local $l2
                            i32.const 3
                            i32.shr_u
                            set_local $l1
                            get_local $l2
                            i32.const 256
                            i32.lt_u
                            if $I76
                              get_local $l1
                              i32.const 3
                              i32.shl
                              i32.const 1640
                              i32.add
                              set_local $p0
                              i32.const 1600
                              i32.load
                              tee_local $l0
                              i32.const 1
                              get_local $l1
                              i32.shl
                              tee_local $l1
                              i32.and
                              if $I77 (result i32)
                                get_local $p0
                                i32.const 8
                                i32.add
                                tee_local $l1
                                i32.load
                              else
                                i32.const 1600
                                get_local $l0
                                get_local $l1
                                i32.or
                                i32.store
                                get_local $p0
                                i32.const 8
                                i32.add
                                set_local $l1
                                get_local $p0
                              end
                              set_local $l0
                              get_local $l1
                              get_local $l6
                              i32.store
                              get_local $l0
                              get_local $l6
                              i32.store offset=12
                              get_local $l6
                              get_local $l0
                              i32.store offset=8
                              get_local $l6
                              get_local $p0
                              i32.store offset=12
                              br $B74
                            end
                            get_local $l2
                            i32.const 8
                            i32.shr_u
                            tee_local $p0
                            if $I78 (result i32)
                              get_local $l2
                              i32.const 16777215
                              i32.gt_u
                              if $I79 (result i32)
                                i32.const 31
                              else
                                get_local $l2
                                i32.const 14
                                get_local $p0
                                get_local $p0
                                i32.const 1048320
                                i32.add
                                i32.const 16
                                i32.shr_u
                                i32.const 8
                                i32.and
                                tee_local $p0
                                i32.shl
                                tee_local $l1
                                i32.const 520192
                                i32.add
                                i32.const 16
                                i32.shr_u
                                i32.const 4
                                i32.and
                                tee_local $l3
                                get_local $p0
                                i32.or
                                get_local $l1
                                get_local $l3
                                i32.shl
                                tee_local $p0
                                i32.const 245760
                                i32.add
                                i32.const 16
                                i32.shr_u
                                i32.const 2
                                i32.and
                                tee_local $l1
                                i32.or
                                i32.sub
                                get_local $p0
                                get_local $l1
                                i32.shl
                                i32.const 15
                                i32.shr_u
                                i32.add
                                tee_local $p0
                                i32.const 7
                                i32.add
                                i32.shr_u
                                i32.const 1
                                i32.and
                                get_local $p0
                                i32.const 1
                                i32.shl
                                i32.or
                              end
                            else
                              i32.const 0
                            end
                            tee_local $l1
                            i32.const 2
                            i32.shl
                            i32.const 1904
                            i32.add
                            set_local $p0
                            get_local $l6
                            get_local $l1
                            i32.store offset=28
                            get_local $l6
                            i32.const 16
                            i32.add
                            tee_local $l3
                            i32.const 0
                            i32.store offset=4
                            get_local $l3
                            i32.const 0
                            i32.store
                            get_local $l0
                            i32.const 1
                            get_local $l1
                            i32.shl
                            tee_local $l3
                            i32.and
                            i32.eqz
                            if $I80
                              i32.const 1604
                              get_local $l0
                              get_local $l3
                              i32.or
                              i32.store
                              get_local $p0
                              get_local $l6
                              i32.store
                              get_local $l6
                              get_local $p0
                              i32.store offset=24
                              get_local $l6
                              get_local $l6
                              i32.store offset=12
                              get_local $l6
                              get_local $l6
                              i32.store offset=8
                              br $B74
                            end
                            block $B81
                              get_local $p0
                              i32.load
                              tee_local $p0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              get_local $l2
                              i32.eq
                              if $I82 (result i32)
                                get_local $p0
                              else
                                i32.const 25
                                get_local $l1
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                set_local $l0
                                get_local $l2
                                get_local $l1
                                i32.const 31
                                i32.eq
                                if $I83 (result i32)
                                  i32.const 0
                                else
                                  get_local $l0
                                end
                                i32.shl
                                set_local $l1
                                loop $L84
                                  get_local $p0
                                  i32.const 16
                                  i32.add
                                  get_local $l1
                                  i32.const 31
                                  i32.shr_u
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  tee_local $l3
                                  i32.load
                                  tee_local $l0
                                  if $I85
                                    get_local $l1
                                    i32.const 1
                                    i32.shl
                                    set_local $l1
                                    get_local $l0
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    get_local $l2
                                    i32.eq
                                    br_if $B81
                                    get_local $l0
                                    set_local $p0
                                    br $L84
                                  end
                                end
                                get_local $l3
                                get_local $l6
                                i32.store
                                get_local $l6
                                get_local $p0
                                i32.store offset=24
                                get_local $l6
                                get_local $l6
                                i32.store offset=12
                                get_local $l6
                                get_local $l6
                                i32.store offset=8
                                br $B74
                              end
                              set_local $l0
                            end
                            get_local $l0
                            i32.const 8
                            i32.add
                            tee_local $p0
                            i32.load
                            tee_local $l1
                            get_local $l6
                            i32.store offset=12
                            get_local $p0
                            get_local $l6
                            i32.store
                            get_local $l6
                            get_local $l1
                            i32.store offset=8
                            get_local $l6
                            get_local $l0
                            i32.store offset=12
                            get_local $l6
                            i32.const 0
                            i32.store offset=24
                          end
                        end
                        get_local $l9
                        set_global $g5
                        get_local $l5
                        i32.const 8
                        i32.add
                        return
                      end
                    end
                  end
                end
              end
            end
          end
          i32.const 1608
          i32.load
          tee_local $l1
          get_local $p0
          i32.ge_u
          if $I86
            i32.const 1620
            i32.load
            set_local $l0
            get_local $l1
            get_local $p0
            i32.sub
            tee_local $l2
            i32.const 15
            i32.gt_u
            if $I87
              i32.const 1620
              get_local $l0
              get_local $p0
              i32.add
              tee_local $l3
              i32.store
              i32.const 1608
              get_local $l2
              i32.store
              get_local $l3
              get_local $l2
              i32.const 1
              i32.or
              i32.store offset=4
              get_local $l0
              get_local $l1
              i32.add
              get_local $l2
              i32.store
              get_local $l0
              get_local $p0
              i32.const 3
              i32.or
              i32.store offset=4
            else
              i32.const 1608
              i32.const 0
              i32.store
              i32.const 1620
              i32.const 0
              i32.store
              get_local $l0
              get_local $l1
              i32.const 3
              i32.or
              i32.store offset=4
              get_local $l0
              get_local $l1
              i32.add
              i32.const 4
              i32.add
              tee_local $p0
              get_local $p0
              i32.load
              i32.const 1
              i32.or
              i32.store
            end
            br $B1
          end
          i32.const 1612
          i32.load
          tee_local $l1
          get_local $p0
          i32.gt_u
          if $I88
            i32.const 1612
            get_local $l1
            get_local $p0
            i32.sub
            tee_local $l1
            i32.store
            br $B2
          end
          i32.const 2072
          i32.load
          if $I89 (result i32)
            i32.const 2080
            i32.load
          else
            i32.const 2080
            i32.const 4096
            i32.store
            i32.const 2076
            i32.const 4096
            i32.store
            i32.const 2084
            i32.const -1
            i32.store
            i32.const 2088
            i32.const -1
            i32.store
            i32.const 2092
            i32.const 0
            i32.store
            i32.const 2044
            i32.const 0
            i32.store
            i32.const 2072
            get_local $l9
            i32.const -16
            i32.and
            i32.const 1431655768
            i32.xor
            i32.store
            i32.const 4096
          end
          tee_local $l0
          get_local $p0
          i32.const 47
          i32.add
          tee_local $l5
          i32.add
          tee_local $l4
          i32.const 0
          get_local $l0
          i32.sub
          tee_local $l7
          i32.and
          tee_local $l3
          get_local $p0
          i32.le_u
          if $I90
            br $B0
          end
          i32.const 2040
          i32.load
          tee_local $l0
          if $I91
            i32.const 2032
            i32.load
            tee_local $l2
            get_local $l3
            i32.add
            tee_local $l6
            get_local $l2
            i32.le_u
            get_local $l6
            get_local $l0
            i32.gt_u
            i32.or
            if $I92
              br $B0
            end
          end
          get_local $p0
          i32.const 48
          i32.add
          set_local $l6
          block $B93
            block $B94
              i32.const 2044
              i32.load
              i32.const 4
              i32.and
              if $I95
                i32.const 0
                set_local $l1
              else
                block $B96
                  block $B97
                    block $B98
                      i32.const 1624
                      i32.load
                      tee_local $l0
                      i32.eqz
                      br_if $B98
                      i32.const 2048
                      set_local $l2
                      loop $L99
                        block $B100
                          get_local $l2
                          i32.load
                          tee_local $l8
                          get_local $l0
                          i32.le_u
                          if $I101
                            get_local $l8
                            get_local $l2
                            i32.load offset=4
                            i32.add
                            get_local $l0
                            i32.gt_u
                            br_if $B100
                          end
                          get_local $l2
                          i32.load offset=8
                          tee_local $l2
                          br_if $L99
                          br $B98
                        end
                      end
                      get_local $l4
                      get_local $l1
                      i32.sub
                      get_local $l7
                      i32.and
                      tee_local $l1
                      i32.const 2147483647
                      i32.lt_u
                      if $I102
                        get_local $l1
                        call $_sbrk
                        tee_local $l0
                        get_local $l2
                        i32.load
                        get_local $l2
                        i32.load offset=4
                        i32.add
                        i32.eq
                        if $I103
                          get_local $l0
                          i32.const -1
                          i32.ne
                          br_if $B94
                        else
                          br $B97
                        end
                      else
                        i32.const 0
                        set_local $l1
                      end
                      br $B96
                    end
                    i32.const 0
                    call $_sbrk
                    tee_local $l0
                    i32.const -1
                    i32.eq
                    if $I104 (result i32)
                      i32.const 0
                    else
                      i32.const 2076
                      i32.load
                      tee_local $l1
                      i32.const -1
                      i32.add
                      tee_local $l2
                      get_local $l0
                      i32.add
                      i32.const 0
                      get_local $l1
                      i32.sub
                      i32.and
                      get_local $l0
                      i32.sub
                      set_local $l1
                      get_local $l2
                      get_local $l0
                      i32.and
                      if $I105 (result i32)
                        get_local $l1
                      else
                        i32.const 0
                      end
                      get_local $l3
                      i32.add
                      tee_local $l1
                      i32.const 2032
                      i32.load
                      tee_local $l4
                      i32.add
                      set_local $l2
                      get_local $l1
                      get_local $p0
                      i32.gt_u
                      get_local $l1
                      i32.const 2147483647
                      i32.lt_u
                      i32.and
                      if $I106 (result i32)
                        i32.const 2040
                        i32.load
                        tee_local $l7
                        if $I107
                          get_local $l2
                          get_local $l4
                          i32.le_u
                          get_local $l2
                          get_local $l7
                          i32.gt_u
                          i32.or
                          if $I108
                            i32.const 0
                            set_local $l1
                            br $B96
                          end
                        end
                        get_local $l1
                        call $_sbrk
                        tee_local $l2
                        get_local $l0
                        i32.eq
                        br_if $B94
                        get_local $l2
                        set_local $l0
                        br $B97
                      else
                        i32.const 0
                      end
                    end
                    set_local $l1
                    br $B96
                  end
                  get_local $l6
                  get_local $l1
                  i32.gt_u
                  get_local $l1
                  i32.const 2147483647
                  i32.lt_u
                  get_local $l0
                  i32.const -1
                  i32.ne
                  i32.and
                  i32.and
                  i32.eqz
                  if $I109
                    get_local $l0
                    i32.const -1
                    i32.eq
                    if $I110
                      i32.const 0
                      set_local $l1
                      br $B96
                    else
                      br $B94
                    end
                    unreachable
                  end
                  get_local $l5
                  get_local $l1
                  i32.sub
                  i32.const 2080
                  i32.load
                  tee_local $l2
                  i32.add
                  i32.const 0
                  get_local $l2
                  i32.sub
                  i32.and
                  tee_local $l2
                  i32.const 2147483647
                  i32.ge_u
                  br_if $B94
                  i32.const 0
                  get_local $l1
                  i32.sub
                  set_local $l5
                  get_local $l2
                  call $_sbrk
                  i32.const -1
                  i32.eq
                  if $I111 (result i32)
                    get_local $l5
                    call $_sbrk
                    drop
                    i32.const 0
                  else
                    get_local $l2
                    get_local $l1
                    i32.add
                    set_local $l1
                    br $B94
                  end
                  set_local $l1
                end
                i32.const 2044
                i32.const 2044
                i32.load
                i32.const 4
                i32.or
                i32.store
              end
              get_local $l3
              i32.const 2147483647
              i32.lt_u
              if $I112
                get_local $l3
                call $_sbrk
                tee_local $l0
                i32.const 0
                call $_sbrk
                tee_local $l2
                i32.lt_u
                get_local $l0
                i32.const -1
                i32.ne
                get_local $l2
                i32.const -1
                i32.ne
                i32.and
                i32.and
                set_local $l3
                get_local $l2
                get_local $l0
                i32.sub
                tee_local $l2
                get_local $p0
                i32.const 40
                i32.add
                i32.gt_u
                tee_local $l5
                if $I113
                  get_local $l2
                  set_local $l1
                end
                get_local $l0
                i32.const -1
                i32.eq
                get_local $l5
                i32.const 1
                i32.xor
                i32.or
                get_local $l3
                i32.const 1
                i32.xor
                i32.or
                i32.eqz
                br_if $B94
              end
              br $B93
            end
            i32.const 2032
            i32.const 2032
            i32.load
            get_local $l1
            i32.add
            tee_local $l2
            i32.store
            get_local $l2
            i32.const 2036
            i32.load
            i32.gt_u
            if $I114
              i32.const 2036
              get_local $l2
              i32.store
            end
            block $B115
              i32.const 1624
              i32.load
              tee_local $l3
              if $I116
                i32.const 2048
                set_local $l2
                block $B117
                  block $B118
                    loop $L119
                      get_local $l0
                      get_local $l2
                      i32.load
                      tee_local $l5
                      get_local $l2
                      i32.load offset=4
                      tee_local $l4
                      i32.add
                      i32.eq
                      br_if $B118
                      get_local $l2
                      i32.load offset=8
                      tee_local $l2
                      br_if $L119
                    end
                    br $B117
                  end
                  get_local $l2
                  i32.const 4
                  i32.add
                  set_local $l7
                  get_local $l2
                  i32.load offset=12
                  i32.const 8
                  i32.and
                  i32.eqz
                  if $I120
                    get_local $l0
                    get_local $l3
                    i32.gt_u
                    get_local $l5
                    get_local $l3
                    i32.le_u
                    i32.and
                    if $I121
                      get_local $l7
                      get_local $l4
                      get_local $l1
                      i32.add
                      i32.store
                      i32.const 1612
                      i32.load
                      get_local $l1
                      i32.add
                      set_local $l1
                      i32.const 0
                      get_local $l3
                      i32.const 8
                      i32.add
                      tee_local $l2
                      i32.sub
                      i32.const 7
                      i32.and
                      set_local $l0
                      i32.const 1624
                      get_local $l3
                      get_local $l2
                      i32.const 7
                      i32.and
                      if $I122 (result i32)
                        get_local $l0
                      else
                        i32.const 0
                        tee_local $l0
                      end
                      i32.add
                      tee_local $l2
                      i32.store
                      i32.const 1612
                      get_local $l1
                      get_local $l0
                      i32.sub
                      tee_local $l0
                      i32.store
                      get_local $l2
                      get_local $l0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      get_local $l3
                      get_local $l1
                      i32.add
                      i32.const 40
                      i32.store offset=4
                      i32.const 1628
                      i32.const 2088
                      i32.load
                      i32.store
                      br $B115
                    end
                  end
                end
                get_local $l0
                i32.const 1616
                i32.load
                i32.lt_u
                if $I123
                  i32.const 1616
                  get_local $l0
                  i32.store
                end
                get_local $l0
                get_local $l1
                i32.add
                set_local $l5
                i32.const 2048
                set_local $l2
                block $B124
                  block $B125
                    loop $L126
                      get_local $l2
                      i32.load
                      get_local $l5
                      i32.eq
                      br_if $B125
                      get_local $l2
                      i32.load offset=8
                      tee_local $l2
                      br_if $L126
                    end
                    br $B124
                  end
                  get_local $l2
                  i32.load offset=12
                  i32.const 8
                  i32.and
                  i32.eqz
                  if $I127
                    get_local $l2
                    get_local $l0
                    i32.store
                    get_local $l2
                    i32.const 4
                    i32.add
                    tee_local $l2
                    get_local $l2
                    i32.load
                    get_local $l1
                    i32.add
                    i32.store
                    i32.const 0
                    get_local $l0
                    i32.const 8
                    i32.add
                    tee_local $l1
                    i32.sub
                    i32.const 7
                    i32.and
                    set_local $l2
                    i32.const 0
                    get_local $l5
                    i32.const 8
                    i32.add
                    tee_local $l7
                    i32.sub
                    i32.const 7
                    i32.and
                    set_local $l8
                    get_local $l0
                    get_local $l1
                    i32.const 7
                    i32.and
                    if $I128 (result i32)
                      get_local $l2
                    else
                      i32.const 0
                    end
                    i32.add
                    tee_local $l6
                    get_local $p0
                    i32.add
                    set_local $l4
                    get_local $l5
                    get_local $l7
                    i32.const 7
                    i32.and
                    if $I129 (result i32)
                      get_local $l8
                    else
                      i32.const 0
                    end
                    i32.add
                    tee_local $l1
                    get_local $l6
                    i32.sub
                    get_local $p0
                    i32.sub
                    set_local $l2
                    get_local $l6
                    get_local $p0
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    block $B130
                      get_local $l3
                      get_local $l1
                      i32.eq
                      if $I131
                        i32.const 1612
                        i32.const 1612
                        i32.load
                        get_local $l2
                        i32.add
                        tee_local $p0
                        i32.store
                        i32.const 1624
                        get_local $l4
                        i32.store
                        get_local $l4
                        get_local $p0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                      else
                        i32.const 1620
                        i32.load
                        get_local $l1
                        i32.eq
                        if $I132
                          i32.const 1608
                          i32.const 1608
                          i32.load
                          get_local $l2
                          i32.add
                          tee_local $p0
                          i32.store
                          i32.const 1620
                          get_local $l4
                          i32.store
                          get_local $l4
                          get_local $p0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          get_local $l4
                          get_local $p0
                          i32.add
                          get_local $p0
                          i32.store
                          br $B130
                        end
                        get_local $l1
                        i32.load offset=4
                        tee_local $p0
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.eq
                        if $I133
                          get_local $p0
                          i32.const -8
                          i32.and
                          set_local $l8
                          get_local $p0
                          i32.const 3
                          i32.shr_u
                          set_local $l3
                          block $B134
                            get_local $p0
                            i32.const 256
                            i32.lt_u
                            if $I135
                              get_local $l1
                              i32.load offset=12
                              tee_local $p0
                              get_local $l1
                              i32.load offset=8
                              tee_local $l0
                              i32.eq
                              if $I136
                                i32.const 1600
                                i32.const 1600
                                i32.load
                                i32.const 1
                                get_local $l3
                                i32.shl
                                i32.const -1
                                i32.xor
                                i32.and
                                i32.store
                              else
                                get_local $l0
                                get_local $p0
                                i32.store offset=12
                                get_local $p0
                                get_local $l0
                                i32.store offset=8
                              end
                            else
                              get_local $l1
                              i32.load offset=24
                              set_local $l7
                              block $B137
                                get_local $l1
                                i32.load offset=12
                                tee_local $p0
                                get_local $l1
                                i32.eq
                                if $I138
                                  get_local $l1
                                  i32.const 16
                                  i32.add
                                  tee_local $l0
                                  i32.const 4
                                  i32.add
                                  tee_local $l3
                                  i32.load
                                  tee_local $p0
                                  if $I139
                                    get_local $l3
                                    set_local $l0
                                  else
                                    get_local $l0
                                    i32.load
                                    tee_local $p0
                                    i32.eqz
                                    if $I140
                                      i32.const 0
                                      set_local $p0
                                      br $B137
                                    end
                                  end
                                  loop $L141
                                    block $B142
                                      get_local $p0
                                      i32.const 20
                                      i32.add
                                      tee_local $l3
                                      i32.load
                                      tee_local $l5
                                      i32.eqz
                                      if $I143
                                        get_local $p0
                                        i32.const 16
                                        i32.add
                                        tee_local $l3
                                        i32.load
                                        tee_local $l5
                                        i32.eqz
                                        br_if $B142
                                      end
                                      get_local $l3
                                      set_local $l0
                                      get_local $l5
                                      set_local $p0
                                      br $L141
                                    end
                                  end
                                  get_local $l0
                                  i32.const 0
                                  i32.store
                                else
                                  get_local $l1
                                  i32.load offset=8
                                  tee_local $l0
                                  get_local $p0
                                  i32.store offset=12
                                  get_local $p0
                                  get_local $l0
                                  i32.store offset=8
                                end
                              end
                              get_local $l7
                              i32.eqz
                              br_if $B134
                              block $B144
                                get_local $l1
                                i32.load offset=28
                                tee_local $l0
                                i32.const 2
                                i32.shl
                                i32.const 1904
                                i32.add
                                tee_local $l3
                                i32.load
                                get_local $l1
                                i32.eq
                                if $I145
                                  get_local $l3
                                  get_local $p0
                                  i32.store
                                  get_local $p0
                                  br_if $B144
                                  i32.const 1604
                                  i32.const 1604
                                  i32.load
                                  i32.const 1
                                  get_local $l0
                                  i32.shl
                                  i32.const -1
                                  i32.xor
                                  i32.and
                                  i32.store
                                  br $B134
                                else
                                  get_local $l7
                                  i32.const 20
                                  i32.add
                                  set_local $l0
                                  get_local $l7
                                  i32.const 16
                                  i32.add
                                  tee_local $l3
                                  i32.load
                                  get_local $l1
                                  i32.eq
                                  if $I146 (result i32)
                                    get_local $l3
                                  else
                                    get_local $l0
                                  end
                                  get_local $p0
                                  i32.store
                                  get_local $p0
                                  i32.eqz
                                  br_if $B134
                                end
                              end
                              get_local $p0
                              get_local $l7
                              i32.store offset=24
                              get_local $l1
                              i32.const 16
                              i32.add
                              tee_local $l3
                              i32.load
                              tee_local $l0
                              if $I147
                                get_local $p0
                                get_local $l0
                                i32.store offset=16
                                get_local $l0
                                get_local $p0
                                i32.store offset=24
                              end
                              get_local $l3
                              i32.load offset=4
                              tee_local $l0
                              i32.eqz
                              br_if $B134
                              get_local $p0
                              get_local $l0
                              i32.store offset=20
                              get_local $l0
                              get_local $p0
                              i32.store offset=24
                            end
                          end
                          get_local $l1
                          get_local $l8
                          i32.add
                          set_local $l1
                          get_local $l8
                          get_local $l2
                          i32.add
                          set_local $l2
                        end
                        get_local $l1
                        i32.const 4
                        i32.add
                        tee_local $p0
                        get_local $p0
                        i32.load
                        i32.const -2
                        i32.and
                        i32.store
                        get_local $l4
                        get_local $l2
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        get_local $l4
                        get_local $l2
                        i32.add
                        get_local $l2
                        i32.store
                        get_local $l2
                        i32.const 3
                        i32.shr_u
                        set_local $l0
                        get_local $l2
                        i32.const 256
                        i32.lt_u
                        if $I148
                          get_local $l0
                          i32.const 3
                          i32.shl
                          i32.const 1640
                          i32.add
                          set_local $p0
                          i32.const 1600
                          i32.load
                          tee_local $l1
                          i32.const 1
                          get_local $l0
                          i32.shl
                          tee_local $l0
                          i32.and
                          if $I149 (result i32)
                            get_local $p0
                            i32.const 8
                            i32.add
                            tee_local $l1
                            i32.load
                          else
                            i32.const 1600
                            get_local $l1
                            get_local $l0
                            i32.or
                            i32.store
                            get_local $p0
                            i32.const 8
                            i32.add
                            set_local $l1
                            get_local $p0
                          end
                          set_local $l0
                          get_local $l1
                          get_local $l4
                          i32.store
                          get_local $l0
                          get_local $l4
                          i32.store offset=12
                          get_local $l4
                          get_local $l0
                          i32.store offset=8
                          get_local $l4
                          get_local $p0
                          i32.store offset=12
                          br $B130
                        end
                        block $B150 (result i32)
                          get_local $l2
                          i32.const 8
                          i32.shr_u
                          tee_local $p0
                          if $I151 (result i32)
                            i32.const 31
                            get_local $l2
                            i32.const 16777215
                            i32.gt_u
                            br_if $B150
                            drop
                            get_local $l2
                            i32.const 14
                            get_local $p0
                            get_local $p0
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            tee_local $p0
                            i32.shl
                            tee_local $l0
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            tee_local $l1
                            get_local $p0
                            i32.or
                            get_local $l0
                            get_local $l1
                            i32.shl
                            tee_local $p0
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            tee_local $l0
                            i32.or
                            i32.sub
                            get_local $p0
                            get_local $l0
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            i32.add
                            tee_local $p0
                            i32.const 7
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            get_local $p0
                            i32.const 1
                            i32.shl
                            i32.or
                          else
                            i32.const 0
                          end
                        end
                        tee_local $l0
                        i32.const 2
                        i32.shl
                        i32.const 1904
                        i32.add
                        set_local $p0
                        get_local $l4
                        get_local $l0
                        i32.store offset=28
                        get_local $l4
                        i32.const 16
                        i32.add
                        tee_local $l1
                        i32.const 0
                        i32.store offset=4
                        get_local $l1
                        i32.const 0
                        i32.store
                        i32.const 1604
                        i32.load
                        tee_local $l1
                        i32.const 1
                        get_local $l0
                        i32.shl
                        tee_local $l3
                        i32.and
                        i32.eqz
                        if $I152
                          i32.const 1604
                          get_local $l1
                          get_local $l3
                          i32.or
                          i32.store
                          get_local $p0
                          get_local $l4
                          i32.store
                          get_local $l4
                          get_local $p0
                          i32.store offset=24
                          get_local $l4
                          get_local $l4
                          i32.store offset=12
                          get_local $l4
                          get_local $l4
                          i32.store offset=8
                          br $B130
                        end
                        block $B153
                          get_local $p0
                          i32.load
                          tee_local $p0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          get_local $l2
                          i32.eq
                          if $I154 (result i32)
                            get_local $p0
                          else
                            i32.const 25
                            get_local $l0
                            i32.const 1
                            i32.shr_u
                            i32.sub
                            set_local $l1
                            get_local $l2
                            get_local $l0
                            i32.const 31
                            i32.eq
                            if $I155 (result i32)
                              i32.const 0
                            else
                              get_local $l1
                            end
                            i32.shl
                            set_local $l1
                            loop $L156
                              get_local $p0
                              i32.const 16
                              i32.add
                              get_local $l1
                              i32.const 31
                              i32.shr_u
                              i32.const 2
                              i32.shl
                              i32.add
                              tee_local $l3
                              i32.load
                              tee_local $l0
                              if $I157
                                get_local $l1
                                i32.const 1
                                i32.shl
                                set_local $l1
                                get_local $l0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                get_local $l2
                                i32.eq
                                br_if $B153
                                get_local $l0
                                set_local $p0
                                br $L156
                              end
                            end
                            get_local $l3
                            get_local $l4
                            i32.store
                            get_local $l4
                            get_local $p0
                            i32.store offset=24
                            get_local $l4
                            get_local $l4
                            i32.store offset=12
                            get_local $l4
                            get_local $l4
                            i32.store offset=8
                            br $B130
                          end
                          set_local $l0
                        end
                        get_local $l0
                        i32.const 8
                        i32.add
                        tee_local $p0
                        i32.load
                        tee_local $l1
                        get_local $l4
                        i32.store offset=12
                        get_local $p0
                        get_local $l4
                        i32.store
                        get_local $l4
                        get_local $l1
                        i32.store offset=8
                        get_local $l4
                        get_local $l0
                        i32.store offset=12
                        get_local $l4
                        i32.const 0
                        i32.store offset=24
                      end
                    end
                    get_local $l9
                    set_global $g5
                    get_local $l6
                    i32.const 8
                    i32.add
                    return
                  end
                end
                i32.const 2048
                set_local $l2
                loop $L158
                  block $B159
                    get_local $l2
                    i32.load
                    tee_local $l5
                    get_local $l3
                    i32.le_u
                    if $I160
                      get_local $l5
                      get_local $l2
                      i32.load offset=4
                      i32.add
                      tee_local $l6
                      get_local $l3
                      i32.gt_u
                      br_if $B159
                    end
                    get_local $l2
                    i32.load offset=8
                    set_local $l2
                    br $L158
                  end
                end
                i32.const 0
                get_local $l6
                i32.const -47
                i32.add
                tee_local $l2
                i32.const 8
                i32.add
                tee_local $l5
                i32.sub
                i32.const 7
                i32.and
                set_local $l4
                get_local $l2
                get_local $l5
                i32.const 7
                i32.and
                if $I161 (result i32)
                  get_local $l4
                else
                  i32.const 0
                end
                i32.add
                tee_local $l2
                get_local $l3
                i32.const 16
                i32.add
                tee_local $l11
                i32.lt_u
                if $I162 (result i32)
                  get_local $l3
                  tee_local $l2
                else
                  get_local $l2
                end
                i32.const 8
                i32.add
                set_local $l7
                get_local $l2
                i32.const 24
                i32.add
                set_local $l5
                get_local $l1
                i32.const -40
                i32.add
                set_local $l8
                i32.const 0
                get_local $l0
                i32.const 8
                i32.add
                tee_local $l10
                i32.sub
                i32.const 7
                i32.and
                set_local $l4
                i32.const 1624
                get_local $l0
                get_local $l10
                i32.const 7
                i32.and
                if $I163 (result i32)
                  get_local $l4
                else
                  i32.const 0
                  tee_local $l4
                end
                i32.add
                tee_local $l10
                i32.store
                i32.const 1612
                get_local $l8
                get_local $l4
                i32.sub
                tee_local $l4
                i32.store
                get_local $l10
                get_local $l4
                i32.const 1
                i32.or
                i32.store offset=4
                get_local $l0
                get_local $l8
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 1628
                i32.const 2088
                i32.load
                i32.store
                get_local $l2
                i32.const 4
                i32.add
                tee_local $l4
                i32.const 27
                i32.store
                get_local $l7
                i32.const 2048
                i64.load align=4
                i64.store align=4
                get_local $l7
                i32.const 2056
                i64.load align=4
                i64.store offset=8 align=4
                i32.const 2048
                get_local $l0
                i32.store
                i32.const 2052
                get_local $l1
                i32.store
                i32.const 2060
                i32.const 0
                i32.store
                i32.const 2056
                get_local $l7
                i32.store
                get_local $l5
                set_local $l0
                loop $L164
                  get_local $l0
                  i32.const 4
                  i32.add
                  tee_local $l1
                  i32.const 7
                  i32.store
                  get_local $l0
                  i32.const 8
                  i32.add
                  get_local $l6
                  i32.lt_u
                  if $I165
                    get_local $l1
                    set_local $l0
                    br $L164
                  end
                end
                get_local $l2
                get_local $l3
                i32.ne
                if $I166
                  get_local $l4
                  get_local $l4
                  i32.load
                  i32.const -2
                  i32.and
                  i32.store
                  get_local $l3
                  get_local $l2
                  get_local $l3
                  i32.sub
                  tee_local $l5
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  get_local $l2
                  get_local $l5
                  i32.store
                  get_local $l5
                  i32.const 3
                  i32.shr_u
                  set_local $l1
                  get_local $l5
                  i32.const 256
                  i32.lt_u
                  if $I167
                    get_local $l1
                    i32.const 3
                    i32.shl
                    i32.const 1640
                    i32.add
                    set_local $l0
                    i32.const 1600
                    i32.load
                    tee_local $l2
                    i32.const 1
                    get_local $l1
                    i32.shl
                    tee_local $l1
                    i32.and
                    if $I168 (result i32)
                      get_local $l0
                      i32.const 8
                      i32.add
                      tee_local $l2
                      i32.load
                    else
                      i32.const 1600
                      get_local $l2
                      get_local $l1
                      i32.or
                      i32.store
                      get_local $l0
                      i32.const 8
                      i32.add
                      set_local $l2
                      get_local $l0
                    end
                    set_local $l1
                    get_local $l2
                    get_local $l3
                    i32.store
                    get_local $l1
                    get_local $l3
                    i32.store offset=12
                    get_local $l3
                    get_local $l1
                    i32.store offset=8
                    get_local $l3
                    get_local $l0
                    i32.store offset=12
                    br $B115
                  end
                  get_local $l5
                  i32.const 8
                  i32.shr_u
                  tee_local $l0
                  if $I169 (result i32)
                    get_local $l5
                    i32.const 16777215
                    i32.gt_u
                    if $I170 (result i32)
                      i32.const 31
                    else
                      get_local $l5
                      i32.const 14
                      get_local $l0
                      get_local $l0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      tee_local $l0
                      i32.shl
                      tee_local $l1
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      tee_local $l2
                      get_local $l0
                      i32.or
                      get_local $l1
                      get_local $l2
                      i32.shl
                      tee_local $l0
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      tee_local $l1
                      i32.or
                      i32.sub
                      get_local $l0
                      get_local $l1
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      i32.add
                      tee_local $l0
                      i32.const 7
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      get_local $l0
                      i32.const 1
                      i32.shl
                      i32.or
                    end
                  else
                    i32.const 0
                  end
                  tee_local $l1
                  i32.const 2
                  i32.shl
                  i32.const 1904
                  i32.add
                  set_local $l0
                  get_local $l3
                  get_local $l1
                  i32.store offset=28
                  get_local $l3
                  i32.const 0
                  i32.store offset=20
                  get_local $l11
                  i32.const 0
                  i32.store
                  i32.const 1604
                  i32.load
                  tee_local $l2
                  i32.const 1
                  get_local $l1
                  i32.shl
                  tee_local $l4
                  i32.and
                  i32.eqz
                  if $I171
                    i32.const 1604
                    get_local $l2
                    get_local $l4
                    i32.or
                    i32.store
                    get_local $l0
                    get_local $l3
                    i32.store
                    get_local $l3
                    get_local $l0
                    i32.store offset=24
                    get_local $l3
                    get_local $l3
                    i32.store offset=12
                    get_local $l3
                    get_local $l3
                    i32.store offset=8
                    br $B115
                  end
                  block $B172
                    get_local $l0
                    i32.load
                    tee_local $l0
                    i32.load offset=4
                    i32.const -8
                    i32.and
                    get_local $l5
                    i32.eq
                    if $I173 (result i32)
                      get_local $l0
                    else
                      i32.const 25
                      get_local $l1
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      set_local $l2
                      get_local $l5
                      get_local $l1
                      i32.const 31
                      i32.eq
                      if $I174 (result i32)
                        i32.const 0
                      else
                        get_local $l2
                      end
                      i32.shl
                      set_local $l2
                      loop $L175
                        get_local $l0
                        i32.const 16
                        i32.add
                        get_local $l2
                        i32.const 31
                        i32.shr_u
                        i32.const 2
                        i32.shl
                        i32.add
                        tee_local $l4
                        i32.load
                        tee_local $l1
                        if $I176
                          get_local $l2
                          i32.const 1
                          i32.shl
                          set_local $l2
                          get_local $l1
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          get_local $l5
                          i32.eq
                          br_if $B172
                          get_local $l1
                          set_local $l0
                          br $L175
                        end
                      end
                      get_local $l4
                      get_local $l3
                      i32.store
                      get_local $l3
                      get_local $l0
                      i32.store offset=24
                      get_local $l3
                      get_local $l3
                      i32.store offset=12
                      get_local $l3
                      get_local $l3
                      i32.store offset=8
                      br $B115
                    end
                    set_local $l1
                  end
                  get_local $l1
                  i32.const 8
                  i32.add
                  tee_local $l0
                  i32.load
                  tee_local $l2
                  get_local $l3
                  i32.store offset=12
                  get_local $l0
                  get_local $l3
                  i32.store
                  get_local $l3
                  get_local $l2
                  i32.store offset=8
                  get_local $l3
                  get_local $l1
                  i32.store offset=12
                  get_local $l3
                  i32.const 0
                  i32.store offset=24
                end
              else
                i32.const 1616
                i32.load
                tee_local $l2
                i32.eqz
                get_local $l0
                get_local $l2
                i32.lt_u
                i32.or
                if $I177
                  i32.const 1616
                  get_local $l0
                  i32.store
                end
                i32.const 2048
                get_local $l0
                i32.store
                i32.const 2052
                get_local $l1
                i32.store
                i32.const 2060
                i32.const 0
                i32.store
                i32.const 1636
                i32.const 2072
                i32.load
                i32.store
                i32.const 1632
                i32.const -1
                i32.store
                i32.const 1652
                i32.const 1640
                i32.store
                i32.const 1648
                i32.const 1640
                i32.store
                i32.const 1660
                i32.const 1648
                i32.store
                i32.const 1656
                i32.const 1648
                i32.store
                i32.const 1668
                i32.const 1656
                i32.store
                i32.const 1664
                i32.const 1656
                i32.store
                i32.const 1676
                i32.const 1664
                i32.store
                i32.const 1672
                i32.const 1664
                i32.store
                i32.const 1684
                i32.const 1672
                i32.store
                i32.const 1680
                i32.const 1672
                i32.store
                i32.const 1692
                i32.const 1680
                i32.store
                i32.const 1688
                i32.const 1680
                i32.store
                i32.const 1700
                i32.const 1688
                i32.store
                i32.const 1696
                i32.const 1688
                i32.store
                i32.const 1708
                i32.const 1696
                i32.store
                i32.const 1704
                i32.const 1696
                i32.store
                i32.const 1716
                i32.const 1704
                i32.store
                i32.const 1712
                i32.const 1704
                i32.store
                i32.const 1724
                i32.const 1712
                i32.store
                i32.const 1720
                i32.const 1712
                i32.store
                i32.const 1732
                i32.const 1720
                i32.store
                i32.const 1728
                i32.const 1720
                i32.store
                i32.const 1740
                i32.const 1728
                i32.store
                i32.const 1736
                i32.const 1728
                i32.store
                i32.const 1748
                i32.const 1736
                i32.store
                i32.const 1744
                i32.const 1736
                i32.store
                i32.const 1756
                i32.const 1744
                i32.store
                i32.const 1752
                i32.const 1744
                i32.store
                i32.const 1764
                i32.const 1752
                i32.store
                i32.const 1760
                i32.const 1752
                i32.store
                i32.const 1772
                i32.const 1760
                i32.store
                i32.const 1768
                i32.const 1760
                i32.store
                i32.const 1780
                i32.const 1768
                i32.store
                i32.const 1776
                i32.const 1768
                i32.store
                i32.const 1788
                i32.const 1776
                i32.store
                i32.const 1784
                i32.const 1776
                i32.store
                i32.const 1796
                i32.const 1784
                i32.store
                i32.const 1792
                i32.const 1784
                i32.store
                i32.const 1804
                i32.const 1792
                i32.store
                i32.const 1800
                i32.const 1792
                i32.store
                i32.const 1812
                i32.const 1800
                i32.store
                i32.const 1808
                i32.const 1800
                i32.store
                i32.const 1820
                i32.const 1808
                i32.store
                i32.const 1816
                i32.const 1808
                i32.store
                i32.const 1828
                i32.const 1816
                i32.store
                i32.const 1824
                i32.const 1816
                i32.store
                i32.const 1836
                i32.const 1824
                i32.store
                i32.const 1832
                i32.const 1824
                i32.store
                i32.const 1844
                i32.const 1832
                i32.store
                i32.const 1840
                i32.const 1832
                i32.store
                i32.const 1852
                i32.const 1840
                i32.store
                i32.const 1848
                i32.const 1840
                i32.store
                i32.const 1860
                i32.const 1848
                i32.store
                i32.const 1856
                i32.const 1848
                i32.store
                i32.const 1868
                i32.const 1856
                i32.store
                i32.const 1864
                i32.const 1856
                i32.store
                i32.const 1876
                i32.const 1864
                i32.store
                i32.const 1872
                i32.const 1864
                i32.store
                i32.const 1884
                i32.const 1872
                i32.store
                i32.const 1880
                i32.const 1872
                i32.store
                i32.const 1892
                i32.const 1880
                i32.store
                i32.const 1888
                i32.const 1880
                i32.store
                i32.const 1900
                i32.const 1888
                i32.store
                i32.const 1896
                i32.const 1888
                i32.store
                get_local $l1
                i32.const -40
                i32.add
                set_local $l2
                i32.const 0
                get_local $l0
                i32.const 8
                i32.add
                tee_local $l3
                i32.sub
                i32.const 7
                i32.and
                set_local $l1
                i32.const 1624
                get_local $l0
                get_local $l3
                i32.const 7
                i32.and
                if $I178 (result i32)
                  get_local $l1
                else
                  i32.const 0
                  tee_local $l1
                end
                i32.add
                tee_local $l3
                i32.store
                i32.const 1612
                get_local $l2
                get_local $l1
                i32.sub
                tee_local $l1
                i32.store
                get_local $l3
                get_local $l1
                i32.const 1
                i32.or
                i32.store offset=4
                get_local $l0
                get_local $l2
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 1628
                i32.const 2088
                i32.load
                i32.store
              end
            end
            i32.const 1612
            i32.load
            tee_local $l0
            get_local $p0
            i32.gt_u
            if $I179
              i32.const 1612
              get_local $l0
              get_local $p0
              i32.sub
              tee_local $l1
              i32.store
              br $B2
            end
          end
          i32.const 2096
          i32.const 12
          i32.store
          br $B0
        end
        i32.const 1624
        i32.const 1624
        i32.load
        tee_local $l0
        get_local $p0
        i32.add
        tee_local $l2
        i32.store
        get_local $l2
        get_local $l1
        i32.const 1
        i32.or
        i32.store offset=4
        get_local $l0
        get_local $p0
        i32.const 3
        i32.or
        i32.store offset=4
      end
      get_local $l9
      set_global $g5
      get_local $l0
      i32.const 8
      i32.add
      return
    end
    get_local $l9
    set_global $g5
    i32.const 0)
  (func $f44 (type $t10) (param $p0 i32) (param $p1 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    get_local $p0
    i32.const 4
    i32.add
    tee_local $l5
    i32.load
    get_local $p0
    i32.load
    tee_local $l2
    i32.sub
    tee_local $l4
    i32.const 2
    i32.shr_s
    tee_local $l6
    i32.const 1
    i32.add
    tee_local $l1
    i32.const 1073741823
    i32.gt_u
    if $I0
      call $env._abort
    end
    get_local $p0
    i32.const 8
    i32.add
    tee_local $l7
    i32.load
    get_local $l2
    i32.sub
    tee_local $l0
    i32.const 2
    i32.shr_s
    i32.const 536870911
    i32.lt_u
    set_local $l8
    get_local $l0
    i32.const 1
    i32.shr_s
    tee_local $l0
    get_local $l1
    i32.ge_u
    if $I1
      get_local $l0
      set_local $l1
    end
    get_local $l8
    if $I2 (result i32)
      get_local $l1
    else
      i32.const 1073741823
      tee_local $l1
    end
    if $I3
      get_local $l1
      i32.const 1073741823
      i32.gt_u
      if $I4
        i32.const 8
        call $env.___cxa_allocate_exception
        tee_local $l0
        i32.const 1368
        call $f29
        get_local $l0
        i32.const 1356
        i32.store
        get_local $l0
        i32.const 1104
        i32.const 6
        call $env.___cxa_throw
      else
        get_local $l1
        i32.const 2
        i32.shl
        call $f25
        tee_local $l9
        set_local $l3
      end
    end
    get_local $l3
    get_local $l6
    i32.const 2
    i32.shl
    i32.add
    tee_local $l0
    get_local $p1
    i32.load
    i32.store
    get_local $l4
    i32.const 0
    i32.gt_s
    if $I5
      get_local $l9
      get_local $l2
      get_local $l4
      call $f27
      drop
    end
    get_local $p0
    get_local $l3
    i32.store
    get_local $l5
    get_local $l0
    i32.const 4
    i32.add
    i32.store
    get_local $l7
    get_local $l3
    get_local $l1
    i32.const 2
    i32.shl
    i32.add
    i32.store
    get_local $l2
    i32.eqz
    if $I6
      return
    end
    get_local $l2
    call $_free)
  (func $f45 (type $t12) (param $p0 i32) (param $p1 i32) (result f64)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 f64) (local $l14 f64) (local $l15 f64) (local $l16 f64)
    get_global $g5
    set_local $l4
    get_global $g5
    i32.const -64
    i32.sub
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      i32.const 64
      call $env.abortStackOverflow
    end
    get_local $l4
    i32.const 16
    i32.add
    set_local $l3
    get_local $l4
    i32.const 40
    i32.add
    tee_local $l7
    i32.const 0
    i32.store
    get_local $l7
    i32.const 4
    i32.add
    tee_local $l1
    i32.const 0
    i32.store
    get_local $l7
    i32.const 8
    i32.add
    tee_local $l8
    i32.const 0
    i32.store
    get_local $p0
    i32.load offset=4
    get_local $p0
    i32.load
    i32.sub
    tee_local $l0
    i32.const 3
    i32.shr_s
    set_local $l9
    get_local $l0
    i32.const 0
    i32.gt_s
    if $I1 (result i32)
      get_local $l9
      set_local $l0
      loop $L2
        get_local $l9
        get_local $l5
        i32.gt_s
        if $I3
          get_local $p0
          i32.load
          set_local $l6
          i32.const 0
          set_local $l2
          f64.const 0x0p+0 (;=0;)
          set_local $l14
          f64.const 0x0p+0 (;=0;)
          set_local $l13
          loop $L4
            get_local $l13
            get_local $l6
            get_local $l2
            i32.const 3
            i32.shl
            i32.add
            f64.load
            tee_local $l15
            get_local $l6
            get_local $l2
            get_local $l5
            i32.add
            i32.const 3
            i32.shl
            i32.add
            f64.load
            tee_local $l16
            f64.mul
            f64.add
            set_local $l13
            get_local $l14
            get_local $l15
            get_local $l15
            f64.mul
            get_local $l16
            get_local $l16
            f64.mul
            f64.add
            f64.add
            set_local $l14
            get_local $l2
            i32.const 1
            i32.add
            tee_local $l2
            get_local $l0
            i32.ne
            br_if $L4
          end
        else
          f64.const 0x0p+0 (;=0;)
          set_local $l14
          f64.const 0x0p+0 (;=0;)
          set_local $l13
        end
        get_local $l3
        get_local $l13
        f64.const 0x1p+1 (;=2;)
        f64.mul
        get_local $l14
        f64.div
        tee_local $l13
        f64.store
        get_local $l1
        i32.load
        tee_local $l2
        get_local $l8
        i32.load
        i32.lt_u
        if $I5
          get_local $l2
          get_local $l13
          f64.store
          get_local $l1
          get_local $l2
          i32.const 8
          i32.add
          i32.store
        else
          get_local $l7
          get_local $l3
          call $f31
        end
        get_local $l0
        i32.const -1
        i32.add
        set_local $l0
        get_local $l9
        get_local $l5
        i32.const 1
        i32.add
        tee_local $l5
        i32.gt_s
        br_if $L2
      end
      get_local $l7
      i32.load
      tee_local $p0
      set_local $l5
      get_local $l1
      tee_local $l9
      i32.load
    else
      get_local $l1
      set_local $l9
      i32.const 0
      set_local $p0
      i32.const 0
    end
    set_local $l0
    get_local $l4
    tee_local $l6
    i32.const 28
    i32.add
    tee_local $l8
    i32.const 0
    i32.store
    get_local $l8
    i32.const 4
    i32.add
    tee_local $l10
    i32.const 0
    i32.store
    get_local $l8
    i32.const 8
    i32.add
    tee_local $l12
    i32.const 0
    i32.store
    get_local $l3
    i32.const 0
    i32.store
    get_local $l0
    get_local $p0
    i32.sub
    tee_local $l1
    i32.const 3
    i32.shr_s
    i32.const -1
    i32.add
    tee_local $l11
    i32.const 3
    i32.div_s
    set_local $l2
    get_local $p0
    set_local $l0
    block $B6
      get_local $l1
      i32.const 24
      i32.gt_s
      if $I7
        i32.const 0
        set_local $p0
        loop $L8
          get_local $l0
          get_local $p0
          i32.const 3
          i32.shl
          i32.add
          f64.load
          f64.const 0x0p+0 (;=0;)
          f64.gt
          i32.eqz
          br_if $B6
          get_local $p0
          i32.const 1
          i32.add
          tee_local $p0
          get_local $l2
          i32.lt_s
          br_if $L8
        end
      else
        i32.const 0
        set_local $p0
      end
    end
    block $B9
      get_local $p0
      get_local $l11
      i32.lt_s
      if $I10
        loop $L11
          get_local $l0
          get_local $p0
          i32.const 3
          i32.shl
          i32.add
          f64.load
          f64.const 0x0p+0 (;=0;)
          f64.le
          i32.eqz
          br_if $B9
          get_local $p0
          i32.const 1
          i32.add
          tee_local $p0
          get_local $l11
          i32.lt_s
          br_if $L11
        end
      end
    end
    get_local $p0
    if $I12 (result i32)
      get_local $p0
    else
      i32.const 1
      tee_local $p0
    end
    get_local $l11
    i32.lt_s
    if $I13
      get_local $p0
      set_local $l1
      i32.const 0
      set_local $p0
      get_local $l0
      set_local $l4
      i32.const 0
      set_local $l0
      loop $L14
        get_local $l1
        i32.const 1
        i32.add
        set_local $l2
        block $B15
          get_local $l4
          get_local $l1
          i32.const 3
          i32.shl
          i32.add
          f64.load
          tee_local $l13
          get_local $l4
          get_local $l1
          i32.const -1
          i32.add
          i32.const 3
          i32.shl
          i32.add
          f64.load
          f64.gt
          if $I16
            get_local $l13
            get_local $l4
            get_local $l2
            i32.const 3
            i32.shl
            i32.add
            f64.load
            f64.ge
            if $I17
              get_local $l0
              i32.eqz
              if $I18
                get_local $l3
                get_local $l1
                i32.store
                get_local $l1
                tee_local $p0
                set_local $l0
                br $B15
              end
              get_local $l13
              get_local $l4
              get_local $l0
              i32.const 3
              i32.shl
              i32.add
              f64.load
              f64.gt
              if $I19
                get_local $l3
                get_local $l1
                i32.store
                get_local $l1
                tee_local $p0
                set_local $l0
              end
            end
          end
        end
        block $B20
          get_local $l2
          get_local $l11
          i32.lt_s
          if $I21
            get_local $l4
            get_local $l2
            i32.const 3
            i32.shl
            i32.add
            f64.load
            f64.const 0x0p+0 (;=0;)
            f64.le
            if $I22
              get_local $l0
              i32.const 0
              i32.gt_s
              if $I23
                get_local $l10
                i32.load
                tee_local $p0
                get_local $l12
                i32.load
                i32.eq
                if $I24
                  get_local $l8
                  get_local $l3
                  call $f44
                else
                  get_local $p0
                  get_local $l0
                  i32.store
                  get_local $l10
                  get_local $p0
                  i32.const 4
                  i32.add
                  i32.store
                end
                get_local $l3
                i32.const 0
                i32.store
                get_local $l7
                i32.load
                set_local $l5
                i32.const 0
                set_local $p0
                i32.const 0
                set_local $l0
              end
              get_local $l2
              set_local $l1
              loop $L25
                get_local $l5
                get_local $l1
                i32.const 3
                i32.shl
                i32.add
                f64.load
                f64.const 0x0p+0 (;=0;)
                f64.le
                i32.eqz
                br_if $B20
                get_local $l1
                i32.const 1
                i32.add
                tee_local $l1
                get_local $l11
                i32.lt_s
                br_if $L25
              end
            else
              get_local $l2
              set_local $l1
            end
          else
            get_local $l2
            set_local $l1
          end
        end
        get_local $l1
        get_local $l11
        i32.lt_s
        if $I26
          get_local $l5
          set_local $l4
          br $L14
        end
      end
      get_local $p0
      i32.const 0
      i32.gt_s
      if $I27
        get_local $l10
        i32.load
        tee_local $l0
        get_local $l12
        i32.load
        i32.eq
        if $I28
          get_local $l8
          get_local $l3
          call $f44
        else
          get_local $l0
          get_local $p0
          i32.store
          get_local $l10
          get_local $l0
          i32.const 4
          i32.add
          i32.store
        end
      end
    end
    get_local $l3
    i32.const 0
    i32.store
    get_local $l3
    i32.const 4
    i32.add
    tee_local $l1
    i32.const 0
    i32.store
    get_local $l3
    i32.const 8
    i32.add
    tee_local $l5
    i32.const 0
    i32.store
    get_local $l8
    i32.load
    tee_local $p0
    get_local $l10
    i32.load
    tee_local $l2
    i32.eq
    if $I29
      f64.const -0x1p+0 (;=-1;)
      set_local $l13
    else
      get_local $l6
      i32.const 8
      i32.add
      set_local $l4
      f64.const -0x1.fffffffffffffp+1023 (;=-1.79769e+308;)
      set_local $l13
      loop $L30
        get_local $l13
        get_local $l7
        i32.load
        get_local $p0
        i32.load
        tee_local $l0
        i32.const 3
        i32.shl
        i32.add
        f64.load
        tee_local $l14
        f64.lt
        if $I31
          get_local $l14
          set_local $l13
        end
        get_local $l14
        f64.const 0x1p-1 (;=0.5;)
        f64.gt
        if $I32
          get_local $l6
          get_local $l7
          get_local $l0
          f64.convert_s/i32
          call $f72
          get_local $l1
          i32.load
          tee_local $l0
          get_local $l5
          i32.load
          i32.eq
          if $I33
            get_local $l3
            get_local $l6
            call $f73
          else
            get_local $l0
            get_local $l6
            i64.load
            i64.store
            get_local $l0
            get_local $l6
            i64.load offset=8
            i64.store offset=8
            get_local $l1
            get_local $l0
            i32.const 16
            i32.add
            i32.store
          end
          get_local $l13
          get_local $l4
          f64.load
          tee_local $l14
          f64.lt
          if $I34
            get_local $l14
            set_local $l13
          end
        end
        get_local $p0
        i32.const 4
        i32.add
        tee_local $p0
        get_local $l2
        i32.ne
        br_if $L30
      end
      get_local $l3
      i32.load
      tee_local $l0
      get_local $l1
      i32.load
      tee_local $l5
      i32.eq
      if $I35
        f64.const -0x1p+0 (;=-1;)
        set_local $l13
      else
        get_local $l13
        f64.const 0x1.dc28f5c28f5c3p-1 (;=0.93;)
        f64.mul
        set_local $l13
        get_local $l0
        set_local $p0
        get_local $p1
        f64.convert_s/i32
        block $B36 (result f64)
          block $B37
            loop $L38
              get_local $p0
              f64.load offset=8
              get_local $l13
              f64.ge
              br_if $B37
              get_local $p0
              i32.const 16
              i32.add
              tee_local $p0
              get_local $l5
              i32.ne
              br_if $L38
            end
            f64.const 0x0p+0 (;=0;)
            br $B36
          end
          get_local $p0
          f64.load
        end
        tee_local $l13
        f64.div
        tee_local $l13
        f64.const 0x1.4p+6 (;=80;)
        f64.gt
        i32.eqz
        if $I39
          f64.const -0x1p+0 (;=-1;)
          set_local $l13
        end
      end
      get_local $l0
      if $I40
        get_local $l1
        get_local $l0
        i32.store
        get_local $l0
        call $_free
      end
      get_local $l8
      i32.load
      set_local $p0
    end
    get_local $p0
    if $I41
      get_local $l10
      get_local $p0
      i32.store
      get_local $p0
      call $_free
    end
    get_local $l7
    i32.load
    tee_local $p0
    i32.eqz
    if $I42
      get_local $l6
      set_global $g5
      get_local $l13
      return
    end
    get_local $l9
    get_local $p0
    i32.store
    get_local $p0
    call $_free
    get_local $l6
    set_global $g5
    get_local $l13)
  (func $_get_pitch_mpm_c (type $t11) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result f64)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 f64)
    get_global $g5
    set_local $l2
    get_global $g5
    i32.const 32
    i32.add
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      i32.const 32
      call $env.abortStackOverflow
    end
    get_local $l2
    i32.const 8
    i32.add
    tee_local $l0
    i32.const 0
    i32.store
    get_local $l0
    i32.const 4
    i32.add
    tee_local $l5
    i32.const 0
    i32.store
    get_local $l0
    i32.const 8
    i32.add
    tee_local $l6
    i32.const 0
    i32.store
    block $B1
      get_local $p1
      if $I2
        get_local $p1
        i32.const 536870911
        i32.gt_u
        if $I3
          call $env._abort
        end
        get_local $l0
        get_local $p1
        i32.const 3
        i32.shl
        tee_local $l3
        call $f25
        tee_local $l4
        i32.store
        get_local $l6
        get_local $l4
        get_local $p1
        i32.const 3
        i32.shl
        i32.add
        tee_local $l1
        i32.store
        get_local $l4
        i32.const 0
        get_local $l3
        call $f52
        drop
        get_local $l5
        get_local $l1
        i32.store
        i32.const 0
        set_local $l3
        get_local $l1
        set_local $l4
        loop $L4
          get_local $l2
          get_local $p0
          get_local $l3
          i32.const 2
          i32.shl
          i32.add
          f32.load
          f64.promote/f32
          tee_local $l7
          f64.store
          get_local $l1
          get_local $l4
          i32.lt_u
          if $I5
            get_local $l1
            get_local $l7
            f64.store
            get_local $l5
            get_local $l1
            i32.const 8
            i32.add
            i32.store
          else
            get_local $l0
            get_local $l2
            call $f31
          end
          get_local $l3
          i32.const 1
          i32.add
          tee_local $l3
          get_local $p1
          i32.ge_s
          br_if $B1
          get_local $l5
          i32.load
          set_local $l1
          get_local $l6
          i32.load
          set_local $l4
          br $L4
        end
        unreachable
      end
    end
    get_local $l0
    get_local $p2
    call $f45
    set_local $l7
    get_local $l0
    i32.load
    tee_local $p0
    i32.eqz
    if $I6
      get_local $l2
      set_global $g5
      get_local $l7
      return
    end
    get_local $l5
    get_local $p0
    i32.store
    get_local $p0
    call $_free
    get_local $l2
    set_global $g5
    get_local $l7)
  (func $getTempRet0 (type $t7) (result i32)
    get_global $g9)
  (func $f48 (type $t1)
    i32.const 2
    call $env.nullFunc_v)
  (func $setTempRet0 (type $t6) (param $p0 i32)
    get_local $p0
    set_global $g9)
  (func $dynCall_vi (type $t10) (param $p0 i32) (param $p1 i32)
    get_local $p1
    get_local $p0
    i32.const 15
    i32.and
    i32.const 13
    i32.add
    call_indirect (type $t6))
  (func $dynCall_v (type $t6) (param $p0 i32)
    i32.const 12
    call_indirect (type $t1))
  (func $f52 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    get_local $p0
    get_local $p2
    i32.add
    set_local $l1
    get_local $p1
    i32.const 255
    i32.and
    set_local $p1
    get_local $p2
    i32.const 67
    i32.ge_s
    if $I0
      loop $L1
        get_local $p0
        i32.const 3
        i32.and
        if $I2
          get_local $p0
          get_local $p1
          i32.store8
          get_local $p0
          i32.const 1
          i32.add
          set_local $p0
          br $L1
        end
      end
      get_local $l1
      i32.const -4
      i32.and
      tee_local $l2
      i32.const -64
      i32.add
      set_local $l3
      get_local $p1
      get_local $p1
      i32.const 8
      i32.shl
      i32.or
      get_local $p1
      i32.const 16
      i32.shl
      i32.or
      get_local $p1
      i32.const 24
      i32.shl
      i32.or
      set_local $l0
      loop $L3
        get_local $p0
        get_local $l3
        i32.le_s
        if $I4
          get_local $p0
          get_local $l0
          i32.store
          get_local $p0
          get_local $l0
          i32.store offset=4
          get_local $p0
          get_local $l0
          i32.store offset=8
          get_local $p0
          get_local $l0
          i32.store offset=12
          get_local $p0
          get_local $l0
          i32.store offset=16
          get_local $p0
          get_local $l0
          i32.store offset=20
          get_local $p0
          get_local $l0
          i32.store offset=24
          get_local $p0
          get_local $l0
          i32.store offset=28
          get_local $p0
          get_local $l0
          i32.store offset=32
          get_local $p0
          get_local $l0
          i32.store offset=36
          get_local $p0
          get_local $l0
          i32.store offset=40
          get_local $p0
          get_local $l0
          i32.store offset=44
          get_local $p0
          get_local $l0
          i32.store offset=48
          get_local $p0
          get_local $l0
          i32.store offset=52
          get_local $p0
          get_local $l0
          i32.store offset=56
          get_local $p0
          get_local $l0
          i32.store offset=60
          get_local $p0
          i32.const -64
          i32.sub
          set_local $p0
          br $L3
        end
      end
      loop $L5
        get_local $p0
        get_local $l2
        i32.lt_s
        if $I6
          get_local $p0
          get_local $l0
          i32.store
          get_local $p0
          i32.const 4
          i32.add
          set_local $p0
          br $L5
        end
      end
    end
    loop $L7
      get_local $p0
      get_local $l1
      i32.lt_s
      if $I8
        get_local $p0
        get_local $p1
        i32.store8
        get_local $p0
        i32.const 1
        i32.add
        set_local $p0
        br $L7
      end
    end
    get_local $l1
    get_local $p2
    i32.sub)
  (func $f53 (type $t6) (param $p0 i32)
    (local $l0 i32) (local $l1 i32)
    get_local $p0
    i32.load
    i32.const -12
    i32.add
    tee_local $l0
    i32.const 8
    i32.add
    tee_local $l1
    i32.load
    set_local $p0
    get_local $l1
    get_local $p0
    i32.const -1
    i32.add
    i32.store
    get_local $p0
    i32.const -1
    i32.add
    i32.const 0
    i32.lt_s
    if $I0
      get_local $l0
      call $_free
    end)
  (func $f54 (type $t5) (param $p0 i32) (result i32)
    get_local $p0
    i32.const 4
    i32.add
    i32.load)
  (func $setThrew (type $t10) (param $p0 i32) (param $p1 i32)
    get_global $g7
    i32.eqz
    if $I0
      get_local $p0
      set_global $g7
      get_local $p1
      set_global $g8
    end)
  (func $f56 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l0 i32)
    get_local $p0
    get_local $p1
    i32.load offset=8
    i32.eq
    if $I0
      i32.const 0
      get_local $p1
      get_local $p2
      get_local $p3
      call $f39
    else
      get_local $p0
      i32.load offset=8
      tee_local $l0
      get_local $p1
      get_local $p2
      get_local $p3
      get_local $l0
      i32.load
      i32.load offset=28
      i32.const 3
      i32.and
      i32.const 29
      i32.add
      call_indirect (type $t2)
    end)
  (func $f57 (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    block $B0
      get_local $p0
      get_local $p1
      i32.load offset=8
      i32.eq
      if $I1
        get_local $p1
        i32.load offset=4
        get_local $p2
        i32.eq
        if $I2
          get_local $p1
          i32.const 28
          i32.add
          tee_local $p0
          i32.load
          i32.const 1
          i32.ne
          if $I3
            get_local $p0
            get_local $p3
            i32.store
          end
        end
      else
        get_local $p0
        get_local $p1
        i32.load
        i32.ne
        if $I4
          get_local $p0
          i32.load offset=8
          tee_local $p0
          get_local $p1
          get_local $p2
          get_local $p3
          get_local $p4
          get_local $p0
          i32.load
          i32.load offset=24
          i32.const 3
          i32.and
          i32.const 33
          i32.add
          call_indirect (type $t4)
          br $B0
        end
        get_local $p1
        i32.load offset=16
        get_local $p2
        i32.ne
        if $I5
          get_local $p1
          i32.const 20
          i32.add
          tee_local $l0
          i32.load
          get_local $p2
          i32.ne
          if $I6
            get_local $p1
            get_local $p3
            i32.store offset=32
            get_local $p1
            i32.const 44
            i32.add
            tee_local $p3
            i32.load
            i32.const 4
            i32.eq
            br_if $B0
            get_local $p1
            i32.const 52
            i32.add
            tee_local $l1
            i32.const 0
            i32.store8
            get_local $p1
            i32.const 53
            i32.add
            tee_local $l2
            i32.const 0
            i32.store8
            get_local $p0
            i32.load offset=8
            tee_local $p0
            get_local $p1
            get_local $p2
            get_local $p2
            i32.const 1
            get_local $p4
            get_local $p0
            i32.load
            i32.load offset=20
            i32.const 3
            i32.and
            i32.const 37
            i32.add
            call_indirect (type $t3)
            get_local $p3
            block $B7 (result i32)
              block $B8
                get_local $l2
                i32.load8_s
                if $I9 (result i32)
                  get_local $l1
                  i32.load8_s
                  br_if $B8
                  i32.const 1
                else
                  i32.const 0
                end
                set_local $p0
                get_local $l0
                get_local $p2
                i32.store
                get_local $p1
                i32.const 40
                i32.add
                tee_local $p2
                get_local $p2
                i32.load
                i32.const 1
                i32.add
                i32.store
                get_local $p1
                i32.load offset=36
                i32.const 1
                i32.eq
                if $I10
                  get_local $p1
                  i32.load offset=24
                  i32.const 2
                  i32.eq
                  if $I11
                    get_local $p1
                    i32.const 1
                    i32.store8 offset=54
                    get_local $p0
                    br_if $B8
                    i32.const 4
                    br $B7
                  end
                end
                get_local $p0
                br_if $B8
                i32.const 4
                br $B7
              end
              i32.const 3
            end
            i32.store
            br $B0
          end
        end
        get_local $p3
        i32.const 1
        i32.eq
        if $I12
          get_local $p1
          i32.const 1
          i32.store offset=32
        end
      end
    end)
  (func $f58 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    (local $l0 i32)
    get_local $p0
    get_local $p1
    i32.load offset=8
    i32.eq
    if $I0
      i32.const 0
      get_local $p1
      get_local $p2
      get_local $p3
      get_local $p4
      call $f38
    else
      get_local $p0
      i32.load offset=8
      tee_local $l0
      get_local $p1
      get_local $p2
      get_local $p3
      get_local $p4
      get_local $p5
      get_local $l0
      i32.load
      i32.load offset=20
      i32.const 3
      i32.and
      i32.const 37
      i32.add
      call_indirect (type $t3)
    end)
  (func $f59 (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    get_global $g5
    set_local $l0
    get_global $g5
    i32.const -64
    i32.sub
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      i32.const 64
      call $env.abortStackOverflow
    end
    get_local $p0
    get_local $p0
    i32.load
    tee_local $l3
    i32.const -8
    i32.add
    i32.load
    i32.add
    set_local $l4
    get_local $l3
    i32.const -4
    i32.add
    i32.load
    set_local $l2
    get_local $l0
    get_local $p2
    i32.store
    get_local $l0
    get_local $p0
    i32.store offset=4
    get_local $l0
    get_local $p1
    i32.store offset=8
    get_local $l0
    get_local $p3
    i32.store offset=12
    get_local $l0
    i32.const 20
    i32.add
    set_local $p0
    get_local $l0
    i32.const 24
    i32.add
    set_local $l5
    get_local $l0
    i32.const 28
    i32.add
    set_local $l3
    get_local $l0
    i32.const 32
    i32.add
    set_local $p3
    get_local $l0
    i32.const 40
    i32.add
    set_local $p1
    get_local $l0
    i32.const 16
    i32.add
    tee_local $l1
    i64.const 0
    i64.store align=4
    get_local $l1
    i64.const 0
    i64.store offset=8 align=4
    get_local $l1
    i64.const 0
    i64.store offset=16 align=4
    get_local $l1
    i64.const 0
    i64.store offset=24 align=4
    get_local $l1
    i32.const 0
    i32.store offset=32
    get_local $l1
    i32.const 0
    i32.store16 offset=36
    get_local $l1
    i32.const 0
    i32.store8 offset=38
    block $B1
      get_local $l2
      get_local $p2
      i32.eq
      if $I2 (result i32)
        get_local $l0
        i32.const 1
        i32.store offset=48
        get_local $l2
        get_local $l0
        get_local $l4
        get_local $l4
        i32.const 1
        i32.const 0
        get_local $l2
        i32.load
        i32.load offset=20
        i32.const 3
        i32.and
        i32.const 37
        i32.add
        call_indirect (type $t3)
        get_local $l5
        i32.load
        i32.const 1
        i32.eq
        if $I3 (result i32)
          get_local $l4
        else
          i32.const 0
        end
      else
        get_local $l2
        get_local $l0
        get_local $l4
        i32.const 1
        i32.const 0
        get_local $l2
        i32.load
        i32.load offset=24
        i32.const 3
        i32.and
        i32.const 33
        i32.add
        call_indirect (type $t4)
        block $B4
          block $B5
            block $B6
              block $B7
                get_local $l0
                i32.load offset=36
                br_table $B7 $B6 $B5
              end
              get_local $p0
              i32.load
              set_local $p0
              get_local $p1
              i32.load
              i32.const 1
              i32.eq
              get_local $l3
              i32.load
              i32.const 1
              i32.eq
              i32.and
              get_local $p3
              i32.load
              i32.const 1
              i32.eq
              i32.and
              i32.eqz
              if $I8
                i32.const 0
                set_local $p0
              end
              br $B1
            end
            br $B4
          end
          i32.const 0
          set_local $p0
          br $B1
        end
        get_local $l5
        i32.load
        i32.const 1
        i32.ne
        if $I9
          get_local $p1
          i32.load
          i32.eqz
          get_local $l3
          i32.load
          i32.const 1
          i32.eq
          i32.and
          get_local $p3
          i32.load
          i32.const 1
          i32.eq
          i32.and
          i32.eqz
          if $I10
            i32.const 0
            set_local $p0
            br $B1
          end
        end
        get_local $l1
        i32.load
      end
      set_local $p0
    end
    get_local $l0
    set_global $g5
    get_local $p0)
  (func $f60 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    get_local $p0
    get_local $p1
    i32.load offset=8
    i32.eq
    if $I0
      i32.const 0
      get_local $p1
      get_local $p2
      get_local $p3
      call $f39
    end)
  (func $f61 (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    block $B0
      get_local $p0
      get_local $p1
      i32.load offset=8
      i32.eq
      if $I1
        get_local $p1
        i32.load offset=4
        get_local $p2
        i32.eq
        if $I2
          get_local $p1
          i32.const 28
          i32.add
          tee_local $p0
          i32.load
          i32.const 1
          i32.ne
          if $I3
            get_local $p0
            get_local $p3
            i32.store
          end
        end
      else
        get_local $p0
        get_local $p1
        i32.load
        i32.eq
        if $I4
          get_local $p1
          i32.load offset=16
          get_local $p2
          i32.ne
          if $I5
            get_local $p1
            i32.const 20
            i32.add
            tee_local $p0
            i32.load
            get_local $p2
            i32.ne
            if $I6
              get_local $p1
              get_local $p3
              i32.store offset=32
              get_local $p0
              get_local $p2
              i32.store
              get_local $p1
              i32.const 40
              i32.add
              tee_local $p0
              get_local $p0
              i32.load
              i32.const 1
              i32.add
              i32.store
              get_local $p1
              i32.load offset=36
              i32.const 1
              i32.eq
              if $I7
                get_local $p1
                i32.load offset=24
                i32.const 2
                i32.eq
                if $I8
                  get_local $p1
                  i32.const 1
                  i32.store8 offset=54
                end
              end
              get_local $p1
              i32.const 4
              i32.store offset=44
              br $B0
            end
          end
          get_local $p3
          i32.const 1
          i32.eq
          if $I9
            get_local $p1
            i32.const 1
            i32.store offset=32
          end
        end
      end
    end)
  (func $establishStackSpace (type $t10) (param $p0 i32) (param $p1 i32)
    get_local $p0
    set_global $g5
    get_local $p1
    set_global $g6)
  (func $f63 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    get_local $p0
    get_local $p1
    i32.load offset=8
    i32.eq
    if $I0
      i32.const 0
      get_local $p1
      get_local $p2
      get_local $p3
      get_local $p4
      call $f38
    end)
  (func $f64 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32) (local $l1 i32)
    get_global $g5
    set_local $l0
    get_global $g5
    i32.const -64
    i32.sub
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      i32.const 64
      call $env.abortStackOverflow
    end
    get_local $p0
    get_local $p1
    i32.eq
    if $I1 (result i32)
      i32.const 1
    else
      get_local $p1
      if $I2 (result i32)
        get_local $p1
        i32.const 1048
        i32.const 1032
        i32.const 0
        call $f59
        tee_local $p1
        if $I3 (result i32)
          get_local $l0
          i32.const 4
          i32.add
          tee_local $l1
          i64.const 0
          i64.store align=4
          get_local $l1
          i64.const 0
          i64.store offset=8 align=4
          get_local $l1
          i64.const 0
          i64.store offset=16 align=4
          get_local $l1
          i64.const 0
          i64.store offset=24 align=4
          get_local $l1
          i64.const 0
          i64.store offset=32 align=4
          get_local $l1
          i64.const 0
          i64.store offset=40 align=4
          get_local $l1
          i32.const 0
          i32.store offset=48
          get_local $l0
          get_local $p1
          i32.store
          get_local $l0
          get_local $p0
          i32.store offset=8
          get_local $l0
          i32.const -1
          i32.store offset=12
          get_local $l0
          i32.const 1
          i32.store offset=48
          get_local $p1
          get_local $l0
          get_local $p2
          i32.load
          i32.const 1
          get_local $p1
          i32.load
          i32.load offset=28
          i32.const 3
          i32.and
          i32.const 29
          i32.add
          call_indirect (type $t2)
          get_local $l0
          i32.load offset=24
          i32.const 1
          i32.eq
          if $I4 (result i32)
            get_local $p2
            get_local $l0
            i32.load offset=16
            i32.store
            i32.const 1
          else
            i32.const 0
          end
        else
          i32.const 0
        end
      else
        i32.const 0
      end
    end
    set_local $p0
    get_local $l0
    set_global $g5
    get_local $p0)
  (func $f65 (type $t10) (param $p0 i32) (param $p1 i32)
    (local $l0 i32) (local $l1 i32)
    get_local $p1
    call $f66
    tee_local $l1
    i32.const 13
    i32.add
    call $f25
    tee_local $l0
    get_local $l1
    i32.store
    get_local $l0
    get_local $l1
    i32.store offset=4
    get_local $l0
    i32.const 0
    i32.store offset=8
    get_local $l0
    i32.const 12
    i32.add
    tee_local $l0
    get_local $p1
    get_local $l1
    i32.const 1
    i32.add
    call $f27
    drop
    get_local $p0
    get_local $l0
    i32.store)
  (func $f66 (type $t5) (param $p0 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    block $B0
      get_local $p0
      tee_local $l1
      i32.const 3
      i32.and
      if $I1
        get_local $l1
        tee_local $l0
        set_local $p0
        loop $L2
          get_local $l0
          i32.load8_s
          i32.eqz
          br_if $B0
          get_local $l0
          i32.const 1
          i32.add
          tee_local $l0
          tee_local $p0
          i32.const 3
          i32.and
          br_if $L2
        end
        get_local $l0
        set_local $p0
      end
      loop $L3
        get_local $p0
        i32.const 4
        i32.add
        set_local $l0
        get_local $p0
        i32.load
        tee_local $l2
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.xor
        get_local $l2
        i32.const -16843009
        i32.add
        i32.and
        i32.eqz
        if $I4
          get_local $l0
          set_local $p0
          br $L3
        end
      end
      get_local $l2
      i32.const 255
      i32.and
      if $I5
        loop $L6
          get_local $p0
          i32.const 1
          i32.add
          tee_local $p0
          i32.load8_s
          br_if $L6
        end
      end
    end
    get_local $p0
    get_local $l1
    i32.sub)
  (func $stackRestore (type $t6) (param $p0 i32)
    get_local $p0
    set_global $g5)
  (func $f68 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32) (local $l1 i32)
    get_global $g5
    set_local $l0
    get_global $g5
    i32.const 32
    i32.add
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      i32.const 32
      call $env.abortStackOverflow
    end
    get_local $l0
    i32.const 16
    i32.add
    set_local $l1
    get_local $p0
    i32.const 4
    i32.store offset=36
    get_local $p0
    i32.load
    i32.const 64
    i32.and
    i32.eqz
    if $I1
      get_local $l0
      get_local $p0
      i32.load offset=60
      i32.store
      get_local $l0
      i32.const 21523
      i32.store offset=4
      get_local $l0
      get_local $l1
      i32.store offset=8
      i32.const 54
      get_local $l0
      call $env.___syscall54
      if $I2
        get_local $p0
        i32.const -1
        i32.store8 offset=75
      end
    end
    get_local $p0
    get_local $p1
    get_local $p2
    call $f42
    set_local $p0
    get_local $l0
    set_global $g5
    get_local $p0)
  (func $___errno_location (type $t7) (result i32)
    i32.const 2096)
  (func $f70 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32)
    get_global $g5
    set_local $l0
    get_global $g5
    i32.const 32
    i32.add
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      i32.const 32
      call $env.abortStackOverflow
    end
    get_local $l0
    get_local $p0
    i32.load offset=60
    i32.store
    get_local $l0
    i32.const 0
    i32.store offset=4
    get_local $l0
    get_local $p1
    i32.store offset=8
    get_local $l0
    get_local $l0
    i32.const 20
    i32.add
    tee_local $p0
    i32.store offset=12
    get_local $l0
    get_local $p2
    i32.store offset=16
    i32.const 140
    get_local $l0
    call $env.___syscall140
    tee_local $p1
    i32.const -4096
    i32.gt_u
    if $I1 (result i32)
      i32.const 2096
      i32.const 0
      get_local $p1
      i32.sub
      i32.store
      i32.const -1
    else
      get_local $p1
    end
    i32.const 0
    i32.lt_s
    if $I2 (result i32)
      get_local $p0
      i32.const -1
      i32.store
      i32.const -1
    else
      get_local $p0
      i32.load
    end
    set_local $p0
    get_local $l0
    set_global $g5
    get_local $p0)
  (func $f71 (type $t5) (param $p0 i32) (result i32)
    (local $l0 i32)
    get_global $g5
    set_local $l0
    get_global $g5
    i32.const 16
    i32.add
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      i32.const 16
      call $env.abortStackOverflow
    end
    get_local $l0
    get_local $p0
    i32.load offset=60
    i32.store
    i32.const 6
    get_local $l0
    call $env.___syscall6
    tee_local $p0
    i32.const -4096
    i32.gt_u
    if $I1
      i32.const 2096
      i32.const 0
      get_local $p0
      i32.sub
      i32.store
      i32.const -1
      set_local $p0
    end
    get_local $l0
    set_global $g5
    get_local $p0)
  (func $f72 (type $t13) (param $p0 i32) (param $p1 i32) (param $p2 f64)
    (local $l0 i32) (local $l1 i32) (local $l2 f64) (local $l3 f64) (local $l4 f64) (local $l5 f64)
    block $B0 (result f64)
      get_local $p2
      f64.const 0x1p+0 (;=1;)
      f64.lt
      if $I1 (result f64)
        get_local $p1
        i32.load
        tee_local $p1
        get_local $p2
        i32.trunc_u/f64
        i32.const 3
        i32.shl
        i32.add
        set_local $l1
        f64.const 0x1p+0 (;=1;)
      else
        get_local $p1
        i32.load
        tee_local $l1
        set_local $l0
        get_local $p1
        i32.load offset=4
        get_local $l1
        i32.sub
        i32.const 3
        i32.shr_s
        i32.const -1
        i32.add
        f64.convert_s/i32
        get_local $p2
        f64.lt
        if $I2
          get_local $l0
          get_local $p2
          i32.trunc_u/f64
          i32.const 3
          i32.shl
          i32.add
          set_local $l1
          get_local $l0
          set_local $p1
          f64.const -0x1p+0 (;=-1;)
          br $B0
        end
        get_local $l0
        get_local $p2
        f64.const 0x1p+0 (;=1;)
        f64.add
        i32.trunc_u/f64
        i32.const 3
        i32.shl
        i32.add
        f64.load
        tee_local $l3
        get_local $l0
        get_local $p2
        f64.const -0x1p+0 (;=-1;)
        f64.add
        i32.trunc_u/f64
        i32.const 3
        i32.shl
        i32.add
        f64.load
        tee_local $l5
        f64.add
        get_local $l0
        get_local $p2
        i32.trunc_u/f64
        i32.const 3
        i32.shl
        i32.add
        f64.load
        tee_local $l4
        f64.const 0x1p+1 (;=2;)
        f64.mul
        f64.sub
        set_local $l2
        get_local $l5
        get_local $l3
        f64.sub
        set_local $l3
        get_local $l2
        f64.const 0x0p+0 (;=0;)
        f64.ne
        if $I3
          get_local $p0
          get_local $l3
          get_local $l2
          f64.const 0x1p+1 (;=2;)
          f64.mul
          f64.div
          get_local $p2
          f64.add
          f64.store
          get_local $p0
          get_local $l4
          get_local $l3
          get_local $l3
          f64.mul
          get_local $l2
          f64.const 0x1p+3 (;=8;)
          f64.mul
          f64.div
          f64.sub
          f64.store offset=8
        else
          get_local $p0
          get_local $p2
          f64.store
          get_local $p0
          get_local $l4
          f64.store offset=8
        end
        return
      end
    end
    set_local $l2
    get_local $p1
    get_local $l1
    f64.load
    get_local $p1
    get_local $l2
    get_local $p2
    f64.add
    tee_local $l2
    i32.trunc_u/f64
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.le
    if $I4 (result f64)
      get_local $p2
    else
      get_local $l2
    end
    i32.trunc_s/f64
    tee_local $p1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    set_local $p2
    get_local $p0
    get_local $p1
    f64.convert_s/i32
    f64.store
    get_local $p0
    get_local $p2
    f64.store offset=8)
  (func $f73 (type $t10) (param $p0 i32) (param $p1 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    get_local $p0
    i32.const 4
    i32.add
    tee_local $l5
    i32.load
    get_local $p0
    i32.load
    tee_local $l2
    i32.sub
    tee_local $l4
    i32.const 4
    i32.shr_s
    tee_local $l6
    i32.const 1
    i32.add
    tee_local $l1
    i32.const 268435455
    i32.gt_u
    if $I0
      call $env._abort
    end
    get_local $p0
    i32.const 8
    i32.add
    tee_local $l7
    i32.load
    get_local $l2
    i32.sub
    tee_local $l0
    i32.const 4
    i32.shr_s
    i32.const 134217727
    i32.lt_u
    set_local $l8
    get_local $l0
    i32.const 3
    i32.shr_s
    tee_local $l0
    get_local $l1
    i32.ge_u
    if $I1
      get_local $l0
      set_local $l1
    end
    get_local $l8
    if $I2 (result i32)
      get_local $l1
    else
      i32.const 268435455
      tee_local $l1
    end
    if $I3
      get_local $l1
      i32.const 268435455
      i32.gt_u
      if $I4
        i32.const 8
        call $env.___cxa_allocate_exception
        tee_local $l0
        i32.const 1368
        call $f29
        get_local $l0
        i32.const 1356
        i32.store
        get_local $l0
        i32.const 1104
        i32.const 6
        call $env.___cxa_throw
      else
        get_local $l1
        i32.const 4
        i32.shl
        call $f25
        tee_local $l9
        set_local $l3
      end
    end
    get_local $l3
    get_local $l6
    i32.const 4
    i32.shl
    i32.add
    tee_local $l0
    get_local $p1
    i64.load
    i64.store
    get_local $l0
    get_local $p1
    i64.load offset=8
    i64.store offset=8
    get_local $l4
    i32.const 0
    i32.gt_s
    if $I5
      get_local $l9
      get_local $l2
      get_local $l4
      call $f27
      drop
    end
    get_local $p0
    get_local $l3
    i32.store
    get_local $l5
    get_local $l0
    i32.const 16
    i32.add
    i32.store
    get_local $l7
    get_local $l3
    get_local $l1
    i32.const 4
    i32.shl
    i32.add
    i32.store
    get_local $l2
    i32.eqz
    if $I6
      return
    end
    get_local $l2
    call $_free)
  (func $stackSave (type $t7) (result i32)
    get_global $g5)
  (func $stackAlloc (type $t5) (param $p0 i32) (result i32)
    (local $l0 i32)
    get_global $g5
    set_local $l0
    get_global $g5
    get_local $p0
    i32.add
    set_global $g5
    get_global $g5
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    set_global $g5
    get_global $g5
    get_global $g6
    i32.ge_s
    if $I0
      get_local $p0
      call $env.abortStackOverflow
    end
    get_local $l0)
  (global $g4 (mut i32) (get_global $env.DYNAMICTOP_PTR))
  (global $g5 (mut i32) (get_global $env.STACKTOP))
  (global $g6 (mut i32) (get_global $env.STACK_MAX))
  (global $g7 (mut i32) (i32.const 0))
  (global $g8 (mut i32) (i32.const 0))
  (global $g9 (mut i32) (i32.const 0))
  (export "___errno_location" (func $___errno_location))
  (export "_fflush" (func $_fflush))
  (export "_free" (func $_free))
  (export "_get_pitch_mpm_c" (func $_get_pitch_mpm_c))
  (export "_malloc" (func $_malloc))
  (export "_sbrk" (func $_sbrk))
  (export "dynCall_v" (func $dynCall_v))
  (export "dynCall_vi" (func $dynCall_vi))
  (export "establishStackSpace" (func $establishStackSpace))
  (export "getTempRet0" (func $getTempRet0))
  (export "setTempRet0" (func $setTempRet0))
  (export "setThrew" (func $setThrew))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackRestore" (func $stackRestore))
  (export "stackSave" (func $stackSave))
  (elem (get_global $env.tableBase) $f35 $f71 $f54 $f35 $f26 $f68 $f70 $f64 $f42 $f26 $f26 $f26 $f48 $f23 $f28 $f40 $f28 $f28 $f40 $f37 $f36 $f36 $f23 $f23 $f23 $f23 $f23 $f23 $f23 $f34 $f60 $f56 $f34 $f33 $f61 $f57 $f33 $f32 $f63 $f58 $f32)
  (data (i32.const 1024) "\e8\04\00\00\9c\05\00\00\10\05\00\00\fc\05\00\00\18\04\00\00\00\00\00\00\10\05\00\00\a9\05\00\00(\04\00\00\00\00\00\00\e8\04\00\00\ca\05\00\00\10\05\00\00\d7\05\00\00\08\04\00\00\00\00\00\00\10\05\00\00\1e\06\00\00\00\04\00\00\00\00\00\00\10\05\00\00.\06\00\00@\04\00\00\00\00\00\00\05")
  (data (i32.const 1132) "\01")
  (data (i32.const 1156) "\01\00\00\00\02\00\00\00L\08\00\00\00\04")
  (data (i32.const 1180) "\01")
  (data (i32.const 1195) "\0a\ff\ff\ff\ff")
  (data (i32.const 1244) "`\04\00\00\00\00\00\00\08\04\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\000\04\00\00\01\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\03\00\00\00\02\00\00\00\02\00\00\00\02\00\00\00\00\00\00\00@\04\00\00\06\00\00\00\07\00\00\00\02\00\00\00\00\00\00\00P\04\00\00\06\00\00\00\08\00\00\00\02\00\00\00allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size\00St9exception\00N10__cxxabiv116__shim_type_infoE\00St9type_info\00N10__cxxabiv120__si_class_type_infoE\00N10__cxxabiv117__class_type_infoE\00St11logic_error\00St12length_error"))
