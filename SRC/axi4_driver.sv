class axi4_driver extends uvm_driver #(axi4_transaction);

  `uvm_component_utils(axi4_driver)

  axi4_transaction tx;

  function new(string name, uvm_component parent);
    super.new(name,parent);
  endfunction

  virtual task run_phase(uvm_phase phase);
    forever begin
      seq_item_port.get_next_item(tx);

      // Drive DUT signals here

      seq_item_port.item_done();
    end
  endtask

endclass
