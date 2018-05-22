module WasherMachine(quarter, nickel, dime, clk, reset, BB, CB, SB, Rssd, Lssd, led, give_BB, give_CB, give_SB);
    input quarter, nickel, dime, BB, CB, SB, clk, reset;
    output [7:0] Rssd, Lssd, give_BB, give_CB, give_SB; 
    output [3:0] led;
    reg[3:0] current_state, next_state;
    parameter cent0 = 0, cent5= 1, cent10 = 2, cent15=3, cent20 =4, cent25 =5, cent30=6, cent35=7, cent40=8, cent45=9, cent50=10, cent55=11, cent60=12, cent65=13, cent70=14, cent75=15, cent80=16, cent85=17, cent90=18, cent95=19, cent100=20;

    always @(posedge clock or posedge reset)
        begin
            if(reset)
            begin
                current_state = cent0;
            end
            else
                current_state = next_state;
        end

    always @(current_state | ((quarter ^ nickel) ^ dime))
        begin
        case(current_state)
            cent0: begin
                if(nickel)  
                        next_state = cent5;
                else if(dime)
                        next_state = cent10;
                else if(quarter)
                        next_state = cent25;
                end
                
            cent5: begin
                if(nickel)  
                        next_state = cent10;
                else if(dime)
                        next_state = cent15;
                else if(quarter)
                        next_state = cent30;
                end
                
            cent10: begin
                if(nickel)  
                        next_state = cent15;
                else if(dime)
                        next_state = cent20;
                else if(quarter)
                        next_state = cent35;
                end
                
            cent15: begin
                if(nickel)  
                        next_state = cent20;
                else if(dime)
                        next_state = cent25;
                else if(quarter)
                        next_state = cent40;
                end
                
            cent20: begin
                if(nickel)  
                        next_state = cent25;
                else if(dime)
                        next_state = cent30;
                else if(quarter)
                        next_state = cent45;
                if(BB)    
                                give_BB = 1;
                end
                
            cent25: begin
                if(nickel)  
                        next_state = cent30;
                else if(dime)
                        next_state = cent35;
                else if(quarter)
                        next_state = cent50;
                if(BB)    
                                give_BB = 1;
                end
                    
            cent30: begin
                if(nickel)
                        next_state = cent35;
                else if(dime)
                        next_state = cent40;
                else if(quarter)
                        next_state = cent55;
                if(BB)    
                                give_BB = 1;
                end
                    
            cent35: begin
                if(nickel)
                        next_state = cent40;
                else if(dime)
                        next_state = cent45;
                else if(quarter)
                        next_state = cent60;
                if(BB)
                                give_BB = 1;
                end
                    
            cent40: begin
                        if(nickel)
                        next_state = cent45;
                else if(dime)
                        next_state = cent50;
                else if(quarter)
                        next_state = cent65;
                if(BB)
                                give_BB = 1;
                end

                  cent45: begin
                if(nickel)  
                        next_state = cent50;
                else if(dime)
                        next_state = cent55;
                else if(quarter)
                        next_state = cent70;
                if (BB)
                                give_BB = 1;
                end
                
            cent50: begin
                if(nickel)  
                        next_state = cent55;
                else if(dime)
                        next_state = cent60;
                else if(quarter)
                        next_state = cent75;
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;
                end
                
            cent55: begin
                if(nickel)  
                        next_state = cent60;
                else if(dime)
                        next_state = cent65;
                else if(quarter)
                        next_state = cent80;
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;                        
                end
                
            cent60: begin
                if(nickel)  
                        next_state = cent65;
                else if(dime)
                        next_state = cent70;
                else if(quarter)
                        next_state = cent85;
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;
                end
                
            cent65: begin
                if(nickel)  
                        next_state = cent70;
                else if(dime)
                        next_state = cent75;
                else if(quarter)
                        next_state = cent90;
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;
                end
                
            cent70: begin
                if(nickel)  
                        next_state = cent75;
                else if(dime)
                        next_state = cent80;
                else if(quarter)
                        next_state = cent95;
                if(BB)    
                                give_BB = 1;
                if(CB)
                                give_CB = 1;
                end
                    
            cent75: begin
                if(nickel)
                        next_state = cent80;
                else if(dime)
                        next_state = cent85;
                else if(quarter)
                        next_state = cent100;
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;
                end
                    
            cent80: begin
                if(nickel)
                        next_state = cent85;
                else if(dime)
                        next_state = cent90;
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;
                if (SB)
                                give_SB = 1;
                end

            cent85: begin
                if(nickel)
                        next_state = cent90;
                else if(dime)
                        next_state = cent95;
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;
                if (SB)
                                give_SB = 1;
                end

            cent90: begin
                if(nickel)
                        next_state = cent95;
                else if(dime)
                        next_state = cent100;
                if (BB)
                                 give_BB = 1;
                if (CB)
                                give_CB = 1;
                if (SB)
                                give_SB = 1;
                end

            cent95: begin
                if(nickel)
                        next_state = cent100;
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;
                if (SB)
                                give_SB = 1;
                end

            cent100: begin
                if (BB)
                                give_BB = 1;
                if (CB)
                                give_CB = 1;
                if (SB)
                                give_SB = 1;
                end
               
                default: next_state = current_state;
          endcase

                if(cent20)
                      begin
                        assign Lssd = 7'b1101101;
                        assign Rssd = 7'b1111110;
                      end

                if(cent25)
                      begin
                        assign Lssd = 7'b1101101;
                        assign Rssd = 7'b1011011;
                      end                      

                if(cent30)
                      begin
                        assign Lssd = 7'b1111001;
                        assign Rssd = 7'b1111110;
                      end 
        if(cent35)
                      begin
                        assign Lssd = 7'b1111001;
                        assign Rssd = 7'b1011011;
                      end                     
        if(cent40)
                      begin
                        assign Lssd = 7'b0110011;
                        assign Rssd = 7'b1111110;
                      end
        if(cent45)
                      begin
                        assign Lssd = 7'b0110011;
                        assign Rssd = 7'b1011011;
                      end
        if(cent50)
                      begin
                        assign Lssd = 7'b1011011;
                        assign Rssd = 7'b1111110;
                      end
        if(cent55)
                      begin
                        assign Lssd = 7'b1011011;
                        assign Rssd = 7'b1011011;
                      end
        if(cent60)
                      begin
                        assign Lssd = 7'b1011111;
                        assign Rssd = 7'b1111110;
                      end
        if(cent65)
                      begin
                        assign Lssd = 7'b1011111;
                        assign Rssd = 7'b1011011;
                      end
        if(cent70)
                      begin
                        assign Lssd = 7'b1110000;
                        assign Rssd = 7'b1111110;
                      end
        if(cent75)
                      begin
                        assign Lssd = 7'b1110000;
                        assign Rssd = 7'b1011011;
                      end
        if(cent80)
                      begin
                        assign Lssd = 7'b1111111;
                        assign Rssd = 7'b1111110;
                      end
        if(cent85)
                      begin
                        assign Lssd = 7'b1111111;
                        assign Rssd = 7'b1011011;
                      end
        if(cent90)
                      begin
                        assign Lssd = 7'b1110011;
                        assign Rssd = 7'b1111110;
                      end
        if(cent95)
                      begin
                        assign Lssd = 7'b1110011;
                        assign Rssd = 7'b1011011;
                      end
        if(cent100)
                      begin
                        assign Lssd = 7'b1111110;
                        assign Rssd = 7'b1111110;
                      end
endmodule
