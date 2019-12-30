# TestLogger

This should crash on 1.10-dev when calling `mix deps.get`

with the following error:

```text
=CRASH REPORT==== 30-Dec-2019::13:46:25.395784 ===
  crasher:
    initial call: Elixir.Logger.Watcher:init/1
    pid: <0.118.0>
    registered_name: []
    exception exit: {'EXIT',
                        {undef,
                            [{'Elixir.RingLogger',init,
                                 ['Elixir.RingLogger'],
                                 []},
                             {gen_event,server_add_handler,4,
                                 [{file,"gen_event.erl"},{line,473}]},
                             {gen_event,handle_msg,6,
                                 [{file,"gen_event.erl"},{line,318}]},
                             {proc_lib,init_p_do_apply,3,
                                 [{file,"proc_lib.erl"},{line,249}]}]}}
      in function  gen_server:init_it/6 (gen_server.erl, line 358)
    ancestors: ['Elixir.Logger.BackendSupervisor',
                  'Elixir.Logger.Supervisor',<0.113.0>]
    message_queue_len: 0
    messages: []
    links: [<0.117.0>,<0.115.0>]
    dictionary: []
    trap_exit: true
    status: running
    heap_size: 376
    stack_size: 27
    reductions: 250
  neighbours:

=SUPERVISOR REPORT==== 30-Dec-2019::13:46:25.407653 ===
    supervisor: {local,'Elixir.Logger.Supervisor'}
    errorContext: start_error
    reason: {'EXIT',
                {#{'__exception__' => true,
                   '__struct__' => 'Elixir.RuntimeError',
                   message =>
                       <<"EXIT when installing backend RingLogger: an exception was raised:\n    ** (UndefinedFunctionError) function RingLogger.init/1 is undefined (module RingLogger is not available)\n        RingLogger.init(RingLogger)\n        (stdlib 3.10) gen_event.erl:473: :gen_event.server_add_handler/4\n        (stdlib 3.10) gen_event.erl:318: :gen_event.handle_msg/6\n        (stdlib 3.10) proc_lib.erl:249: :proc_lib.init_p_do_apply/3">>},
                 [{'Elixir.Logger.BackendSupervisor','-start_link/1-fun-0-',
                      2,
                      [{file,"lib/logger/backend_supervisor.ex"},{line,19}]},
                  {'Elixir.Enum','-reduce/3-lists^foldl/2-0-',3,
                      [{file,"lib/enum.ex"},{line,2096}]},
                  {'Elixir.Logger.BackendSupervisor',start_link,1,
                      [{file,"lib/logger/backend_supervisor.ex"},{line,13}]},
                  {supervisor,do_start_child_i,3,
                      [{file,"supervisor.erl"},{line,379}]},
                  {supervisor,do_start_child,2,
                      [{file,"supervisor.erl"},{line,365}]},
                  {supervisor,'-start_children/2-fun-0-',3,
                      [{file,"supervisor.erl"},{line,349}]},
                  {supervisor,children_map,4,
                      [{file,"supervisor.erl"},{line,1157}]},
                  {supervisor,init_children,2,
                      [{file,"supervisor.erl"},{line,315}]}]}}
    offender: [{pid,undefined},
               {id,'Elixir.Logger.BackendSupervisor'},
               {mfargs,{'Elixir.Logger.BackendSupervisor',start_link,[[]]}},
               {restart_type,permanent},
               {shutdown,infinity},
               {child_type,supervisor}]
=CRASH REPORT==== 30-Dec-2019::13:46:25.408165 ===
  crasher:
    initial call: application_master:init/4
    pid: <0.112.0>
    registered_name: []
    exception exit: {{shutdown,
                      {failed_to_start_child,
                       'Elixir.Logger.BackendSupervisor',
                       {'EXIT',
                        {#{'__exception__' => true,
                           '__struct__' => 'Elixir.RuntimeError',
                           message =>
                            <<"EXIT when installing backend RingLogger: an exception was raised:\n    ** (UndefinedFunctionError) function RingLogger.init/1 is undefined (module RingLogger is not available)\n        RingLogger.init(RingLogger)\n        (stdlib 3.10) gen_event.erl:473: :gen_event.server_add_handler/4\n        (stdlib 3.10) gen_event.erl:318: :gen_event.handle_msg/6\n        (stdlib 3.10) proc_lib.erl:249: :proc_lib.init_p_do_apply/3">>},
                         [{'Elixir.Logger.BackendSupervisor',
                           '-start_link/1-fun-0-',2,
                           [{file,"lib/logger/backend_supervisor.ex"},
                            {line,19}]},
                          {'Elixir.Enum','-reduce/3-lists^foldl/2-0-',3,
                           [{file,"lib/enum.ex"},{line,2096}]},
                          {'Elixir.Logger.BackendSupervisor',start_link,1,
                           [{file,"lib/logger/backend_supervisor.ex"},
                            {line,13}]},
                          {supervisor,do_start_child_i,3,
                           [{file,"supervisor.erl"},{line,379}]},
                          {supervisor,do_start_child,2,
                           [{file,"supervisor.erl"},{line,365}]},
                          {supervisor,'-start_children/2-fun-0-',3,
                           [{file,"supervisor.erl"},{line,349}]},
                          {supervisor,children_map,4,
                           [{file,"supervisor.erl"},{line,1157}]},
                          {supervisor,init_children,2,
                           [{file,"supervisor.erl"},{line,315}]}]}}}},
                     {'Elixir.Logger.App',start,[normal,[]]}}
      in function  application_master:init/4 (application_master.erl, line 138)
    ancestors: [<0.111.0>]
    message_queue_len: 1
    messages: [{'EXIT',<0.113.0>,normal}]
    links: [<0.111.0>,<0.43.0>]
    dictionary: []
    trap_exit: true
    status: running
    heap_size: 987
    stack_size: 27
    reductions: 243
  neighbours:

=INFO REPORT==== 30-Dec-2019::13:46:25.408949 ===
    application: logger
    exited: {{shutdown,
                 {failed_to_start_child,'Elixir.Logger.BackendSupervisor',
                     {'EXIT',
                         {#{'__exception__' => true,
                            '__struct__' => 'Elixir.RuntimeError',
                            message =>
                                <<"EXIT when installing backend RingLogger: an exception was raised:\n    ** (UndefinedFunctionError) function Ring** (MatchError) no match of right hand side value: {:error, {{:shutdown, {:failed_to_start_child, Logger.BackendSupervisor, {:EXIT, {%RuntimeError{message: "EXIT when installing backend RingLogger: an exception was raised:\n    ** (UndefinedFunctionError) function RingLogger.init/1 is undefined (module RingLogger is not available)\n        RingLogger.init(RingLogger)\n        (stdlib 3.10) gen_event.erl:473: :gen_event.server_add_handler/4\n        (stdlib 3.10) gen_event.erl:318: :gen_event.handle_msg/6\n        (stdlib 3.10) proc_lib.erl:249: :proc_lib.init_p_do_apply/3"}, [{Logger.BackendSupervisor, :"-start_link/1-fun-0-", 2, [file: 'lib/logger/backend_supervisor.ex', line: 19]}, {Enum, :"-reduce/3-lists^foldl/2-0-", 3, [file: 'lib/enum.ex', line: 2096]}, {Logger.BackendSupervisor, :start_link, 1, [file: 'lib/logger/backend_supervisor.ex', line: 13]}, {:supervisor, :do_start_child_i, 3, [file: 'supervisor.erl', line: 379]}, {:supervisor, :do_start_child, 2, [file: 'supervisor.erl', line: 365]}, {:supervisor, :"-start_children/2-fun-0-", 3, [file: 'supervisor.erl', line: 349]}, {:supervisor, :children_map, 4, [file: 'supervisor.erl', line: 1157]}, {:supervisor, :init_children, 2, [file: 'supervisor.erl', line: 315]}]}}}}, {Logger.App, :start, [:normal, []]}}}
    (mix 1.10.0-dev) lib/mix/cli.ex:106: Mix.CLI.restart_logger/0
    (mix 1.10.0-dev) lib/mix/cli.ex:82: Mix.CLI.run_task/2
    (elixir 1.10.0-dev) lib/code.ex:917: Code.require_file/2
Logger.init/1 is undefined (module RingLogger is not available)\n        RingLogger.init(RingLogger)\n        (stdlib 3.10) gen_event.erl:473: :gen_event.server_add_handler/4\n        (stdlib 3.10) gen_event.erl:318: :gen_event.handle_msg/6\n        (stdlib 3.10) proc_lib.erl:249: :proc_lib.init_p_do_apply/3">>},
                          [{'Elixir.Logger.BackendSupervisor',
                               '-start_link/1-fun-0-',2,
                               [{file,"lib/logger/backend_supervisor.ex"},
                                {line,19}]},
                           {'Elixir.Enum','-reduce/3-lists^foldl/2-0-',3,
                               [{file,"lib/enum.ex"},{line,2096}]},
                           {'Elixir.Logger.BackendSupervisor',start_link,1,
                               [{file,"lib/logger/backend_supervisor.ex"},
                                {line,13}]},
                           {supervisor,do_start_child_i,3,
                               [{file,"supervisor.erl"},{line,379}]},
                           {supervisor,do_start_child,2,
                               [{file,"supervisor.erl"},{line,365}]},
                           {supervisor,'-start_children/2-fun-0-',3,
                               [{file,"supervisor.erl"},{line,349}]},
                           {supervisor,children_map,4,
                               [{file,"supervisor.erl"},{line,1157}]},
                           {supervisor,init_children,2,
                               [{file,"supervisor.erl"},{line,315}]}]}}}},
             {'Elixir.Logger.App',start,[normal,[]]}}
    type: temporary
```
