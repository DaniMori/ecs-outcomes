# Outcome description

- [ ] "Outcome description" existe

- [ ] El nombre de archivo cumple el formato
  "Descripcion_[nombrevariable]_[peculiaridad].docx"

- [ ] El nombre de archivo NO contiene espacios, tildes, 'ñ', ni 'Ñ'

- [ ] "Outcome description" se encuentra en la ruta correcta

- [ ] El documento está completamente en inglés

- [ ] Encabezado cumple formato
  "Edad con Salud - cohort [cohort_id] - wave [wave_id]"

- [ ] Subencabezado cumple formato "[variable(s) domain ID]"

- [ ] Tabla con datos de variables existe

- [ ] Todas las variables en "Outcome dataset" están en la tabla
  (excluyendo las de ID)

- [ ] Todas las variables en la tabla tienen etiqueta (Label)

- [ ] Las etiquetas coinciden con "Outcome dataset"

- [ ] Las etiquetas tienen sufijo "(c\<cohorte\>_w\<ola\>)"

- [ ] Todas las variables tienen formato (Format)

- [ ] Todas las variables tienen "Code"

- [ ] Las etiquetas de valores en la columna "Code" de la tabla coinciden con las
  etiquetas de valores en el dataset

- [ ] El apartado "Variable description" está relleno

- [ ] La información en "Variable description" es suficiente para
  entender la(s) variable(s) incluidas.

- [ ] El apartado "Explanation on how the variable was created"
  está relleno
  
- [ ] El apartado "Explanation on how the variable was created" explica
  con claridad el procedimiento para crear la variable

- [ ] El título del apartado "Syntax used to create the variable" incluye
  el software utilizado para aplicar la sintaxis de creación

- [ ] Si se usa Stata, la versión indicada es "Stata 13"

- [ ] El apartado "Syntax used to create the variable" incluye sintaxis

- [ ] El apartado "Syntax used to create the variable" incluye
  descriptivos de todas las variables generadas

- [ ] El resultado de ejecutar la sintaxis en el apartado
  "Syntax used to create the variable" da lugar a los descriptivos
  de las variables en este mismo apartado

- [ ] La interpretación de la sintaxis en el apartado
 "Syntax used to create the variable" coincide con lo explicado en
 el apartado "Explanation on how the variable was created"

- [ ] El apartado
  "For any further questions regarding this variable please contact:"
  está relleno

- [ ] Los datos de la persona que ha creado el "Outcome description"
  se encuentran en el apartado
  "For any further questions regarding this variable please contact:"
  (Nombre, email, teléfono, institución)

- [ ] Si el documento está basado en una versión anterior creada por
  otra persona, los datos de la persona que creó la versión
  en la cual se basa esta versión se encuentran en el apartado
  "For any further questions regarding this variable please contact:"
  (Nombre, email, teléfono, institución)

- [ ] El apartado "References" está relleno

- [ ] Todas las citas en los apartados "Variable description" y
  "Explanation on how the variable was created" están referenciadas
  en el apartado "References"

- [ ] Si el documento "Outcome description" está generado a partir de un
  Rmarkdown, se incluye al final un apartado "Session info"


# Outcome dataset

- [ ] "Outcome dataset" existe

- [ ] El nombre de archivo cumple el formato
  "Outcome_[nombrevariable]_[peculiaridad].dta"

- [ ] [nombrevariable] y [peculiaridad] coinciden con los valores en el nombre de
  archivo del "Outcome description"

- [ ] "Outcome dataset" se encuentra en la ruta correcta

- [ ] "Outcome dataset" está en formato Stata 13 (comando `dtaversion`)

- [ ] El número de casos en el dataset coincide con el número de casos en la BDD
  maestra correspondiente (para C2019_W1 3,002 casos; para C2019_wCOVID, 1854 casos)

- [ ] El número de casos válidos en el dataset coincide con el número de casos
  validos esperables en la BDD maestra correspondiente (para C2019_wCOVID, 1166 casos)

- [ ] Todas las variables en la tabla en "Outcome description" están en
  "Outcome dataset"

- [ ] Todas las variables necesarias para entender o analizar la variable final
  están en el "Outcome dataset"

- [ ] Las etiquetas de las variables coinciden con los valores en "Label"
  en la tabla en "Outcome description"
  
- [ ] Los tipos de variable coinciden con los valores en "Format" en la tabla en
  "Outcome description"

- [ ] Los valores de las variables coinciden con los valores en "Code"
  en la tabla en "Outcome description"

- [ ] Las etiquetas de valores en el dataset coinciden con las etiquetas de valores
  en la columna "Code" de la tabla en "Outcome description"

- [ ] Los valores de las variables generadas en "Outcome dataset"
  coinciden con los valores resultantes de ejecutar la sintaxis en
  "Outcome description"

- [ ] Se encuentran las variables de apoyo en el dataset: `q0007a_result`, `ID_ECS`,
  `proxy` (para c2019_w1); `ID_ECS` y `ESTADO_ENTREVISTA` (para c2019_wCOVID).

- [ ] Para las variables de C2019_W1, se encuentran las variables `subsample_pre` y
  `interview_pre`.


# Documento de creación y revisión de variables

- [ ] Columna(s) de "Variable generada" y/o "Variable actualizada" está(n)
  rellena(s)

- [ ] Fecha de generación/actualización coincide con fecha del "Outcome dataset"
