<h:form id="form" >

    <p:growl id="growl" showDetail="true"/>

    <p:calendar value="#{calendarBean.date1}" mode="inline" id="inlineCal">
        <p:ajax event="dateSelect" listener="#{calendarBean.handleDateSelect}" update="growl" />
    </p:calendar>

</h:form>
