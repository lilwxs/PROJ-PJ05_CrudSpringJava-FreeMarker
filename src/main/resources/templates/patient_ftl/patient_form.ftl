<!doctype html>
<html lang="en">
<head>
    <#include "../fragments/head.ftl">
</head>
<body>
${pageTitle}
<form action=${"/patients/save"} method="post" object=${patient}>
    <#if patient.id??>
        <input type="hidden" name="id" value="${patient.id}"/>
    </#if>
    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullname" <#if patient.fullname??>value="${patient.fullname}"</#if>
           required/><br>

    <label for="symptom">Symptom:</label>
    <input type="text" id="symptom" name="symptom" <#if patient.symptom??>value="${patient.symptom}"</#if>
           required/><br>

    <label for="medicalID">Medical ID:</label>
    <input type="text" id="medicalID" name="medicalId" <#if patient.medicalId??>value="${patient.medicalId}"</#if>
           required/><br>

    <input type="submit" value="Add Patient"/>
    <button type="button" class="btn btn-secondary m-2" onclick="cancelForm()">Cancel</button>
</form>
<script type="text/javascript">
    function cancelForm() {
        window.location = "/allPatients";
    }
</script>
</body>
</html>