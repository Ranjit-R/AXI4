class axi4_transaction extends uvm_sequence_item;

  rand bit [3:0]   awid;
  rand bit [31:0]  awaddr;
  rand bit [3:0]   awlen;
  rand bit [2:0]   awsize;
  rand bit [1:0]   awburst;

  rand bit [63:0]  wdata;
  rand bit [3:0]   wstrb;
  rand bit         wlast;

  rand bit [3:0]   arid;
  rand bit [31:0]  araddr;
  rand bit [3:0]   arlen;
  rand bit [2:0]   arsize;
  rand bit [1:0]   arburst;

       bit [1:0]   bresp;
       bit [1:0]   rresp;
       bit [63:0]  rdata;

  `uvm_object_utils(axi4_transaction)

  function new(string name="axi4_transaction");
    super.new(name);
  endfunction

endclass
