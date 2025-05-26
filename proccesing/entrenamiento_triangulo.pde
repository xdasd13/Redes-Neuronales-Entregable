void setup() {
  // Reducimos el tamaño por ahorrar recursos
  size(64, 64);
}

void draw() {
  // 6 tipos de triángulos (100 imágenes cada uno)
  for (int i = 0; i < 6; i++) {
    background(255);
    strokeWeight(4);
    
    pushMatrix(); // Traslación de objetos
    
    // Algoritmo para coordenadas base
    float baseSize = random(12, 28);
    float x = random(baseSize, width - baseSize);
    float y = random(baseSize, height - baseSize);
    
    stroke(100, 100, 100);
    fill(255); // Sin relleno, solo contorno
    
    translate(x, y); // Va con pushMatrix
    rotate(random(-0.2, 0.2)); // Rotación aleatoria para variedad
    
    // Triángulo Equilátero (0)
    if (i == 0) {
      drawEquilateralTriangle(baseSize);
      saveFrame("data/equilateral###.png");
    }
    // Triángulo Isósceles (1)
    else if (i == 1) {
      drawIsoscelesTriangle(baseSize);
      saveFrame("data/isosceles###.png");
    }
    // Triángulo Escaleno (2)
    else if (i == 2) {
      drawScaleneTriangle(baseSize);
      saveFrame("data/scalene###.png");
    }
    // Triángulo Agudo (3)
    else if (i == 3) {
      drawAcuteTriangle(baseSize);
      saveFrame("data/acute###.png");
    }
    // Triángulo Rectángulo (4)
    else if (i == 4) {
      drawRightTriangle(baseSize);
      saveFrame("data/right###.png");
    }
    // Triángulo Obtusángulo (5)
    else if (i == 5) {
      drawObtuseTriangle(baseSize);
      saveFrame("data/obtuse###.png");
    }
    
    popMatrix();
  }
  
  if (frameCount == 100) {
    exit();
  }
}

// Función para triángulo equilátero
void drawEquilateralTriangle(float size) {
  float height = size * sqrt(3) / 2;
  triangle(0, -height/2, -size/2, height/2, size/2, height/2);
}

// Función para triángulo isósceles
void drawIsoscelesTriangle(float size) {
  float height = random(size * 0.6, size * 1.4);
  float base = random(size * 0.4, size * 0.8);
  triangle(0, -height/2, -base/2, height/2, base/2, height/2);
}

// Función para triángulo escaleno
void drawScaleneTriangle(float size) {
  // Tres lados completamente diferentes
  float x1 = random(-size/2, size/2);
  float y1 = random(-size/2, -size/4);
  float x2 = random(-size/2, 0);
  float y2 = random(size/4, size/2);
  float x3 = random(0, size/2);
  float y3 = random(size/4, size/2);
  
  triangle(x1, y1, x2, y2, x3, y3);
}

// Función para triángulo agudo (todos los ángulos < 90°)
void drawAcuteTriangle(float size) {
  // Configuración que garantiza ángulos agudos
  float angle1 = random(PI/6, PI/3); // 30° a 60°
  float angle2 = random(PI/6, PI/3); // 30° a 60°
  
  float x1 = 0;
  float y1 = -size/2;
  float x2 = cos(angle1) * size;
  float y2 = sin(angle1) * size;
  float x3 = cos(PI - angle2) * size;
  float y3 = sin(PI - angle2) * size;
  
  triangle(x1, y1, x2, y2, x3, y3);
}

// Función para triángulo rectángulo (un ángulo = 90°)
void drawRightTriangle(float size) {
  float leg1 = random(size * 0.5, size);
  float leg2 = random(size * 0.5, size);
  
  triangle(0, 0, leg1, 0, 0, leg2);
}

// Función para triángulo obtusángulo (un ángulo > 90°)
void drawObtuseTriangle(float size) {
  // Configuración que garantiza un ángulo obtuso
  float obtuseAngle = random(PI/2 + 0.2, PI - 0.2); // Entre 90° y 180°
  
  float x1 = 0;
  float y1 = -size/3;
  float x2 = cos(obtuseAngle) * size;
  float y2 = sin(obtuseAngle) * size;
  float x3 = size/2;
  float y3 = size/3;
  
  triangle(x1, y1, x2, y2, x3, y3);
}