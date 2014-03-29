using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Threading;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.Diagnostics;
using Microsoft.WindowsAzure.ServiceRuntime;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Table;
using SharedTypes;

namespace gwabworker
{
    public class WorkerRole : RoleEntryPoint
    {
        public override void Run()
        {
            // This is a sample worker implementation. Replace with your logic.
            Trace.TraceInformation("gwabworker entry point called", "Information");

            var storageAccount = RoleEnvironment.GetConfigurationSettingValue("storageAccount");
            var queueName = RoleEnvironment.GetConfigurationSettingValue("queueName");
            var tableName = RoleEnvironment.GetConfigurationSettingValue("tableName");

            var cloudStorageAccount = CloudStorageAccount.Parse(storageAccount);
            var queueReference = cloudStorageAccount.CreateCloudQueueClient().GetQueueReference(queueName);
            var tableClient = cloudStorageAccount.CreateCloudTableClient();

            var tableReference = tableClient.GetTableReference(tableName);
            tableReference.CreateIfNotExists();
            queueReference.CreateIfNotExists();

            while (true)
            {
                Thread.Sleep(10000);
                Trace.TraceInformation("Working", "Information");

                var message = queueReference.GetMessage();
                if (message != null)
                {
                    var speakerName = message.AsString;
                    var entity = new GwabTableEntity();
                    entity.PartitionKey = "Speaker";
                    entity.RowKey = DateTime.Now.ToString("s");
                    entity.Speaker = speakerName;

                    // Create the TableOperation that inserts the customer entity.
                    TableOperation insertOperation = TableOperation.Insert(entity);

                    // Execute the insert operation.
                    tableReference.Execute(insertOperation);

                    queueReference.DeleteMessage(message);
                }

            }
        }

        public override bool OnStart()
        {
            // Set the maximum number of concurrent connections 
            ServicePointManager.DefaultConnectionLimit = 12;

            // For information on handling configuration changes
            // see the MSDN topic at http://go.microsoft.com/fwlink/?LinkId=166357.

            return base.OnStart();
        }
    }
}
