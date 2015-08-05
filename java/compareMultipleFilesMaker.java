import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;


public class compareMultipleFilesMaker {
	
	public static int numberOfLines;

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		
		//Argument number 0 is the comparison type  ( "Utilities" | "BufferSize" | "ParallelStreams" )
		//File name will be created due the type of comparison 
		
		//Argument number 1 is the number of lines inside the file (necessary to added by the user)
		
		//Argument number 2  is the number of file which will added to create the fusion file
		//Argument 3 ....... N are the files needed be the user 
		
		//*** Important node all the file first column must have something in common
		// because this script will combine all the files adding them into a single file except colume 1
		System.out.println(args[1]+" "+args[2]);
		int numberOfFiles = Integer.parseInt(args[2]);
		numberOfLines = Integer.parseInt(args[1]);
		int fileCounter = 0;
		String[][] fileArray = new String[numberOfFiles][numberOfLines];
		
		//Read all the files and add their results into the arrays
		for ( int i=3; i<args.length; ++i)
		{
			BufferedReader br = new BufferedReader(new FileReader(args[i]));
			String sCurrentLine;
			int cursor = 0;

			while ((sCurrentLine = br.readLine()) != null) 
			{
				fileArray[fileCounter][cursor] = sCurrentLine;
				cursor++;
			}
			fileCounter++;
	
		}
		
		createCombinedFile(fileArray,args[0]);
		
	}
	
	public static void createCombinedFile(String[][] arrayList, String newFileName) throws FileNotFoundException{
		
		PrintWriter writer;
		
		File fileST = new File("Fusion_of_"+newFileName+".txt");
		if (fileST.exists()) fileST.delete();
		try {
			  
		      if (fileST.createNewFile()){
		        System.out.println("File is created!");
		      }else{
		        System.out.println("File already exists.");
		      }
			} catch (IOException e) {
		      e.printStackTrace();
			}
		
			
			writer = new PrintWriter(new FileOutputStream(new File("Fusion_of_"+newFileName+".txt"),true));
			boolean flag = false;

				for ( int j=0; j<numberOfLines; ++j)
				{
					String line = new String();
					for ( int i=0; i<arrayList.length; ++i)
					{
						if ( i==0 ){
							line = arrayList[i][j];
							
						}
						else
						{
							System.out.println(arrayList[i][j]);
							String[] separete = arrayList[i][j].split("\\s+");
							line = line + "		" + separete[1];
						}
					}
					writer.println(line);
				}
	
			
			
			writer.close();
	}

}
