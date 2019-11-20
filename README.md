# Predicción de la presencia de una enfermedad cardiovascular usando Machine Learning

<!-- Put image here -->

## Introducción

<!-- Las enfermedades cardiovasculares son la principal causa de muerte en el mundo según la OMS... -->

## ¿Qué es una enfermedad cardiovascular?

El corazón es el órgano encargado de bombear la sangre al resto del cuerpo. Recibe sangre con poco oxígeno que manda a los pulmones para que se oxigene y la sangre que recibe de los pulmones la bombea al resto del cuerpo. El corazón también es un músculo por lo que necesita oxígeno para continuar realizando su función, el cual llega por las arterias coronarias.

Cuando se da una enfermedad cardiovascular suele hablarse de una enfermedad de las arterias coronarias, es decir, dificultad del flujo sanguíneo en estas arterias (isquemia), normalmente debido a la acumulación de sustancias sobre sus paredes (aterosclerosis).

## Glosario de términos

- **Aterosclerosis:** acumulación de sustancias sobre las paredes de las arterias pudiendo dificultar el flujo sanguíneo. Además, la ruptura de esta placa de sustancias puede causar la formación de un coágulo de sangre (trombo) que, a su vez, puede bloquear aún más la zona afectada o dirigirse a otras partes del cuerpo y bloquear otras zonas (émbolo) (Fuentes: [American Heart Association](https://www.heart.org/en/health-topics/cholesterol/about-cholesterol/atherosclerosis), [Mayo Clinic](https://www.mayoclinic.org/es-es/diseases-conditions/arteriosclerosis-atherosclerosis/symptoms-causes/syc-20350569))

- **Isquemia:** reducción del flujo sanguíneo en un órgano (como el corazón). Esto implica una reducción del aporte de oxígeno y nutrientes, por lo que las células no pueden obtener la energía suficiente para realizar sus funciones de manera normal. (Fuentes: [American Heart Association](https://www.heart.org/en/health-topics/heart-attack/about-heart-attacks/silent-ischemia-and-ischemic-heart-disease), [Mayo Clinic](https://www.mayoclinic.org/es-es/diseases-conditions/myocardial-ischemia/symptoms-causes/syc-20375417), [Wikipedia](https://en.wikipedia.org/wiki/Ischemia))

- **Angina:** molestia en el pecho debido a una isquemia en las arterias coronarias. (Fuentes: [United Kingdom National Health Service](https://www.nhs.uk/conditions/angina/), [Video de Alberto Sanagustín](https://www.youtube.com/watch?v=3UhItS50mRI))

- **Angina estable:** angina que se da en situaciones que demanden oxígeno (por ejemplo durante el ejercicio o en situaciones de estrés) y se calma en reposo

- **Angina inestable:** angina que además de poderse dar durante un esfuerzo también puede darse estando en reposo

- **Trombo:** es un coágulo de sangre, es decir, masa de sangre en estado sólido que obstruye el paso de la sangre en un vaso sanguíneo. (Fuente: [MedlinePlus](https://medlineplus.gov/spanish/ency/article/001124.htm))

- **Émbolo:** trombo que se desprende y se dirigirse a otras partes del cuerpo. (Fuente: [MedlinePlus](https://medlineplus.gov/spanish/ency/article/001124.htm))

- **Infarto agudo de miocardio:** también conocido como ataque cardíaco, es la muerte de parte del músculo del corazón debido a una isquemia. Es decir, la muerte de parte de las células del músculo por falta de oxígeno y nutrientes. (Fuentes: [Healthline](https://www.healthline.com/health/acute-myocardial-infarction#causes), [Wikipedia](https://en.wikipedia.org/wiki/Infarction))

<!-- 

- Prueba de esfuerzo nuclear (https://www.mayoclinic.org/es-es/tests-procedures/nuclear-stress-test/about/pac-20385231) 

-->

- **Enfermedad Asintomática**: una enfermedad se considera asintomática si un paciente advierte muy pocos síntomas o ninguno. (Fuentes: [definicion.de](https://definicion.de/asintomatico/), [MayoClinic](https://www.mayoclinic.org/es-es/diseases-conditions/heart-attack/expert-answers/silent-heart-attack/faq-20057777))

## Conjunto de datos

El conjunto de datos ha sido tomado de Kaggle ([Heart Disease UCI](https://www.kaggle.com/ronitf/heart-disease-uci)), que a su vez ha sido tomado de [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Heart+Disease). Se tienen datos de alrededor de 300 pacientes de Cleveland y las variables que se recogen se describen en la siguiente sección

### Atributos de los datos

(Work in progress)

- **age**: edad del paciente en años
- **sex**: sexo del paciente
    - Valor 0: mujer
    - Valor 1: hombre
- **cp**: tipo de dolor en el pecho
    - Valor 0: [asintomático](https://www.mayoclinic.org/es-es/diseases-conditions/heart-attack/expert-answers/silent-heart-attack/faq-20057777) (no presenta síntomas o muy pocos)
    - Valor 1: atypical angina (probable)
    - Valor 2: non-anginal pain
    - Valor 3: typical angina (definite)
- **trestbps**: presión sanguínea en reposo en milímetros de mercurio (mm Hg) en el momento de ser ingresado en el hospital
- **chol**: colesterol en mg/dl
- **fbs**: Si nivel de azúcar en sangre en ayunas es mayor a 120 mg/dl o no
    - Valor 0: no
    - Valor 1: sí
- **restecg**: resting electrocardiographic results
    - Valor 0: showing probable or definite left ventricular hypertrophy by Estes' criteria
    - Valor 1: normal
    - Valor 2: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV)
- **thalach**: frecuencia cardíaca máxima alcanzada durante una prueba de esfuerzo nuclear
- **exang**: si haciendo ejercicio el paciente tuvo angina o no
    - Valor 0: no
    - Valor 1: sí
- **oldpeak**: ST depression induced by exercise relative to rest
    - Valor 0: no
    - Valor 1: yes
- **slope**: the slope of the peak exercise ST segment
    - Valor 0: downsloping
    - Valor 1: flat
    - Valor 2: upsloping
- **ca**: number of major vessels (0-3) colored by flourosopy
- **thal**: resultados del flujo sanguíneo medido con un tinte radioactivo durante una [prueba de esfuerzo nuclear](https://www.mayoclinic.org/es-es/tests-procedures/nuclear-stress-test/about/pac-20385231)
    - Valor 1: defecto fijo (no se observa flujo sanguíneo en alguna parte del corazón)
    - Valor 2: flujo sanguíneo normal
    - Valor 7: defecto reversible (se observa flujo sanguíneo pero no es normal)
- **target**: variable objetivo
    - Valor 0: padece enfermedad
    - Valor 1: no padece enfermedad

### Problemas con el conjunto de datos

<!-- Registros con ca=4, registros con valores nulos imputados -->

### Reconocimientos del conjunto de datos

Creadores:

- Hungarian Institute of Cardiology. Budapest: Andras Janosi, M.D.
- University Hospital, Zurich, Switzerland: William Steinbrunn, M.D.
- University Hospital, Basel, Switzerland: Matthias Pfisterer, M.D.
- V.A. Medical Center, Long Beach and Cleveland Clinic Foundation: Robert Detrano, M.D., Ph.D.

Donante:

- David W. Aha (aha '@' ics.uci.edu) (714) 856-8779

## Bibliografía:

- "Heart disease and heart attacks". Khan Academy. Visto por última vez el 30/10/2019. Link: [https://www.khanacademy.org/science/health-and-medicine/healthcare-misc/v/heart-disease-and-heart-attacks](https://www.khanacademy.org/science/health-and-medicine/healthcare-misc/v/heart-disease-and-heart-attacks)

- "Cellular respiration introduction". Khan Academy. Visto por última vez el 30/10/2019. Link: [https://www.khanacademy.org/science/biology/cellular-respiration-and-fermentation/intro-to-cellular-respiration/v/introduction-to-cellular-respiration](https://www.khanacademy.org/science/biology/cellular-respiration-and-fermentation/intro-to-cellular-respiration/v/introduction-to-cellular-respiration)

- "Enfermedades cardiovasculares". Organización Mundial de la Salud. Visto por última vez el 30/10/2019. Link: [https://www.who.int/es/news-room/fact-sheets/detail/cardiovascular-diseases-(cvds)](https://www.who.int/es/news-room/fact-sheets/detail/cardiovascular-diseases-(cvds))

- "Heart Disease". Mayo Clinic. Visto por última vez el 05/11/2019. Link: [https://www.mayoclinic.org/diseases-conditions/heart-disease/symptoms-causes/syc-20353118](https://www.mayoclinic.org/diseases-conditions/heart-disease/symptoms-causes/syc-20353118)

- "Coronary artery disease". Mayo Clinic. Visto por última vez el 17/11/2019. Link: [https://www.mayoclinic.org/diseases-conditions/coronary-artery-disease/symptoms-causes/syc-20350613](https://www.mayoclinic.org/diseases-conditions/coronary-artery-disease/symptoms-causes/syc-20350613)

- "Heart Attack (Myocardial Infarction)". Cleveland Clinic. Visto por última vez el 17/11/2019. Link: [https://my.clevelandclinic.org/health/diseases/16818-heart-attack-myocardial-infarction](https://my.clevelandclinic.org/health/diseases/16818-heart-attack-myocardial-infarction)

- "Coronary Artery Disease". Cleveland Clinic. Visto por última vez el 17/11/2019. Link: [https://my.clevelandclinic.org/health/diseases/16898-coronary-artery-disease](https://my.clevelandclinic.org/health/diseases/16898-coronary-artery-disease)

- Institute of Medicine (US) Committee on Social Security Cardiovascular Disability Criteria. Cardiovascular Disability: Updating the Social Security Listings. Washington (DC): National Academies Press (US); 2010. 7, Ischemic Heart Disease. Available from: https://www.ncbi.nlm.nih.gov/books/NBK209964/