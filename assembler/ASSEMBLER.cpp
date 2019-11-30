#include <iostream> 
#include <string>
#include <fstream> 
using namespace std; 

// function to convert decimal to binary 
string decToBinary(string in) 
{ 
	string n = in.substr(0,1);
	string out;
	
	if(n == "0") out = "0000";
	if(n == "1") out = "0001";
	if(n == "2") out = "0010";
	if(n == "3") out = "0011";
	if(n == "4") out = "0100";
	if(n == "5") out = "0101";
	if(n == "6") out = "0110";
	if(n == "7") out = "0111";
	if(n == "8") out = "1000";
	if(n == "9") out = "1001";
	
	n = in.substr(0,2);
	if(n == "10") out = "1010";
	if(n == "11") out = "1011";
	if(n == "12") out = "1100";
	if(n == "13") out = "1101";
	if(n == "14") out = "1110";
	if(n == "15") out = "1111";	
	
	return out;
	
} 

int main(){
	
	string file_in; 
	string file_out = "prog.bin";
	string instr = "";
	string val = ""; int valD = 0;
	string val2 = ""; int val2D = 0;
	string line, line_out;
	int N = 0; int N2 = 0;
	int count = 0;
	
	cout << "Prog file: ";
	cin >> file_in; 
	cout << endl; 
	
	ifstream program;
	ofstream prog_out;
	prog_out.open(file_out);
	program.open(file_in);
	if(program.is_open()){
		while(getline(program, line)){
			
			line_out = "";
			N = line.find(' ');
			//N2 = line.find(' ');
			instr = line.substr(0,N);
			if(N != string::npos){
				val = line.substr(N+1);
				//valD = stoi(val);
				val = decToBinary(val);
			}
			cout << "val: " << val << endl; 
/*
			N = line.find(' ', N+1);
			if(N != string::npos){
				val2 = line.substr(N+1,4);
				//val2D = stoi(val2);
				val2 = decToBinary(val2);
			}
			
			//cout << "instr: " << instr << endl;
			cout << "val2: " << val2 << endl;
			*/
			if(instr == "LDA") line_out += "0001";
			else if(instr == "LDAI") line_out += "0010";
			else if(instr == "ADD") line_out += "0011";
			else if(instr == "SUB") line_out += "0100";
			else if(instr == "AND") line_out += "0101";
			else if(instr == "OR") line_out += "0110";
			else if(instr == "NOT") line_out += "0111";
			else if(instr == "INC") line_out += "1000";
			else if(instr == "DEC") line_out += "1001";
			else if(instr == "STA") line_out += "1100";
			else if(instr == "JUMP") line_out += "1101";
			else if(instr == "OUT") line_out += "1110";
			else if(instr == "NOTH") line_out += "1111";
			
			line_out += val;
			
			line_out += "\n";
			cout << line_out;
			
			prog_out << line_out;
			count ++;
			
		}
	}
	
	if(count < 16){
		for(int i = count; i < 16; i++){
			prog_out << "11111111\n";
		}
	}
	
	program.close();
	prog_out.close();
	
	
	return 0;
	
}