<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="gwabcloud" generation="1" functional="0" release="0" Id="6a46668a-1b8f-43bc-9797-791884cde8de" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="gwabcloudGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="gwabweb:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/gwabcloud/gwabcloudGroup/LB:gwabweb:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="gwabweb:containerName" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabweb:containerName" />
          </maps>
        </aCS>
        <aCS name="gwabweb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabweb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="gwabweb:queueName" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabweb:queueName" />
          </maps>
        </aCS>
        <aCS name="gwabweb:storageAccount" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabweb:storageAccount" />
          </maps>
        </aCS>
        <aCS name="gwabweb:tableName" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabweb:tableName" />
          </maps>
        </aCS>
        <aCS name="gwabwebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/MapgwabwebInstances" />
          </maps>
        </aCS>
        <aCS name="gwabworker:containerName" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabworker:containerName" />
          </maps>
        </aCS>
        <aCS name="gwabworker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabworker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="gwabworker:queueName" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabworker:queueName" />
          </maps>
        </aCS>
        <aCS name="gwabworker:storageAccount" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabworker:storageAccount" />
          </maps>
        </aCS>
        <aCS name="gwabworker:tableName" defaultValue="">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/Mapgwabworker:tableName" />
          </maps>
        </aCS>
        <aCS name="gwabworkerInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/gwabcloud/gwabcloudGroup/MapgwabworkerInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:gwabweb:Endpoint1">
          <toPorts>
            <inPortMoniker name="/gwabcloud/gwabcloudGroup/gwabweb/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="Mapgwabweb:containerName" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabweb/containerName" />
          </setting>
        </map>
        <map name="Mapgwabweb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabweb/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="Mapgwabweb:queueName" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabweb/queueName" />
          </setting>
        </map>
        <map name="Mapgwabweb:storageAccount" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabweb/storageAccount" />
          </setting>
        </map>
        <map name="Mapgwabweb:tableName" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabweb/tableName" />
          </setting>
        </map>
        <map name="MapgwabwebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/gwabcloud/gwabcloudGroup/gwabwebInstances" />
          </setting>
        </map>
        <map name="Mapgwabworker:containerName" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabworker/containerName" />
          </setting>
        </map>
        <map name="Mapgwabworker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabworker/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="Mapgwabworker:queueName" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabworker/queueName" />
          </setting>
        </map>
        <map name="Mapgwabworker:storageAccount" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabworker/storageAccount" />
          </setting>
        </map>
        <map name="Mapgwabworker:tableName" kind="Identity">
          <setting>
            <aCSMoniker name="/gwabcloud/gwabcloudGroup/gwabworker/tableName" />
          </setting>
        </map>
        <map name="MapgwabworkerInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/gwabcloud/gwabcloudGroup/gwabworkerInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="gwabweb" generation="1" functional="0" release="0" software="C:\Dev\cloudservices\gwabcloud\gwabcloud\csx\Debug\roles\gwabweb" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="containerName" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="queueName" defaultValue="" />
              <aCS name="storageAccount" defaultValue="" />
              <aCS name="tableName" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;gwabweb&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;gwabweb&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;gwabworker&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/gwabcloud/gwabcloudGroup/gwabwebInstances" />
            <sCSPolicyUpdateDomainMoniker name="/gwabcloud/gwabcloudGroup/gwabwebUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/gwabcloud/gwabcloudGroup/gwabwebFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="gwabworker" generation="1" functional="0" release="0" software="C:\Dev\cloudservices\gwabcloud\gwabcloud\csx\Debug\roles\gwabworker" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="1792" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="containerName" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="queueName" defaultValue="" />
              <aCS name="storageAccount" defaultValue="" />
              <aCS name="tableName" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;gwabworker&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;gwabweb&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;gwabworker&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/gwabcloud/gwabcloudGroup/gwabworkerInstances" />
            <sCSPolicyUpdateDomainMoniker name="/gwabcloud/gwabcloudGroup/gwabworkerUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/gwabcloud/gwabcloudGroup/gwabworkerFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="gwabwebUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="gwabworkerUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="gwabwebFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="gwabworkerFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="gwabwebInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="gwabworkerInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="0f11bb05-4845-4f84-965d-b798f95dbdad" ref="Microsoft.RedDog.Contract\ServiceContract\gwabcloudContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="c5f94119-f632-4839-a6ac-5c889def3341" ref="Microsoft.RedDog.Contract\Interface\gwabweb:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/gwabcloud/gwabcloudGroup/gwabweb:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>