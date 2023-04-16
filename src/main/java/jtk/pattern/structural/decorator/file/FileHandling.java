package jtk.pattern.structural.decorator.file;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FileHandling {
    private static final Logger log = LoggerFactory.getLogger(FileHandling.class);
    public static void main(String[] args) {
        var homedir = new File(System.getProperty("user.home"));
        double bytesToGB = Math.pow(1024, 3);
        long free = (long) (homedir.getFreeSpace() / bytesToGB);
        long total = (long) (homedir.getTotalSpace()/ bytesToGB);
        long usable = (long) (homedir.getUsableSpace()/ bytesToGB);
        log.info("free {}GB, total {}GB, usable {}GB", free, total, usable);
        File[] roots = File.listRoots(); // all available Filesystem roots
        log.info("Roots {}", roots);
        /**
         * The Reader and Writer classes are intended to overlay the bytestream classes and to remove the need for
         * low-level handling of I/O streams. They have several subclasses that are often used to layer
         * on top of each other, such as:
             * FileReader
             * BufferedReader
             * StringReader
             * InputStreamReader
             * FileWriter
             * PrintWriter
             * BufferedWriter
         */

        var INPUT_PATTERN = Pattern.compile("^>(\\w+)\\s*(\\w+)?");

        try(var console = new BufferedReader(new InputStreamReader(System.in))){
            String line;
            while ((line = console.readLine()) != null){
                Matcher m = INPUT_PATTERN.matcher(line);

                boolean foundPattern = m.find();
                if (foundPattern) {
                    String metaName = m.group(1);
                    String arg = m.group(2);
                    log.info("#{} {}", metaName, arg);
                } else if (!(foundPattern)) {
                    log.info("{}", line);
                }
            }
        }catch (Exception e){

        }
    }
}
