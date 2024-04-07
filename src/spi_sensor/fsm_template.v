
   parameter <state1> = 3'b000;
   parameter <state2> = 3'b001;
   parameter <state3> = 3'b010;
   parameter <state4> = 3'b011;
   parameter <state5> = 3'b100;
   parameter <state6> = 3'b101;
   parameter <state7> = 3'b110;
   parameter <state8> = 3'b111;

   reg [2:0] <state> = <state1>;

   always @(posedge <clock>)
      if (<reset>)
         <state> <= <state1>;
      else
         case (state)
            <state1> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state2> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state3> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state4> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state5> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state6> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state7> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state8> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            default : begin  // Fault Recovery
               <state> <= <state1>;
            end
         endcase

   assign <output1> = <logic_equation_based_on_states_and_inputs>;
   assign <output2> = <logic_equation_based_on_states_and_inputs>;
   // Add other output equations as necessary