module HW4_instr_Data(
	input wire[31:0] instruction,
	output reg[2:0] instr_type, //2 bits, values from 0 to 3
	output reg[3:0] data_instr_type, //3 bits, values from 0 to 4
	output reg[1:0] mem_instr_type, //two bits, values from 0 to 2
	output reg[1:0] jmp_instr_type //two bits, values from 0 to 2
);



	always @(*) begin
		if(!instruction[27] && !instruction[26]) begin //1 if given 32 bit instruction is Data Processing instruction
			instr_type=2'b01;
			if(!instruction[25] && !instruction[4]) begin
				data_instr_type = 3'b010; //2 if it's "Register shifted by value" type
			end

			else if(instruction[25] && !instruction[7] && instruction[4]) begin
				data_instr_type = 3'b011; //3 if it's "Register shifted by register" type
			end

			else if(!instruction[25] && !instruction[24] && !instruction[7] && instruction[6] && instruction[5] && !instruction[4]) begin
				data_instr_type = 3'b100; //4 if it's "Multiplication" type
			end

			else begin
				data_instr_type = 3'b000; //0 if not identifiable
			end
		end

		else if(!instruction[27] && instruction[26]) begin //2 if it's memory type instruction
			instr_type=2'b10;
			assign mem_instr_type = instruction[25] ? 2'b01 : //1 if given Memory instruction type is of Immediate
			instruction[25] && !instruction[4] ? 2'b10 : //2 if it's "Register shifted by value" type
			2'b00; //0 if not identifiable
		end

		else if(instruction[27] && !instruction[26]) begin //3 if it's branch instruction
			instr_type=2'b11;
			assign jmp_instr_type = instruction[25] && !instruction[24] ? 2'b01 : //1 if given Jump instruction type is of Branch only
			instruction[25] && instruction[24] ? 2'b10 : //2 if it's Branch and Link
			2'b00; //0 if not identifiable
		end

		else begin
			instr_type=2'b00; //0 if not identifiable
		end
		
	end

endmodule