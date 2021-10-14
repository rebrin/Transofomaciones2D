ArrayList<PVector> vertices;
PMatrix2D m1=new PMatrix2D(1,0,320,0,1,0);
PMatrix2D m2=new PMatrix2D(1,0,0,0,1,320);

void setup(){
size(800,600);
  strokeWeight(3);
  vertices=new ArrayList();
  vertices.add(new PVector(150,150));
  vertices.add(new PVector(250,150));
  vertices.add(new PVector(250,250));
  vertices.add(new PVector(150,250));
  //producto de matrices
  m2.apply(m1);
  for(PVector v:vertices){
    m2.mult(v,v);
  }
  
}

void draw(){
pintar();
}

void pintar(){
  beginShape();
  for(PVector v:vertices){
     vertex(v.x,v.y);
  }
  endShape(CLOSE);
}
