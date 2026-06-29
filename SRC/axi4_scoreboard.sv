class axi4_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(axi4_scoreboard)

  uvm_analysis_imp #(axi4_transaction, axi4_scoreboard) sb_imp;

  function new(string name, uvm_component parent);
    super.new(name,parent);
    sb_imp = new("sb_imp", this);
  endfunction

  virtual function void write(axi4_transaction tx);

    // Compare expected vs actual here

  endfunction

endclass
