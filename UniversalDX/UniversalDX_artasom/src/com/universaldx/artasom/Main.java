package com.universaldx.artasom;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.REXPFactor;
import org.rosuda.REngine.REXPMismatchException;
import org.rosuda.REngine.Rserve.RConnection;
import org.rosuda.REngine.Rserve.RserveException;

public class Main {

    public static void main(String[] args) {
        try {
            RConnection c = new RConnection();
            REXP x = null;
            c.eval("source("
                   + "'/Users/artasom/UniversalDX_artasom_r/UniversalDX_artasom.R'" + ")");
            x = c.eval("labels(read.csv(file='/Users/artasom/UniversalDX_artasom_r/partialIris.csv'))");
            String labels[] = x.asStrings();
            for (String label : labels) {
            	System.out.print(label + " ");
            }
        } catch (RserveException e) {
            e.printStackTrace();
        } catch (REXPMismatchException e) {
            e.printStackTrace();
        }
    }
}
