class axi4_monitor extends uvm_monitor;

  `uvm_component_utils(axi4_monitor)

  uvm_analysis_port #(axi4_transaction) mon_ap;

  function new(string name, uvm_component parent);
    super.new(name,parent);
    mon_ap = new("mon_ap", this);
  endfunction

  virtual task run_phase(uvm_phase phase);
    forever begin
      axi4_transaction tx;

      tx = axi4_transaction::type_id::create("tx");

      // Sample DUT signals here

      mon_ap.write(tx);
    end
  endtask

endclass
