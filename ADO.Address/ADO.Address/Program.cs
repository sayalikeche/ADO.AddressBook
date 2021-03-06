using System;

namespace ADO.Address
{
    
     public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to ADO.Net Address Book");
            Operation Address = new Operation();
            int option;
            bool flag = true;
            while (flag)
            {
                Console.WriteLine("Enter the Program number to get executed \n1.Add Data to Table \n2.Delete from Data Table\n3.Update Data  of Table\n4.View Data \n5.Exit");
                option = Convert.ToInt32(Console.ReadLine());
                switch (option)
                {
                    case 1:
                        Model data = new Model();
                        data.First_Name = "Anisha";
                        data.Last_Name = "Charde";
                        data.Address = "Mahal";
                        data.City = "Nagpur";
                        data.State = "Maharashtra";
                        data.Zip = 440025;
                        data.Phone_Number = 123456789;
                        data.Email = "keche@gmail.com";
                        data.Contact = 2;
                        var result = Address.AddData(data);
                        if (result != null)
                        {
                            Console.WriteLine("Successfully Added");
                        }
                        else
                        {
                            Console.WriteLine("Not Added");
                        }
                        break;
                    case 2:
                        Console.WriteLine("Enter id to Delete Data");
                        int num = Convert.ToInt32(Console.ReadLine());
                        Address.DeletePersonDetails(num);
                        break;
                    case 3:
                        Console.WriteLine("Enter id of person whoes data you want to update");
                        int personid = Convert.ToInt32(Console.ReadLine());
                        Console.WriteLine("Enter new name");
                        string newname = Console.ReadLine();
                        bool res = Address.UpdateAddressBookDetail(personid, newname);
                        if (res != null)
                        {
                            Console.WriteLine("Successfully updated");
                        }
                        else
                        {
                            Console.WriteLine("Not updated");
                        }
                        break;
                    case 4:
                        flag = false;
                        break;
                }
            }
        }
    }
}
