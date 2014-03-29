using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.WindowsAzure.Storage.Table;

namespace SharedTypes
{
    public class GwabTableEntity : TableEntity
    {
        public string Speaker { get; set; }
    }
}
