using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;

namespace BusinessAcessLayer
{
    public class BAL
    {
        
        public string UserName { get; set; }
        public string Password { get; set; }

        DAL da = new DAL();
        public bool getUser()
        {
            if (da.IsValid(UserName,Password).Tables[0].Rows.Count >  0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
