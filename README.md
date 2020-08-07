# mod1-oo-deliverable-3

Practice Deliverables

A Patient should belong to a Doctor
A Doctor can have many Patients
Patient
Patient#doctor should return the Doctor instance for this patient
Patient#change_doctors should take a doctor instance and update the patient’s doctor
Doctor
Doctor#patients should return an array of all the Patients for that doctor
Doctor#dischange_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor
Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.