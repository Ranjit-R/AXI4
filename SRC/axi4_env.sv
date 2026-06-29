class axi4_env extends uvm_env;

  `uvm_component_utils(axi4_env)

  axi4_agent      agt;
  axi4_scoreboard sb;

  function new(string name, uvm_component parent);
    super.new(name,parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    agt = axi4_agent::type_id::create("agt", this);
    sb  = axi4_scoreboard::type_id::create("sb", this);
  endfunction

  virtual function void connect_phase(uvm_phase phase);
    agt.mon.mon_ap.connect(sb.sb_imp);
  endfunction

endclass
