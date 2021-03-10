// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// SECDED Encoder generated by
// util/design/secded_gen.py -m 6 -k 16 -s 1592631616 -c hsiao

module prim_secded_22_16_enc (
  input        [15:0] in,
  output logic [21:0] out
);

  always_comb begin : p_encode
    out = 22'(in);
    out[16] = ^(out & 22'h007B48);
    out[17] = ^(out & 22'h0091AB);
    out[18] = ^(out & 22'h000E3D);
    out[19] = ^(out & 22'h007692);
    out[20] = ^(out & 22'h00A547);
    out[21] = ^(out & 22'h00C8F4);
  end

endmodule : prim_secded_22_16_enc
