package com.crowdar.runners;

import java.io.IOException;

import org.testng.annotations.BeforeSuite;

import com.crowdar.bdd.cukes.TestNGSecuencialRunner;
import com.crowdar.performance.utils.FileUtils;


public class SecuencialTestRunner extends TestNGSecuencialRunner {
	@BeforeSuite
	public void suiteSetup1() throws IOException {
		// Elimina el directorio de prueba si existe
		FileUtils.deleteJmeterFolder();
	}  
}
