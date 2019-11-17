# Predicción de la presencia de una enfermedad cardiovascular usando Machine Learning

<!-- Put image here -->

## Introducción

<!-- Las enfermedades cardiovasculares son la principal causa de muerte en el mundo según la OMS... -->

## ¿Qué es una enfermedad cardiovascular?

El corazón es el órgano encargado de bombear la sangre al resto del cuerpo. Recibe sangre con poco oxígeno que manda a los pulmones para que se oxigene y la sangre que recibe de los pulmones la bombea al resto del cuerpo. El corazón también es un músculo por lo que necesita oxígeno para continuar realizando su función, el cual llega por las arterias coronarias.

Cuando se da una enfermedad cardiovascular suele hablarse de enfermedad de las arterias coronarias, es decir, dificultad del flujo sanguíneo en estas arterias, normalmente debido a la acumulación de sustancias sobre sus paredes.

## Glosario de términos

- **Aterosclerosis:** acumulación de sustancias sobre las paredes de las arterias pudiendo dificultar el flujo sanguíneo. (Fuente: [Mayo Clinic](https://www.mayoclinic.org/es-es/diseases-conditions/arteriosclerosis-atherosclerosis/symptoms-causes/syc-20350569))

- **Isquemia miocárdica:** reducción del riego sanguíneo al corazón. Esto implica una reducción del aporte de oxígeno, por lo que a las células les cuesta realizar la respiración celular. Lo que implica que las células no pueden obtener la energía suficiente para realizar sus funciones de manera normal. (Fuentes: [Wikipedia](https://en.wikipedia.org/wiki/Ischemia), [Mayo Clinic](https://www.mayoclinic.org/es-es/diseases-conditions/myocardial-ischemia/symptoms-causes/syc-20375417))

- **Angina:** molestia en el pecho debido a una isquemia miocárdica (Fuentes: [United Kingdom National Health Service](https://www.nhs.uk/conditions/angina/), [Video de Alberto Sanagustín](https://www.youtube.com/watch?v=3UhItS50mRI))

- **Angina estable:** angina que se da en situaciones que demanden oxígeno (por ejemplo durante el ejercicio o en situaciones de estrés) y se calma en reposo

- **Angina inestable:** angina que además de poderse dar durante un esfuerzo también puede darse estando en reposo

<!-- 
- Infarto

- Trombosis

- Prueba de esfuerzo nuclear (https://www.mayoclinic.org/es-es/tests-procedures/nuclear-stress-test/about/pac-20385231) 

- Arritmia -->

- **Enfermedad Asintomática**: una enfermedad se considera asintomática si un paciente advierte muy pocos síntomas o ninguno. (Fuentes: [definicion.de](https://definicion.de/asintomatico/), [MayoClinic](https://www.mayoclinic.org/es-es/diseases-conditions/heart-attack/expert-answers/silent-heart-attack/faq-20057777))

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

### Problemas con el conjunto de datos

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

5. "Coronary artery disease". Mayo Clinic. Visto por última vez el 17/11/2019. Link: [https://www.mayoclinic.org/diseases-conditions/coronary-artery-disease/symptoms-causes/syc-20350613](https://www.mayoclinic.org/diseases-conditions/coronary-artery-disease/symptoms-causes/syc-20350613)

6. "Heart Attack (Myocardial Infarction)". Cleveland Clinic. Visto por última vez el 17/11/2019. Link: [https://my.clevelandclinic.org/health/diseases/16818-heart-attack-myocardial-infarction](https://my.clevelandclinic.org/health/diseases/16818-heart-attack-myocardial-infarction)

6. "Coronary Artery Disease". Cleveland Clinic. Visto por última vez el 17/11/2019. Link: [https://my.clevelandclinic.org/health/diseases/16898-coronary-artery-disease](https://my.clevelandclinic.org/health/diseases/16898-coronary-artery-disease)