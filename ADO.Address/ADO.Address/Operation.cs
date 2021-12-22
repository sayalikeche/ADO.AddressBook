using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace ADO.Address
{

    public class Operation
    {
        private SqlConnection con;
        
        private void Connection()
        {
            string constr = "Server=(localdb)\\MSSQLLocalDB;Database=AddressBookServiceDB;Trusted_Connection=true";
            con = new SqlConnection(constr);

        }
         
        public Model AddData(Model data)
        {
            try
            {

                Connection();
                SqlCommand com = new SqlCommand("AddAddressBook", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@firstname", data.First_Name);
                com.Parameters.AddWithValue("@lastname", data.Last_Name);
                com.Parameters.AddWithValue("@address", data.Address);
                com.Parameters.AddWithValue("@city", data.City);
                com.Parameters.AddWithValue("@state", data.State);
                com.Parameters.AddWithValue("@zip", data.Zip);
                com.Parameters.AddWithValue("@phonenumber", data.Phone_Number);
                com.Parameters.AddWithValue("@email", data.Email);
                com.Parameters.AddWithValue("@Contact_id", data.Contact);
                con.Open();
                int i = com.ExecuteNonQuery();
                con.Close();
                return data;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        //To Delete Person details    
        public int DeletePersonDetails(int id)
        {
            try
            {
                Connection();
                SqlCommand com = new SqlCommand("DeleteAddressBook", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@id", id);
                con.Open();
                int i = com.ExecuteNonQuery();
                con.Close();
                if (i >= 1)
                {

                    return id;

                }
                else
                {

                    return 0;
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}
