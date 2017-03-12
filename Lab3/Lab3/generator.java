import java.io.*;

public class generator {
	public static void main(String [] args) {
		FileWriter out = null;
		try {
			out = new FileWriter("g07_generator.vhd");
			out.write("library ieee;\nuse ieee.std_logic_1164.all;\nuse ieee.numeric_std.all;\n\n");
			out.write("entity g07_generator is\n");
			out.write("\tport (\n");
			out.write(generatePorts());
			out.write("\t);\n");
			out.write("end g07_generator;");
			out.write("\n\n");
			out.write("architecture behavior of g07_generator is\n");
			out.write("begin\n");
			out.write(generateLogic());
			out.write("end behavior;\n");
		} catch(Exception ex) {
			System.out.println("Donald Davis, please help me");
			return;
		} finally {
			try {if(out != null) out.close(); }catch(Exception e) {}
		}
	}

	public static String generatePorts() {
		String component = "";
		for(int c = 0; c < 52; c++) {
			component += "\t\tO" + c + ": OUT STD_LOGIC_VECTOR(5 downto 0);\n";
		}
		component += "\t\tZERO: OUT STD_LOGIC_VECTOR(51 downto 0);\n";
		component += "\t\tONES: OUT STD_LOGIC_VECTOR(51 downto 0)\n";
		return component;
	}

	public static String generateLogic() {
		String logic = "";
		for(int c = 0; c < 52; c++) {
			logic += "\t\tO" + c + " <= std_logic_vector (to_unsigned(" +c + ",6));\n";
		}
		logic += "\t\tZERO <= X\"0000000000000\";\n";
		logic += "\t\tONES <= X\"FFFFFFFFFFFFF\";\n";
		return logic;
	}

	public static void generateFlippityFlop(int id) {
		String component = "D";
		component += id + ": lpm_ff ";
		component += "generic map(lpm_width => 6, lpm_avalue => 0, lpm_svalue => 1, lpm_fftype => \"DFF\", lpm_type => \"LPM_FF\",lpm_pvalue => \"UNUSED\", lpm_hint => \"UNUSED\") ";
	}
}
