using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.ServiceRuntime;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Queue;
using Microsoft.WindowsAzure.Storage.Table;
using SharedTypes;

namespace gwabweb
{
    public partial class queueTables : System.Web.UI.Page
    {
        protected override void OnPreRender(EventArgs e)
        {
            var storageAccount = RoleEnvironment.GetConfigurationSettingValue("storageAccount");
            var tableName = RoleEnvironment.GetConfigurationSettingValue("tableName");

            var cloudStorageAccount = CloudStorageAccount.Parse(storageAccount);
            var tableClient = cloudStorageAccount.CreateCloudTableClient();

            var tableReference = tableClient.GetTableReference(tableName);
            tableReference.CreateIfNotExists();
            TableQuery<GwabTableEntity> query = new TableQuery<GwabTableEntity>().Where(
                TableQuery.GenerateFilterCondition("PartitionKey", QueryComparisons.Equal, "Speaker"));

            var data = tableReference.ExecuteQuery(query);
            rptList.DataSource = data;
            rptList.DataBind();

            base.OnPreRender(e);
        }

        protected void btnAddSpeaker_OnClickk(object sender, EventArgs e)
        {
            var storageAccount = RoleEnvironment.GetConfigurationSettingValue("storageAccount");
            var queueName = RoleEnvironment.GetConfigurationSettingValue("queueName");

            var cloudStorageAccount = CloudStorageAccount.Parse(storageAccount);
            var queueReference = cloudStorageAccount.CreateCloudQueueClient().GetQueueReference(queueName);

            queueReference.CreateIfNotExists();

            queueReference.AddMessage(new CloudQueueMessage(txtSpeaker.Text));
        }
    }
}