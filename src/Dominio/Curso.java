package Dominio;

import java.util.ArrayList;

public class Curso {
	private int id;
	private int semestre;
	private Materia materia;
	private int anio;
	private Docente docente;
	private ArrayList<Alumno> alumnos;
	
	public Curso()
	{
		materia = new Materia();
		alumnos = new ArrayList<Alumno>();
	}
	
	public Curso(int id, int semestre, Materia materia, int anio, Docente docente, ArrayList<Alumno> alumnos) {
		this.id = id;
		this.semestre = semestre;
		this.materia = materia;
		this.anio = anio;
		this.docente = docente;
		this.alumnos = alumnos;
	}
	
	public Curso(int semestre, Materia materia, int anio, Docente docente) {
		this.semestre = semestre;
		this.materia = materia;
		this.anio = anio;
		this.docente = docente;
	}
	
	public Curso(int id, int semestre, Materia materia, int anio, Docente docente) {
		this.semestre = semestre;
		this.materia = materia;
		this.anio = anio;
		this.docente = docente;
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSemestre() {
		return semestre;
	}
	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}
	public Materia getMateria() {
		return materia;
	}
	public void setMateria(Materia materia) {
		this.materia = materia;
	}
	public int getAnio() {
		return anio;
	}
	public void setAnio(int anio) {
		this.anio = anio;
	}
	public Docente getDocente() {
		return docente;
	}
	public void setDocente(Docente docente) {
		this.docente = docente;
	}
	public ArrayList<Alumno> getAlumnos() {
		return alumnos;
	}
	public void setAlumnos(ArrayList<Alumno> alumnos) {
		this.alumnos = alumnos;
	}
	
}
