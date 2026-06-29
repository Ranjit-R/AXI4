class axi4_sequence extends uvm_sequence #(axi4_transaction);

  `uvm_object_utils(axi4_sequence)

  axi4_transaction tx;

  function new(string name="axi4_sequence");
    super.new(name);
  endfunction

  virtual task body();
    tx = axi4_transaction::type_id::create("tx");

    start_item(tx);
    assert(tx.randomize());
    finish_item(tx);
  endtask

endclass
