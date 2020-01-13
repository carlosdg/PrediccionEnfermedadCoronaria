# Predicción de la presencia de una enfermedad coronaria usando Machine Learning

<p align="center">
    <img src="doc_resources/images/HeartImage__GordonJohnson__Pixabay.png" alt="Imagen de un corazón y un electrocardiograma de dos latidos normales" />
</p>


## Introducción

Según el *National Heart, Lung, and Blood Institute*, [la enfermedad coronaria es una de las principales causas de muerte en los Estados Unidos](https://www.nhlbi.nih.gov/health-topics/espanol/enfermedad-coronaria). Y esto ocurre aún pudiendo controlar muchos de los factores de riesgo para prevenir la enfermedad.

Además, según la Organización Mundial de la Salud, [las enfermedades cardiovasculares (entre la que se encuentra la enfermedad coronaria) son la principal causa de muerte en el mundo](https://www.who.int/es/news-room/fact-sheets/detail/cardiovascular-diseases-(cvds)).

Debido a la frecuencia de esta enfermedad, en este trabajo se intenta crear un modelo para predecir si un paciente padece esta enfermedad a partir de datos históricos.


## Contexto 

### Sangre y corazón

La sangre es vital para el correcto funcionamiento del cuerpo. Entre sus funciones se encuentra el transporte de oxígeno y nutrientes a las células además de la retirada de las sustancias de desecho de las mismas.

La sangre es transportada por todo el cuerpo gracias a que es bombeada por el corazón. Este recibe sangre con poco oxígeno que manda a los pulmones para que se oxigene y la sangre que recibe de los pulmones la bombea al resto del cuerpo.

<p align="center">
  <img src="doc_resources/images/Latidos.gif" alt="Flujo de la sangre a través de las cámaras del corazón" />
  <p align="center">Flujo de la sangre a través de las cavidades del corazón. Las flechas azules representan la sangre sin oxigenar que se recibe del resto del cuerpo y se manda a los pulmones. Las flechas rojas representan la sangre proveniente de los pulmones que se manda al resto del cuerpo</p>
      
  <p align="center">By josiño - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=9396374</p>
</p>

Un aporte inadecuado de sangre puede llevar a que las células no obtengan suficiente energía para realizar sus funciones, provocando su muerte en el peor caso.


### Enfermedad coronaria

El corazón también necesita oxígeno y nutrientes para continuar realizando su función, estos llegan por unas arterias conocidas como arterias coronarias. Cuando se da una enfermedad coronaria se habla de una dificultad del flujo sanguíneo en estas arterias debido a la acumulación de sustancias sobre sus paredes.

<p align="center">
  <img src="doc_resources/images/Heart_attack-NIH.gif" alt="Muerte de células del corazón por una isquemia en las arterias coronarias">
  <p align="center">Muerte de células del corazón por una isquemia en las arterias coronarias.</p>
  
  <p align="center">By NIH: National Heart, Lung and Blood Institute - http://www.nhlbi.nih.gov/health/health-topics/topics/heartattack/, Public Domain, https://commons.wikimedia.org/w/index.php?curid=25287085</p>
</p>

En el peor caso, el efecto de privar a las células del corazón de nutrientes y oxígeno da lugar a un infarto, es decir, la muerte de parte de las células del corazón. Lo cuál, a su vez, tiene repercusión en el resto del cuerpo pues el bombeo de sangre se ve afectado al debilitarse el corazón.


### Glosario de términos

- **Aterosclerosis:** acumulación de sustancias sobre las paredes de las arterias pudiendo dificultar el flujo sanguíneo. Además, la ruptura de esta placa de sustancias puede causar la formación de un coágulo de sangre (trombo) que, a su vez, puede bloquear aún más la zona afectada o dirigirse a otras partes del cuerpo y bloquear otras zonas (émbolo) (Fuentes: [American Heart Association](https://www.heart.org/en/health-topics/cholesterol/about-cholesterol/atherosclerosis), [Mayo Clinic](https://www.mayoclinic.org/es-es/diseases-conditions/arteriosclerosis-atherosclerosis/symptoms-causes/syc-20350569))

- **Isquemia:** reducción del flujo sanguíneo en un órgano (como el corazón). Esto implica una reducción del aporte de oxígeno y nutrientes, por lo que las células no pueden obtener la energía suficiente para realizar sus funciones de manera normal. (Fuentes: [American Heart Association](https://www.heart.org/en/health-topics/heart-attack/about-heart-attacks/silent-ischemia-and-ischemic-heart-disease), [Mayo Clinic](https://www.mayoclinic.org/es-es/diseases-conditions/myocardial-ischemia/symptoms-causes/syc-20375417), [Wikipedia](https://en.wikipedia.org/wiki/Ischemia))

- **Angina:** molestia en el pecho debido a una isquemia en las arterias coronarias. (Fuentes: [United Kingdom National Health Service](https://www.nhs.uk/conditions/angina/), [Video sobre angina de Alberto Sanagustín](https://www.youtube.com/watch?v=3UhItS50mRI))

- **Angina estable:** angina que se da en situaciones que demanden oxígeno (por ejemplo durante el ejercicio o en situaciones de estrés) y se calma en reposo

- **Angina inestable:** angina que además de poderse dar durante un esfuerzo también puede darse estando en reposo

- **Angina típica y atípica:** se habla de angina típica cuando se manifiesta como una molestia alrededor del pecho. Sin embargo, algunas personas pueden no notar esta molestia sino otros síntomas como náusea o dificultad respiratoria. Se habla, entonces, de una angina atípica que suele ser más común en mujeres. (Fuentes: [Harrington Hospital](https://www.harringtonhospital.org/typical-and-atypical-angina-what-to-look-for/), [Wikipedia](https://en.wikipedia.org/wiki/Angina#Diagnosis))

- **Trombo:** es un coágulo de sangre, es decir, masa de sangre en estado sólido que obstruye el paso de la sangre en un vaso sanguíneo. (Fuente: [MedlinePlus](https://medlineplus.gov/spanish/ency/article/001124.htm))

- **Émbolo:** trombo que se desprende y se dirigirse a otras partes del cuerpo. (Fuente: [MedlinePlus](https://medlineplus.gov/spanish/ency/article/001124.htm))

- **Infarto agudo de miocardio:** también conocido como ataque cardíaco, es la muerte de parte del músculo del corazón debido a una isquemia. Es decir, la muerte de parte de las células del músculo por falta de oxígeno y nutrientes. (Fuentes: [Healthline](https://www.healthline.com/health/acute-myocardial-infarction#causes), [Wikipedia](https://en.wikipedia.org/wiki/Infarction))

- **Electrocardiograma:** registro en un gráfico de las señales eléctricas que provocan los latidos del corazón. A las distintas partes del registro de un latido normal se les ha dado un nombre distintivo, los más interesantes para el proyecto son la onda T y el segmento ST porque pueden dar información acerca de la presencia de problemas como isquemia, infarto, etc. (Fuentes: [Mayo Clinic](https://www.mayoclinic.org/es-es/tests-procedures/ekg/about/pac-20384983), [Wikipedia](https://es.wikipedia.org/wiki/Electrocardiograma), [Video sobre electrocardiograma de Alberto Sanagustín](https://www.youtube.com/watch?v=A67NDj3_RrU), [Serie de videos sobre el electrocardiograma normal de Alberto Sangaustín](https://www.youtube.com/watch?v=SLe281LBBRU&list=PL3BE5DA0A5DF3BF75)).

- **Prueba de esfuerzo nuclear:** se inyecta un tinte radioactivo al paciente para poder ver el flujo de la sangre en reposo y haciendo ejercicio. Además, también se mide la actividad eléctrica del corazón (electrocardiograma). (Fuentes: [Mayo Clinic](https://www.mayoclinic.org/tests-procedures/nuclear-stress-test/about/pac-20385231), [Healthline](https://www.healthline.com/health/thallium-stress-test))

- **Enfermedad Asintomática**: una enfermedad se considera asintomática si un paciente advierte muy pocos síntomas o ninguno. (Fuentes: [definicion.de](https://definicion.de/asintomatico/), [MayoClinic](https://www.mayoclinic.org/es-es/diseases-conditions/heart-attack/expert-answers/silent-heart-attack/faq-20057777))

- **Hipertrofia del ventrículo izquierdo:** engrosamiento de las paredes de la cavidad del corazón que impulsa la sangre al resto del cuerpo. Esto puede hacer que el músculo pierda elasticidad y el corazón deje de funcionar adecuadamente. (Fuente: [Mayo Clinic](https://www.mayoclinic.org/es-es/diseases-conditions/left-ventricular-hypertrophy/symptoms-causes/syc-20374314))


## Conjunto de datos

El conjunto de datos ha sido tomado de Kaggle ([Heart Disease UCI](https://www.kaggle.com/ronitf/heart-disease-uci)), que a su vez ha sido tomado de [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Heart+Disease). Se tienen datos de alrededor de 300 pacientes de Cleveland y las variables que se recogen se describen en la siguiente sección


### Variables de los datos

- **age**: edad del paciente en años
- **sex**: sexo del paciente
    - Valor 0: mujer
    - Valor 1: hombre
- **cp**: tipo de dolor en el pecho
    - Valor 0: asintomático (no presenta síntomas o muy pocos)
    - Valor 1: angina atípica (posible dolor de angina)
    - Valor 2: sin dolor o dolor sin relación con angina
    - Valor 3: angina típica
- **trestbps**: presión sanguínea en reposo en milímetros de mercurio (mm Hg) en el momento de ser ingresado en el hospital
- **chol**: colesterol en mg/dl
- **fbs**: Si nivel de azúcar en sangre en ayunas es mayor a 120 mg/dl o no
    - Valor 0: no
    - Valor 1: sí
- **restecg:** resultado del electrocardiograma en reposo
    - Valor 0: posible hipertrofia en el ventrículo izquierdo
    - Valor 1: normal
    - Valor 2: se ven anormalidades en la onda T o segmento ST
- **thalach**: frecuencia cardíaca máxima alcanzada durante una prueba de esfuerzo nuclear
- **exang**: si haciendo ejercicio el paciente tuvo angina o no
    - Valor 0: no
    - Valor 1: sí
- **oldpeak**: relación de la depresión del segmento ST al hacer ejercicio con respecto en estado de reposo
- **slope**: pendiente del segmento ST durante la parte más exigente del ejercicio
    - Valor 0: descendente
    - Valor 1: plano
    - Valor 2: ascendente
- **thal**: resultados del flujo sanguíneo medido con el tinte radioactivo
    - Valor 0: NULL
    - Valor 1: defecto fijo (no se observa flujo sanguíneo en alguna parte del corazón)
    - Valor 2: flujo sanguíneo normal
    - Valor 3: defecto reversible (se observa flujo sanguíneo pero no es normal)
- **ca**: número de vasos sanguíneos principales coloreados por el tinte radioactivo. El número varía de 0 a 4 aunque el valor 4 representa un valor nulo. 
- **target**: variable objetivo
    - Valor 0: padece enfermedad
    - Valor 1: no padece enfermedad


### Problemas con el conjunto de datos

El conjunto de datos en Kaggle es distinto al de *UCI Machine Learning Repository* pero la descripción de los datos es la misma. Gracias al [*post* del usuario *InitPic*](https://www.kaggle.com/ronitf/heart-disease-uci/discussion/105877) la descripción de los datos anterior se hizo ajustándose a los datos que tenemos. 

Además, también existen unos registros en este conjunto de datos que en el original contenían valores nulos:

> A few more things to consider:
> 
> data #93, 139, 164, 165 and 252 have ca=4 which is incorrect. In the original Cleveland dataset they are NaNs (so they should be removed)
> 
> data #49 and 282 have thal = 0, also incorrect. They are also NaNs in the original dataset.


### Reconocimientos del conjunto de datos original

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
