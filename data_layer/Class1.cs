using System.Configuration;

namespace data_layer
{
    public partial class DataClassesDataContext
    {
        public DataClassesDataContext() : base(ConfigurationManager.ConnectionStrings["hospital_management_systemConnectionString"].ConnectionString)
        {
            OnCreated();
        }
    }
}