using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.ServiceRuntime;
using Microsoft.WindowsAzure.Storage;

namespace gwabweb
{
    public partial class Blobs : System.Web.UI.Page
    {
        protected override void OnPreRender(EventArgs e)
        {
            var storageAccount = RoleEnvironment.GetConfigurationSettingValue("storageAccount");
            var containerName = RoleEnvironment.GetConfigurationSettingValue("containerName");

            var cloudStorageAccount = CloudStorageAccount.Parse(storageAccount);

            var blobClient = cloudStorageAccount.CreateCloudBlobClient();

            var container = blobClient.GetContainerReference(containerName);
            container.CreateIfNotExists();

            var blobList = container.ListBlobs();

            rptList.DataSource = blobList;
            rptList.DataBind();

            base.OnPreRender(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnPlaceholder_OnClick(object sender, EventArgs e)
        {
            var storageAccount = RoleEnvironment.GetConfigurationSettingValue("storageAccount");
            var containerName = RoleEnvironment.GetConfigurationSettingValue("containerName");

            var cloudStorageAccount = CloudStorageAccount.Parse(storageAccount);

            var blobClient = cloudStorageAccount.CreateCloudBlobClient();

            var container = blobClient.GetContainerReference(containerName);
            container.CreateIfNotExists();
            var blob = container.GetBlockBlobReference(DateTime.Now.ToString("s"));

            blob.UploadText("Hello, GWAB!");
        }
    }
}