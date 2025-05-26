# 🛠️ Clasificador de Triángulos con p5.js y ml5.js

Este proyecto permite a los usuarios **dibujar un triángulo a mano alzada en un lienzo** y clasificarlo automáticamente como uno de los siguientes tipos, gracias a un modelo entrenado previamente con **ml5.js**:

- 🔺 Equilátero  
- 🔺 Isósceles  
- 🔺 Escaleno  
- 🔺 Agudo  
- 🔺 Rectángulo  
- 🔺 Obtusángulo

---

## 🧠 Tecnologías utilizadas

- [p5.js](https://p5js.org/) – para el dibujo en el lienzo
- [ml5.js](https://ml5js.org/) – para el modelo de clasificación
- HTML5 + CSS3 – para la estructura y el estilo moderno

---

## 🚀 Cómo usarlo

1. Clona o descarga este repositorio.
2. Asegúrate de incluir en la carpeta `model/` los archivos:
   - `model.json`
   - `model.weights.bin`
   - `model_meta.json`
3. Abre `index.html` en tu navegador.
4. Dibuja un triángulo en el canvas.
5. El modelo clasificará automáticamente el tipo de triángulo y lo resaltará en la lista de ejemplos.

---

## ⚠️ Nota

Este proyecto es solo un ejemplo educativo. El modelo puede tener errores si los dibujos no se parecen a los ejemplos usados para entrenamiento.
