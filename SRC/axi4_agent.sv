class axi4_agent extends uvm_agent;

  `uvm_component_utils(axi4_agent)

  axi4_driver    drv;
  axi4_monitor   mon;
  axi4_sequencer seqr;

  function new(string name, uvm_component parent);
    super.new(name,parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    drv  = axi4_driver   ::type_id::create("drv", this);
    mon  = axi4_monitor  ::type_id::create("mon", this);
    seqr = axi4_sequencer::type_id::create("seqr", this);
  endfunction

  virtual function void connect_phase(uvm_phase phase);
    drv.seq_item_port.connect(seqr.seq_item_export);
  endfunction

endclass
