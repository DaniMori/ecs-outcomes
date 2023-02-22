# Outcome description

- [ ] File name follows format
  "Description_[variablename].docx", or
  "Description_[variablename]_[qualifier].docx" (if there is a qualifier)

- [ ] File name does NOT contain spaces, accents, 'ñ', or 'Ñ'

- [ ] The whole document is in English

- [ ] Header follows format
  "Edad con Salud - cohort [cohort_id] - wave [wave_id]"

- [ ] Subheader follows format "[variable(s) domain ID]"

- [ ] A table with variable metadata exists

- [ ] The table is properly formatted in markdown (e.g. no variable names cut)

- [ ] All the variables in the `keep` command (chunk `descriptives` are in the
  table (except for the ID and the ancillary variables)
  
- [ ] All the variables in the metadata table end with suffix `_s\<followup\>`,
  where `\<followup\> = \<ola\> - 1`

- [ ] All the variables in the metadata table have a label (Label)

- [ ] The labels in the metadata table coincide with the ones in the syntax
  (see chunk `generate-outcomes`)

- [ ] All labels have suffix "(c\<cohorte\>_w\<ola\>)"

- [ ] All variables have a format (column "format")

- [ ] All variables have a code (column "code")

- [ ] Labels in column "Code" in the table coincide with the ones in the syntax
  (see chunk `generate-outcomes`)

- [ ] Section "Variable description" is filled in

- [ ] The information in "Variable description"
  **is enough to understand the generated variable(s)**

- [ ] Section "Explanation on how the variable was created" is filled in
  
- [ ] Section "Explanation on how the variable was created"
  **explains clearly the procedure to create the variable(s)**

- [ ] Title in section "Syntax used to create the variable" includes the
  software used to apply the generating syntax

- [ ] Section "Syntax used to create the variable" includes the syntax

- [ ] All the variables used in the syntax are referred to by their complete
  name, including suffix `_s\<followup\>` (where `\<followup\> = \<ola\> - 1`)

- [ ] Section "Syntax used to create the variable" includes descriptives of ALL
  the created variables (see chunk `descriptives`)

- [ ] **The interpretation of the syntax in section "Syntax used to create the
  variable" coincides with the explanation in section "Explanation on how the
  variable was created"**

- [ ] Section "For any further questions regarding this variable please
  contact:" is filled in

- [ ] The contact information of the person who created the document is in
  section "For any further questions regarding this variable please contact:"
  (Name, institutional email, telephone)

- [ ] If the document is based on a previous version, created by another person,
  the contact information of the previous version (in which this one is based)
  are in section "For any further questions regarding this variable please
  contact:" (Name, institutional email, telephone)

- [ ] Al final "Session info" section is included

- [ ] All the TODO's in the template are addressed and deleted

- [ ] The document knits without errors

- [ ] The "descriptives" table renders properly in the knitted document

- [ ] The "Outcome dataset" is generated when the document is knitted

# Outcome dataset

- [ ] File name follows format "Outcome_[variablename].dta", or
  "Outcome_[variablename]_[qualifier].dta", if there is a qualifier
  (see chunk `save-data`)

- [ ] [variablename] and [qualifier] coincide with the values in the file name
  of the "Outcome description" (see chunk `save-data`)

- [ ] "Outcome dataset" is created in the correct path (see chunk `save-data`)

- [ ] "Outcome dataset" is saved in format Stata 13 (see chunk `save-data`)

- [ ] The number of cases in the dataset coincides with the number of
  cases in the corresponding raw interview dataset (for c2011_w4, 963 cases)

- [ ] All the variables en the "Variable information" table in the
  "Outcome description" document are in the "Outcome dataset" (see chunk
  `save-data`)

- [ ] The variable types coincide with the values in column "Format" of table
  "Variable information" in the "Outcome description" document

- [ ] The values in the variables coincide with the ones in column "Code" of
  table "Variable information" in the "Outcome description" document

- [ ] The value labels (if any) coincide with the value labels in column "Code"
  of table "Variable information" in the "Outcome description" document

- [ ] The ancillary variables (`q0007a_result`, `ID_ECS` and `proxy`, for
  c2011_w4) are in the dataset.

# Outcome planning spreadsheet (C2011_W4_Planning_outcomes.xlsx)

- [ ] Column I (CODING REVIEW) is marked as YES
