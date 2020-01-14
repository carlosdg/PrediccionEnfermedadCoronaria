# Predicción de la presencia de una enfermedad coronaria usando Machine Learning

<p align="center">
    <img src="docs/images/HeartImage__GordonJohnson__Pixabay.png" alt="Imagen de un corazón y un electrocardiograma de dos latidos normales" />
</p>

- [**Enlace al informe en HTML (en GitHub Pages)**](https://carlosdg.github.io/PrediccionEnfermedadCoronaria/)
- [**Enlace al cuaderno de R**](project/notebooks/main.Rmd)

## Introducción

Según el *National Heart, Lung, and Blood Institute*, [la enfermedad coronaria es una de las principales causas de muerte en los Estados Unidos](https://www.nhlbi.nih.gov/health-topics/espanol/enfermedad-coronaria). Y esto ocurre aún pudiendo controlar muchos de los factores de riesgo para prevenir la enfermedad.

Además, según la Organización Mundial de la Salud, [las enfermedades cardiovasculares (entre la que se encuentra la enfermedad coronaria) son la principal causa de muerte en el mundo](https://www.who.int/es/news-room/fact-sheets/detail/cardiovascular-diseases-(cvds)).

Debido a la frecuencia de esta enfermedad, en este trabajo se intenta crear un modelo para predecir si un paciente padece esta enfermedad a partir de unas serie de variables medidas como la frecuencia cardíaca o el nivel de colesterol en sangre.

## Contexto 

### Sangre y corazón

La sangre es vital para el correcto funcionamiento del cuerpo. Entre sus funciones se encuentra el transporte de oxígeno y nutrientes a las células además de la retirada de las sustancias de desecho de las mismas.

La sangre es transportada por todo el cuerpo gracias a que es bombeada por el corazón. Este recibe sangre con poco oxígeno que manda a los pulmones para que se oxigene y la sangre que recibe de los pulmones la bombea al resto del cuerpo.

<p align="center">
  <img src="docs/images/Latidos.gif" alt="Flujo de la sangre a través de las cámaras del corazón" />
  <p align="center">Flujo de la sangre a través de las cavidades del corazón. Las flechas azules representan la sangre sin oxigenar que se recibe del resto del cuerpo y se manda a los pulmones. Las flechas rojas representan la sangre proveniente de los pulmones que se manda al resto del cuerpo</p>
      
  <p align="center">By josiño - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=9396374</p>
</p>

Un aporte inadecuado de sangre puede llevar a que las células no obtengan suficiente energía para realizar sus funciones, provocando su muerte en el peor caso.


### Enfermedad coronaria

El corazón también necesita oxígeno y nutrientes para continuar realizando su función, estos llegan por unas arterias conocidas como arterias coronarias. Cuando se da una enfermedad coronaria se habla de una dificultad del flujo sanguíneo en estas arterias debido a la acumulación de sustancias sobre sus paredes.

<p align="center">
  <img src="docs/images/Heart_attack-NIH.gif" alt="Muerte de células del corazón por una isquemia en las arterias coronarias">
  <p align="center">Muerte de células del corazón por una isquemia en las arterias coronarias.</p>
  
  <p align="center">By NIH: National Heart, Lung and Blood Institute - http://www.nhlbi.nih.gov/health/health-topics/topics/heartattack/, Public Domain, https://commons.wikimedia.org/w/index.php?curid=25287085</p>
</p>

En el peor caso, el efecto de privar a las células del corazón de nutrientes y oxígeno da lugar a un infarto, es decir, la muerte de parte de las células del corazón. Lo cuál, a su vez, tiene repercusión en el resto del cuerpo pues el bombeo de sangre se ve afectado al debilitarse el corazón.

## Conjunto de datos

El conjunto de datos ha sido tomado de Kaggle ([Heart Disease UCI](https://www.kaggle.com/ronitf/heart-disease-uci)), que a su vez ha sido tomado de [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Heart+Disease). Se tienen datos de alrededor de 300 pacientes de Cleveland y las variables que se recogen se describen con detalle en el informe y cuaderno.