# Predicción de la presencia de una enfermedad cardiovascular usando Machine Learning

## ¿Qué es una enfermedad cardiovascular?

El corazón es el órgano encargado de bombear la sangre al resto del cuerpo. Recibe sangre con poco oxígeno que manda a los pulmones para que se oxigene y la sangre que recibe de los pulmones la bombea al resto del cuerpo. El corazón también es un músculo por lo que necesita oxígeno para continuar realizando su función, el cual llega por las arterias coronarias.

Cuando se da una enfermedad cardiovascular suele hablarse de enfermedad de las arterias coronarias, es decir, dificultad del flujo sanguíneo debido a la acumulación de sustancias sobre las paredes de estar arterias.

## Glosario de términos

<!-- - Aterosclerosis (https://www.mayoclinic.org/es-es/diseases-conditions/arteriosclerosis-atherosclerosis/symptoms-causes/syc-20350569)
- Isquemia
- Angina
- Ataque cardíaco asintomático (https://www.mayoclinic.org/es-es/diseases-conditions/heart-attack/expert-answers/silent-heart-attack/faq-20057777)
- Infarto
- Prueba de esfuerzo nuclear (https://www.mayoclinic.org/es-es/tests-procedures/nuclear-stress-test/about/pac-20385231) -->

## Conjunto de datos

El conjunto de datos ha sido tomado de Kaggle ([Heart Disease UCI](https://www.kaggle.com/ronitf/heart-disease-uci)), que a su vez ha sido tomado de [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Heart+Disease). Se tienen datos de alrededor de 300 pacientes de Cleveland y las variables que se recogen se describen en la siguiente sección

### Atributos de los datos

(Work in progress)

1. **age**: edad del paciente en años
2. **sex**: sexo del paciente
    - Valor 0: mujer
    - Valor 1: hombre
3. **cp**: tipo de dolor en el pecho
    - Valor 0: [asintomático](https://www.mayoclinic.org/es-es/diseases-conditions/heart-attack/expert-answers/silent-heart-attack/faq-20057777) (no presenta síntomas o muy pocos)
    - Valor 1: atypical angina (probable)
    - Valor 2: non-anginal pain
    - Valor 3: typical angina (definite)
7. **trestbps**: presión sanguínea en reposo en milímetros de mercurio (mm Hg) en el momento de ser ingresado en el hospital
8. **chol**: colesterol en mg/dl
9. **fbs**: Si nivel de azúcar en sangre en ayunas es mayor a 120 mg/dl o no
    - Valor 0: no
    - Valor 1: sí
4. **restecg**: resting electrocardiographic results
    - Valor 0: showing probable or definite left ventricular hypertrophy by Estes' criteria
    - Valor 1: normal
    - Valor 2: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV)
10. **thalach**: frecuencia cardíaca máxima alcanzada durante una prueba de esfuerzo nuclear
11. **exang**: si haciendo ejercicio el paciente tuvo angina o no
    - Valor 0: no
    - Valor 1: sí
12. **oldpeak**: ST depression induced by exercise relative to rest
    - Valor 0: no
    - Valor 1: yes
5. **slope**: the slope of the peak exercise ST segment
    - Valor 0: downsloping
    - Valor 1: flat
    - Valor 2: upsloping
13. **ca**: number of major vessels (0-3) colored by flourosopy
6. **thal**: resultados del flujo sanguíneo medido con un tinte radioactivo durante una [prueba de esfuerzo nuclear](https://www.mayoclinic.org/es-es/tests-procedures/nuclear-stress-test/about/pac-20385231)
    - Valor 1: defecto fijo (no se observa flujo sanguíneo en alguna parte del corazón)
    - Valor 2: flujo sanguíneo normal
    - Valor 7: defecto reversible (se observa flujo sanguíneo pero no es normal)
14. **target**: variable objetivo
    - Valor 0: padece enfermedad
    - Valor 1: no padece enfermedad

### Problemas

<!-- Registros con ca=4, registros con valores nulos imputados -->

### Reconocimientos del conjunto de datos

Creadores:

1. Hungarian Institute of Cardiology. Budapest: Andras Janosi, M.D.
2. University Hospital, Zurich, Switzerland: William Steinbrunn, M.D.
3. University Hospital, Basel, Switzerland: Matthias Pfisterer, M.D.
4. V.A. Medical Center, Long Beach and Cleveland Clinic Foundation: Robert Detrano, M.D., Ph.D.

Donante:

- David W. Aha (aha '@' ics.uci.edu) (714) 856-8779

## Bibliografía:

1. "Heart disease and heart attacks". Khan Academy. Visto por última vez el 30/10/2019. Link: [https://www.khanacademy.org/science/health-and-medicine/healthcare-misc/v/heart-disease-and-heart-attacks](https://www.khanacademy.org/science/health-and-medicine/healthcare-misc/v/heart-disease-and-heart-attacks)

2. "Cellular respiration introduction". Khan Academy. Visto por última vez el 30/10/2019. Link: [https://www.khanacademy.org/science/biology/cellular-respiration-and-fermentation/intro-to-cellular-respiration/v/introduction-to-cellular-respiration](https://www.khanacademy.org/science/biology/cellular-respiration-and-fermentation/intro-to-cellular-respiration/v/introduction-to-cellular-respiration)

3. "Enfermedades cardiovasculares". Organización Mundial de la Salud. Visto por última vez el 30/10/2019. Link: [https://www.who.int/es/news-room/fact-sheets/detail/cardiovascular-diseases-(cvds)](https://www.who.int/es/news-room/fact-sheets/detail/cardiovascular-diseases-(cvds))

4. "Heart Disease". Mayo Clinic. Visto por última vez el 05/11/2019. Link: [https://www.mayoclinic.org/diseases-conditions/heart-disease/symptoms-causes/syc-20353118](https://www.mayoclinic.org/diseases-conditions/heart-disease/symptoms-causes/syc-20353118)

