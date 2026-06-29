class axi4_test extends uvm_test;

  `uvm_component_utils(axi4_test)

  axi4_env env;
  axi4_sequence seq;

  function new(string name, uvm_component parent);
    super.new(name,parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    env = axi4_env::type_id::create("env", this);
  endfunction

  virtual task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = axi4_sequence::type_id::create("seq");
    seq.start(env.agt.seqr);

    phase.drop_objection(this);
  endtask

endclass
